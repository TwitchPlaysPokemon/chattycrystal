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
	ld hl, wChattyFlags
	res 0, [hl]
	ld a, [wAttackMissed]
	and a
	ret nz
	ldh a, [hBattleTurn]
	and a
	ld hl, wEnemyMonLevel
	jr nz, .no_buttons
	ld a, [wLinkMode]
	and a
	ld hl, wBattleMonLevel
	jr nz, .no_buttons
	farcall ChattyHiddenPowerDamage
	ret

.no_buttons
	; link mode or enemy mon - just set power to level + 20; the attack is ??? type (x2 on everything)
	push hl
	farcall BattleCommand_DamageStats
	pop hl
	ld a, [hl]
	add a, 20
	ld d, a
	ret
