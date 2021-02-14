BattleCommand_PainSplit:
; painsplit

	ld a, [wAttackMissed]
	and a
	jp nz, PrintDidntAffect2
	call CheckSubstituteOpp
	jp nz, PrintDidntAffect2
	call AnimateCurrentMove
	ld hl, wBattleMonMaxHP
	ld de, wEnemyMonMaxHP

	; Check whom has the most HP, because we need to flag potential damage.
	ld a, [de]
	inc de
	cp [hl]
	inc hl
	call .CheckHPEquality
	call nz, .CheckHPEqualityPre

	; At this point, HP pointers point to the second bytes.
	call .PlayerShareHP
	ld a, $1
	ld [wWhichHPBar], a ;set HP bar to player
	hlcoord 10, 9 ;set the starting coord? to the players HP bar
	predef AnimateHPBar
	ld hl, wEnemyMonHP ;load enemy mon hp into the buffer for animate HP to use
	ld a, [hli]
	ld [wBuffer4], a
	ld a, [hli]
	ld [wBuffer3], a
	ld a, [hli]
	ld [wBuffer2], a
	ld a, [hl]
	ld [wBuffer1], a
	call .EnemyShareHP ;load hp the enemy mon with have into buffer 5-6
	xor a
	ld [wWhichHPBar], a
	call ResetDamage
	hlcoord 2, 2
	predef AnimateHPBar
	farcall _UpdateBattleHUDs

	ld hl, SharedPainText
	jp StdBattleTextbox

.PlayerShareHP:
	ld a, [hld]
	ld [wBuffer1], a
	ld a, [hld]
	ld [wBuffer2], a ;place max hp in a buffer 1-2
	ld a, [hld]
	ld b, a ;place current hp in b and buffer 3-4
	ld [wBuffer3], a
	ld a, [hl]
	ld [wBuffer4], a
	dec de
	dec de ;put de on enemy current HP
	ld a, [de]
	dec de
	add b
	ld [wCurDamage + 1], a ;add lower bye of player hp to lower byte of enemy hp and put it in lower byte of damage
	ld b, [hl] ;add the upper bytes with carry
	ld a, [de]
	adc b
	srl a
	ld [wCurDamage], a
	ld a, [wCurDamage + 1]
	rr a ;place both bytes in damage divide both by 2 and reset the pointers
	ld [wCurDamage + 1], a
	inc hl
	inc hl
	inc hl
	inc de
	inc de
	inc de ;fallthrough

.EnemyShareHP:
	ld c, [hl] ;load max hp into bc, result total is in wCurDamage
	dec hl
	ld a, [wCurDamage + 1] ;subtract the max hp from the result hp
	sub c
	ld b, [hl]
	dec hl
	ld a, [wCurDamage]
	sbc b
	jr nc, .skip ;if max hp is more, use max hp, otherwise use the result hp

	ld a, [wCurDamage]
	ld b, a
	ld a, [wCurDamage + 1]
	ld c, a
.skip
	ld a, c
	ld [hld], a
	ld [wBuffer5], a ;load into buffers 5 and 6
	ld a, b
	ld [hli], a
	ld [wBuffer6], a
	ret

.CheckHPEqualityPre:
	ld a, [de] ; Enemy HP byte
	cp [hl] ; Player HP byte
	; fallthrough
.CheckHPEquality:
; Checks if the player or enemy has more HP. Unless equal, mark the one with
; more as taking damage. Returns z if HP is equal.
	ld bc, wPlayerSubStatus2
	jr c, .got_substatus
	ret z
	ld bc, wEnemySubStatus2
.got_substatus
	ld a, [bc]
	or 1 << SUBSTATUS_DAMAGED_THIS_TURN
	ld [bc], a
	xor a
	ret
