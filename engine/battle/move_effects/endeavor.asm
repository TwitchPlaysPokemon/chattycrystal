BattleCommand_Endeavor:
; endeavor

	ld a, [wAttackMissed]
	and a
	jp nz, .ButItFailed
	call CheckSubstituteOpp
	jp nz, .ButItFailed
	
	ld hl, wEnemyMonHP + 1
	ld de, wBattleMonHP + 1
	bccord 2, 2
	ld a, [hBattleTurn]
	and a
	ld a, 1
	jr z, .player_used
	xor a
	ld hl, wBattleMonHP + 1
	ld de, wEnemyMonHP + 1 
	bccord 10, 9
.player_used ;hp to copy in de, hp to modify in hl, coord of hp bar in bc
	ld [wWhichHPBar], a
	push bc
	;check if targts current hp is lower than the users. if it is, fail. Also fill wCurHPAnimNewHP to prepare HP animation
	ld c, [hl]
	dec hl
	ld b, [hl]
	ld a, [de]
	ld [wCurHPAnimNewHP + 1], a
	dec de
	sub c
	ld a, [de]
	ld [wCurHPAnimNewHP], a
	sbc b
	jp nc, .ButItFailed
	call AnimateCurrentMove
	; otherwise copy HP, but first load in old HP
	inc de
	ld a, [hli]
	ld [wCurHPAnimOldHP], a
	ld a, [hl]
	ld [wCurHPAnimOldHP + 1], a
	;actually set HP
	ld a, [de] 
	ld [hld], a
	dec d
	ld a, [de]
	ld [hli], a
	;just load in max HP, as we have no better time to do it
	inc hl
	ld a, [hli]
	ld [wCurHPAnimMaxHP + 1], a
	ld a, [hl]
	ld [wCurHPAnimMaxHP], a
	;now update HP bars, popping the coord over hl
	pop hl
	call AnimateHPBar
	farcall _UpdateBattleHUDs
	ret
	
.ButItFailed:
	jp PrintDidntAffect2
