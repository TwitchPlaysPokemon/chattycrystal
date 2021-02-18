BattleCommand_SecretPower:
; Gives a dynamic effect depending on battle environment.
	ld a, [wAttackMissed]
	and a
	ret nz

	ld a, [wEffectFailed]
	and a
	ret nz

	ld a, [wBattleEnvironment]
	ld b, a
	add b
	add b
	ld hl, SecretPowerEffectCommands
	add l
	ld l, a
	jr nc, .no_carry
	inc h
.no_carry
	ld a, [hli]
	ld b, [hl]
	inc hl
	ld h, [hl]
	ld l, b
	rst FarCall
	ret

SecretPower_AttackDownHit:
	farcall BattleCommand_AttackDown
	farcall BattleCommand_StatDownMessage
	ret

SecretPowerEffectCommands:
	dba BattleCommand_ParalyzeTarget ; shouldn't happen
	dba BattleCommand_ParalyzeTarget
	dba BattleCommand_FlinchTarget
	dba BattleCommand_FlinchTarget
	dba BattleCommand_SleepTarget
	dba BattleCommand_SleepTarget
	dba SecretPower_AttackDownHit
	dba SecretPower_AttackDownHit
	dba BattleCommand_FreezeTarget
