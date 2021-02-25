BattleCommand_BrickBreak:
	ldh a, [hBattleTurn]
	and a
	ld hl, wEnemyScreens
	jr z, .got_screens
	ld hl, wPlayerScreens
.got_screens
	ld a, [hl]
	res SCREENS_REFLECT, [hl]
	res SCREENS_LIGHT_SCREEN, [hl]

	; Screens are removed, now we just need to figure out messaging.
	push af
	and 1 << SCREENS_REFLECT
	jr z, .reflect_done
	ld hl, BrokeReflectText
	call StdBattleTextbox
.reflect_done
	pop af
	and 1 << SCREENS_LIGHT_SCREEN
	ret z
	ld hl, BrokeLightScreenText
	jp StdBattleTextbox
