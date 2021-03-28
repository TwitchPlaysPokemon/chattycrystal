BattleCommand_Hex:
; Doubles damage if opponent has a non-volatile status problem.
	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVar
	and a
	ret z

	; Double power
	ld a, BATTLE_VARS_MOVE_POWER
	call GetBattleVarAddr
	sla [hl]
	ret
