BattleCommand_Charge_M:
;charge

	ld a, BATTLE_VARS_SUBSTATUS2
	call GetBattleVarAddr
	set SUBSTATUS_CHARGE, [hl]
	ret
	
ApplyChargeModifier:
	push hl
	ld a, BATTLE_VARS_SUBSTATUS2
	call GetBattleVarAddr
	ld a, [hl]
	bit SUBSTATUS_CHARGE, a
	jr z, .not_charged
	ld a, [wCurType]
	cp ELECTRIC
	jr nz, .not_charged
	ld hl, wCurDamage + 1
	ld a, [hld]
	ld h, [hl]
	ld l, a
	
	sla l
	rl h
	
	ld a, h
	ld [wCurDamage], a
	ld a, l
	ld [wCurDamage + 1], a
	
	
.not_charged
	pop hl
	ret
