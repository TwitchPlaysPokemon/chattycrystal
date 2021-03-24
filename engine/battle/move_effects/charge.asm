BattleCommand_Chargem:
;chargem

	ld a, BATTLE_VARS_SUBSTATUS2
	call GetBattleVarAddr
	set SUBSTATUS_CHARGE, [hl]
	set SUBSTATUS_CHARGE_THIS_TURN, [hl]
	call AnimateCurrentMove
	ld hl, IsChargedText
	jp StdBattleTextbox

ApplyChargeModifier:
	ld a, BATTLE_VARS_SUBSTATUS2
	call GetBattleVarAddr
	ld a, [hl]
	bit SUBSTATUS_CHARGE, a
	ret z
	ld a, [wCurType]
	cp ELECTRIC
	ret nz
	ld hl, wCurDamage + 1
	ld a, [hld]
	ld h, [hl]
	ld l, a
	add hl, hl
	ld a, h
	ld [wCurDamage], a
	ld a, l
	ld [wCurDamage + 1], a
	ret
