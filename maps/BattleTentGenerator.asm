BattleTentGenerator_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

BattleTentGenerator_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 13, 14, BATTLE_TENT_RUINS, 3
	warp_event  1,  8, ROCKET_HIDEOUT_B4F, 1
	warp_event  1, 14, ROCKET_HIDEOUT_B4F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
