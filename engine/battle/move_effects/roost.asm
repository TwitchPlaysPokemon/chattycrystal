BattleCommand_Roost:
; roost

	ld a, BATTLE_VARS_SUBSTATUS2
	call GetBattleVarAddr
	set SUBSTATUS_ROOSTING, [hl]
	jp BattleCommand_Heal
	
ChangeTypeForRoost:
; applies roost to enemy types in de and player types in bc
	ld a, [wPlayerSubStatus2]
	bit SUBSTATUS_ROOSTING, a
	jr nz, .playerDone
	ld a, b
	cp FLYING
	jr nz, .playerType1NotFly
	ld b, CURSE_T ;typeless
.playerType1NotFly
	ld a, c
	cp FLYING
	jr nz, .playerDone
	ld c, CURSE_T ;typeless
	ld a, c
	cp b
	jr nz, .playerDone
	ld b, NORMAL ;load in normal if would be typeless
.playerDone
	ld a, [wEnemySubStatus2]
	bit SUBSTATUS_ROOSTING, a
	ret nz
	ld a, d
	cp FLYING
	jr nz, .enemyType1NotFly
	ld d, CURSE_T ;typeless
.enemyType1NotFly
	ld a, e
	cp FLYING
	ret nz
	ld e, CURSE_T ;typeless
	ld a, e
	cp d
	ret nz
	ld d, NORMAL ;load in normal if would be typeless
	ret
