RocketHideoutB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

RocketHideoutB1F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 21,  2, CELADON_GAME_CORNER, 3
	warp_event 23,  2, ROCKET_HIDEOUT_B2F, 1
	warp_event 21, 24, ROCKET_HIDEOUT_B2F, 2
	warp_event 24, 19, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 25, 19, ROCKET_HIDEOUT_ELEVATOR, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
