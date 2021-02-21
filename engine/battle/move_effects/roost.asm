BattleCommand_Roost:
; roost

	ld a, BATTLE_VARS_SUBSTATUS2
	call GetBattleVarAddr
	set SUBSTATUS_ROOSTING, [hl]
	farcall BattleCommand_Heal
	ret

ChangeTypeForRoost:
; applies roost to enemy types in de and player types in bc
	ld a, [wPlayerSubStatus2]
	bit SUBSTATUS_ROOSTING, a
	call nz, SetRoostBC
	push bc
	ld b, d
	ld c, e
	ld a, [wEnemySubStatus2]
	bit SUBSTATUS_ROOSTING, a
	call nz, SetRoostBC
	ld d, b
	ld e, c
	pop bc
	ret

ChangeTypeForOpponentRoost:
; Removes flying type from opponent types in bc if roosting.
	ld a, BATTLE_VARS_SUBSTATUS2_OPP
	call GetBattleVar
	bit SUBSTATUS_ROOSTING, a
	ret z
	; fallthrough
SetRoostBC:
; Removes flying type from types in bc.
	ld a, b
	cp FLYING
	jr nz, .NotFly
	ld b, CURSE_T ;typeless
.NotFly
	ld a, c
	cp FLYING
	ret nz
	ld c, CURSE_T ;typeless
	ld a, c
	cp b
	ret nz
	ld b, NORMAL ;load in normal if would be typeless
	ret
