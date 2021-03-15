BattleCommand_HiddenPower:
; hiddenpower
	ld a, [wAttackMissed]
	and a
	ret nz
	farcall HiddenPowerDamage
	ret

BattleCommand_ChattyHP:
; chattyhp
	ld a, [wAttackMissed]
	and a
	ret nz
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	ld a, [wChattyHPType]
	ld [hl], a
	farcall BattleCommand_DamageStats
	ld a, [wChattyHPPower]
	ld d, a
	ret

BattleCommand_NonChattyHP:
; nonchattyhp
	ld a, [wAttackMissed]
	and a
	ret nz
	ld a, [wLinkMode]
	and a
	jr nz, BattleCommand_HiddenPower
	farcall ChattyHiddenPowerDamage
	ret
