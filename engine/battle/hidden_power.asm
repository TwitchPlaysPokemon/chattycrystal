ChattyHiddenPowerDamage:
; Determine the top three buttons pressed during the move animation. Start and Select are ignored.
	assert LOW(wButtonTally) == $f8

; Write the types with their corresponding press counts to wButtonSortBuffer.
; Do this in a random order, so that ties are broken randomly.
.resample_1
	call BattleRandom
	and 7
	cp 6
	jr nc, .resample_1
	xor 4
	ld b, a
	ld hl, wButtonSortBuffer
	ld [hli], a
	add a, LOW(wButtonTally)
	ld e, a
	ld d, HIGH(wButtonTally)
	ld a, [de]
	ld [hli], a
.resample_2
	call BattleRandom
	and 7
	cp 5
	jr nc, .resample_2
	xor 4
	cp b
	jr nz, .no_match
	ld a, 1
.no_match
	ld c, a
	ld [hli], a
	add a, LOW(wButtonTally)
	ld e, a
	ld a, [de]
	ld [hli], a
	ld hl, wButtonSortBuffer + 8
	ld a, -2
	ld e, 4
.extra_increment
	inc a
.fill_loop
	inc a
	cp b
	jr z, .fill_loop
	cp c
	jr z, .fill_loop
	cp 2
	jr z, .extra_increment
	ld [hli], a
	dec e
	jr nz, .fill_loop
	call BattleRandom
	and 3
	add a, LOW(wButtonSortBuffer + 8)
	ld e, a
	adc HIGH(wButtonSortBuffer + 8)
	sub e
	ld d, a
	ld a, [de]
	ld b, a
	ld a, [wButtonSortBuffer + 8]
	ld [de], a
	ld a, b
	ld hl, wButtonSortBuffer + 4
	ld [hli], a
	add a, LOW(wButtonTally)
	ld c, a
	ld b, HIGH(wButtonTally)
	ld a, [bc]
	ld [hli], a
.resample_3
	call BattleRandom
	and 3
	jr z, .resample_3
	add a, LOW(wButtonSortBuffer + 8)
	ld e, a
	adc HIGH(wButtonSortBuffer + 8)
	sub e
	ld d, a
	ld a, [de]
	ld c, a
	ld a, [wButtonSortBuffer + 9]
	ld [de], a
	ld a, c
	ld [hli], a
	add a, LOW(wButtonTally)
	ld c, a
	ld a, [bc]
	ld [hli], a
	call BattleRandom
	add a, a
	ld a, [wButtonSortBuffer + 11]
	jr c, .no_load_swap
	ld e, a
	ld a, [wButtonSortBuffer + 10]
	ld d, a
	ld a, e
	ld [wButtonSortBuffer + 10], a
	ld a, d
.no_load_swap
	ld [hli], a
	add a, LOW(wButtonTally)
	ld c, a
	ld a, [bc]
	ld [hli], a
	ld a, [hli]
	add a, LOW(wButtonTally)
	ld c, a
	ld a, [bc]
	ld [hl], a

; Now wButtonSortBuffer contains six pairs of (button, count), with ties already broken at random.
; Sort that buffer by descending order of button count.
	ld a, 5
.sort_loop
	ld [wTempLoopCounter], a
	ld hl, wButtonSortBuffer + 1
	ld c, a
	add a, a
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hld]
	ld e, a
	ld d, [hl]
	push de
	ld b, c
.scan_loop
	dec hl
	ld a, [hld]
	cp e
	dec b ; affects zero, but not carry
	jr nc, .skip
	ld e, a
	ld c, b
.skip
	jr nz, .scan_loop
	; at loop exit: b = 0, c = position of lowest value, hl = wButtonSortBuffer
	pop de
	add hl, bc
	add hl, bc
	ld b, [hl]
	ld a, d
	ld [hli], a
	ld c, [hl]
	ld [hl], e
	ld d, 0
	ld a, [wTempLoopCounter]
	ld e, a
	ld hl, wButtonSortBuffer
	add hl, de
	add hl, de
	ld a, b
	ld [hli], a
	ld [hl], c
	ld a, e
	dec a
	jr nz, .sort_loop

; With the buffer sorted, handle the power first. The type can be finished later.
; Compute the total number of button presses during the animation. Cap at 60.
	ld hl, wButtonTally
	xor a
.tally
	add a, [hl]
	jr c, .cap
	inc l
	jr nz, .tally
	cp 60
	jr c, .no_cap
.cap
	ld a, 60
.no_cap

; power = (badges + 2) * presses / 4, rounded to nearest. Only Johto badges count. Minimum 20.
	ld b, 0
	ld c, a
	ld h, b
	add a, a
	ld l, a
	ld a, [wJohtoBadges]
.add_loop
	srl a
	jr nc, .no_add
	add hl, bc ; doesn't affect the zero flag
.no_add
	jr nz, .add_loop
	srl h
	rr l
	inc hl
	srl h
	rr l
	ld a, l
	ld d, a
	cp 20
	jr nc, .ok
	ld d, 20
.ok

; Compute the button press value based on the top three button presses, and find the corresponding type.
	ld hl, wButtonSortBuffer
	; b = 0 from above
	ld a, [hli]
	call .calculate_button
	inc hl
	ld a, [hli]
	call .calculate_button
	inc hl
	ld a, [hli]
	call .calculate_button
	ld hl, ChattyHiddenPowerType
.type_loop
	ld a, [hli]
	cp b
	ld a, [hli]
	jr nz, .type_loop

; All done - set the new type and power and recalculate the rest of the battle stats.
	jr HiddenPower_SetDamage

.calculate_button
	call ShiftLeftOne
	or b
	ld b, a
	ret

HiddenPowerDamage:
; Override Hidden Power's type and power based on the user's DVs.

	ld hl, wBattleMonDVs
	ldh a, [hBattleTurn]
	and a
	jr z, .got_dvs
	ld hl, wEnemyMonDVs
.got_dvs

; Power:

; Take the top bit from each stat

	; Attack
	ld a, [hl]
	swap a
	and %1000

	; Defense
	ld b, a
	ld a, [hli]
	and %1000
	srl a
	or b

	; Speed
	ld b, a
	ld a, [hl]
	swap a
	and %1000
	srl a
	srl a
	or b

	; Special
	ld b, a
	ld a, [hl]
	and %1000
	srl a
	srl a
	srl a
	or b

; Multiply by 5
	ld b, a
	add a
	add a
	add b

; Add Special & 3
	ld b, a
	ld a, [hld]
	and %0011
	add b

; Divide by 2 and add 30 + 1
	srl a
	add 30
	inc a

	ld d, a

; Type:

	; Def & 3
	ld a, [hl]
	and %0011
	ld b, a

	; + (Atk & 3) << 2
	ld a, [hl]
	and %0011 << 4
	swap a
	add a
	add a
	or b

; Skip Normal
	inc a

; Skip Bird
	cp BIRD
	jr c, HiddenPower_SetDamage
	inc a

; Skip unused types
	cp UNUSED_TYPES
	jr c, HiddenPower_SetDamage
	add SPECIAL - UNUSED_TYPES
	; fallthrough

HiddenPower_SetDamage:
; Set Hidden Power's damage for type a and power d.

; Overwrite the current move type.
	push af
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	pop af
	ld [hl], a

; Get the rest of the damage formula variables
; based on the new type, but keep base power.
	ld a, d
	push af
	farcall BattleCommand_DamageStats
	pop af
	ld d, a
	ret

INCLUDE "data/moves/chatty_hidden_power_type.asm"
