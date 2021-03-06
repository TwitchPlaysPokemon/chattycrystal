	object_const_def ; object_event constants

SeafloorCavernEntrance_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SeafloorCavernEntrance_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  9,  1, SEAFLOOR_CAVERN_ROOM1, 0

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
