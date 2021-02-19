RocketHideoutB2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

RocketHideoutB2F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 27,  8, ROCKET_HIDEOUT_B1F, 2
	warp_event 21, 22, ROCKET_HIDEOUT_B1F, 3
	warp_event 21,  8, ROCKET_HIDEOUT_B3F, 1
	warp_event 24, 19, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 25, 19, ROCKET_HIDEOUT_ELEVATOR, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
