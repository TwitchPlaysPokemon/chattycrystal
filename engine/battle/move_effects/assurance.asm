BattleCommand_Assurance:
; Doubles damage if opponent was damaged before this turn.
	ld a, BATTLE_VARS_SUBSTATUS2_OPP
	call GetBattleVar
	bit SUBSTATUS_DAMAGED_THIS_TURN, a
	ret z

	ld a, BATTLE_VARS_MOVE_POWER
	call GetBattleVarAddr
	sla [hl]
	ret
