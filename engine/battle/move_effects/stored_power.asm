BattleCommand_Stored_Power:
	ld hl, wPlayerStatLevels
	ldh a, [hBattleTurn]
	and a
	jr z, .got_stat_levels
	ld hl, wEnemyStatLevels
.got_stat_levels
	push bc

	lb bc, 7, 1 ; 7 stats to check, start at a multiplier of 1
.loop
	ld a, [hli]
	sub 7
	jr c, .negative
	add a, c
	ld c, a
.negative
	dec b
	jr nz, .loop

	; multiply by 5...
	ld a, c
	add a, a
	add a, a
	add a, c
	pop bc

	; ...and double twice to end up with 20 * counter. This might overflow, so halve defense if it does
	rept 2
		add a, a
		jr nc, .ok\@
		rra
		srl c
.ok\@
	endr
	ld d, a

	; make sure we're not left with zero defense
	ld a, c
	and a
	ret nz
	ld c, 1
	ret
