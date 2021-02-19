RocketHideoutB4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

RocketHideoutB4F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 19, 10, ROCKET_HIDEOUT_B3F, 2
	warp_event 24, 15, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 25, 15, ROCKET_HIDEOUT_ELEVATOR, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
