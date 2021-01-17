BattleCommand_HiddenPower:
; hiddenpower

	ld a, [wAttackMissed]
	and a
	ret nz
	farcall HiddenPowerDamage ;d is power, 
	ret

BattleCommand_ChattyHP:
; chattyhp
	ld a, [wAttackMissed]
	and a
	ret nz
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
if TESTMODE
	ld a, DRAGON
	ld [hl], a
	farcall BattleCommand_DamageStats 
	ld a, $ff
else
	ld a, [wChattyHPType]
	ld [hl], a
	farcall BattleCommand_DamageStats 
	ld a, [wChattyHPPower]
endc
	ld d, a
	ret
