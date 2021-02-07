BattleCommand_Stored_Power:
	push bc
	ld hl, wPlayerStatLevels
	ldh a, [hBattleTurn]
	and a
	jr z, .got_stat_levels
	ld hl, wEnemyStatLevels
.got_stat_levels
	ld b, 8 ;loop 7 times
	ld c, 0
.loop
	dec b
	jr z, .done
	ld a, [hl]
	sub 6
	jr c, .loop
	add c
	ld c, a
.done
	sla a ;multiply by 10 while checking for overflow, defence is halved ala explosion to double the effective power cap
	ld c, a
	sla a
	sla a
	jr c, .capped
	add c
	jr c, .capped
	sla d ;halve the moves's base power to adjust for the def halving
	add d
	jr c, .capped
	ld d, a
.returnFromCap
	pop bc
	srl c ;halve opps def to double this moves effective cap
	jp nz,BattleCommand_DamageCalc
	inc c
	jp BattleCommand_DamageCalc
	
.capped
	ld d, $ff
	jr .returnFromCap
	
