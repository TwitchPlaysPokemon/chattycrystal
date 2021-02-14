BattleCommand_FrustrationPower:
; frustrationpower
	ld d, $ff
	jr ReturnFrustrationPower

BattleCommand_HappinessPower:
; happinesspower
	ld d, 0
ReturnFrustrationPower:
	ld hl, wBattleMonHappiness
	ldh a, [hBattleTurn]
	and a
	jr z, .ok
	ld hl, wEnemyMonHappiness
	ld a, [wLinkMode]
	and a
	jr nz, .ok
	ld d, $ff * 2 / 5
	ret

.ok
	push bc
	ld a, [hl]
	xor d
	add a, a
	ldh [hDividend + 1], a
	sbc a
	and 1
	ldh [hDividend], a
	ld a, 5
	ldh [hDivisor], a
	ld b, 2
	call Divide
	ldh a, [hQuotient + 3]
	ld d, a
	pop bc
	ret
