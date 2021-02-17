BattleCommand_WaterSpout:
; BP = 150 * CurHP/MaxHP
	ldh a, [hBattleTurn]
	and a
	ld de, wBattleMonHP
	ld hl, wBattleMonMaxHP
	jr z, .got_hp
	ld de, wEnemyMonHP
	ld hl, wEnemyMonMaxHP

.got_hp
	xor a
	ldh [hMultiplicand], a
	ld a, [de]
	inc de
	ldh [hMultiplicand + 1], a
	ld a, [de]
	ldh [hMultiplicand + 2], a

	ld a, BATTLE_VARS_MOVE_POWER
	call GetBattleVar
	ldh [hMultiplier], a
	call Multiply

	; divide by max HP, then store in move power
	ret
