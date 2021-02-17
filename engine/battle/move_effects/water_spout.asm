BattleCommand_WaterSpout:
; BP = 150 * CurHP/MaxHP
	push de
	push bc
	ldh a, [hBattleTurn]
	and a
	ld de, wBattleMonHP
	ld hl, wBattleMonMaxHP
	jr z, .got_hp
	ld de, wEnemyMonHP
	ld hl, wEnemyMonMaxHP

.got_hp
	xor a
	ldh [hMultiplicand], a
	ld a, [de]
	inc de
	ldh [hMultiplicand + 1], a
	ld a, [de]
	ldh [hMultiplicand + 2], a

	ld a, BATTLE_VARS_MOVE_POWER
	call GetBattleVar
	ldh [hMultiplier], a
	call Multiply

	ld a, [hli]
	ld e, a
	ld h, [hl]
	ld l, 0
	ldh a, [hProduct + 1]
	ld d, a
	ldh a, [hProduct + 2]
	ld b, a
	ldh a, [hProduct + 3]
	ld c, a

	; compute dbc / eh - starting with an implicit << 8 on the divisor becoming ehl
	xor a
	ldh [hMathBuffer], a ; result
	ld a, 8
.division_loop
	ldh [hMathBuffer + 1], a ; bit count
	srl e
	rr h
	rr l
	ld a, d
	cp e
	jr nz, .compared
	ld a, b
	cp h
	jr nz, .compared
	ld a, c
	cp l
.compared
	ccf
	jr nc, .no_subtraction
	ld a, c
	sub l
	ld c, a
	ld a, b
	sbc h
	ld b, a
	ld a, d
	sbc e
	ld d, a
	scf
.no_subtraction
	ldh a, [hMathBuffer]
	rla
	ldh [hMathBuffer], a
	ldh a, [hMathBuffer + 1]
	dec a
	jr nz, .division_loop

	pop bc
	pop de
	ldh a, [hMathBuffer]
	ld d, a
	ret
