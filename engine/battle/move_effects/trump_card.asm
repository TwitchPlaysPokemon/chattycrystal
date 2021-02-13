BattleCommand_TrumpCard:
	; Trump Card applies the move PP of the move slot, even if called by
	; other moves. This is not a bug, but how it works in vanilla games.
	ldh a, [hBattleTurn]
	and a
	ld de, wCurMoveNum
	ld hl, wBattleMonPP
	jr z, .got_move_num
	ld de, wCurEnemyMoveNum
	ld hl, wEnemyMonPP

.got_move_num
	ld a, [de]
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hl]
	and PP_MASK
	ld b, a
	ld a, BATTLE_VARS_MOVE_POWER
	call GetBattleVarAddr
	inc b
	dec b
	ld [hl], 200 ; 0PP
	ret z
	dec b
	ld [hl], 80 ; 1PP
	ret z
	dec b
	ld [hl], 60 ; 2PP
	ret z
	dec b
	ld [hl], 50 ; 3PP
	ret z
	ld [hl], 40 ; 4 or more PP
	ret
