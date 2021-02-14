BattleCommand_Brine:
; Doubles damage if opponent has half HP or less
	ldh a, [hBattleTurn]
	and a
	ld hl, wBattleMonHP
	jr z, .got_hp
	ld hl, wEnemyMonHP
.got_hp
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld c, a
	sla c
	rl b

	; Compare bc (current HP * 2) vs [hl] (max HP). If bc is more, abort.
	ld a, [hli]
	cp b
	ret c
	ld a, [hl]
	cp c
	ret c

	; Double power
	ld a, BATTLE_VARS_MOVE_POWER
	call GetBattleVarAddr
	sla [hl]
	ret
