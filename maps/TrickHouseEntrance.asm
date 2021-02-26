TrickHouseEntrance_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrickHouseEntrance_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  5,  7, VIRIDIAN_CITY, 3
	warp_event  6,  7, VIRIDIAN_CITY, 3
	warp_event  5,  0, TRICK_HOUSE_PUZZLE_1, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
