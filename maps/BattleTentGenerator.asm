BattleTentGenerator_MapScripts:
	; triggers
	db 0

	; callbacks
	db 0

BattleTentGenerator_MapEvents:
	; filler
	db 0, 0

	; warps
	db 3
	warp_def 14, 13, 3, BATTLE_TENT_RUINS ;to b tent upper ruins
	warp_def 08, 1, 1, ROCKET_HIDEOUT_B4F ;to b4 rocket maze lower stairs right
	warp_def 14, 1, 2, ROCKET_HIDEOUT_B4F ;to b4 rocket maze upper office right

	; coord events
	db 0

	; bg events
	db 0

	; object events
	db 0

