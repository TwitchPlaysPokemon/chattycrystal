BattleCommand_Revenge:
	ld a, BATTLE_VARS_LAST_COUNTER_MOVE_OPP ;no counter move? no bonus
	call GetBattleVar
	and a
	ret z
	call CheckOpponentWentFirst ;opp hasn't moved? no bonus
	ret z
	ld hl, wCurDamage ;no damage taken? no bonus
	ld a, [hli]
	or [hl]
	ret z
	;otherwise? BONUS
	sla d
	ret
