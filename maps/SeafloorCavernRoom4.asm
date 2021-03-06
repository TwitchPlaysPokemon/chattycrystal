	object_const_def ; object_event constants

SeafloorCavernRoom4_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SeafloorCavernRoom4_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  3,  1, SEAFLOOR_CAVERN_ROOM5, 3
	warp_event 13,  1, SEAFLOOR_CAVERN_ROOM8, 1
	warp_event 10, 11, SEAFLOOR_CAVERN_ROOM5, 2
	warp_event 11, 15, SEAFLOOR_CAVERN_ROOM1, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
