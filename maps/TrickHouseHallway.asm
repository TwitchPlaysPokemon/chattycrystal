TrickHouseHallway_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrickHouseHallway_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 10,  3, TRICK_HOUSE_EXIT, 1
	warp_event 11,  3, TRICK_HOUSE_EXIT, 1
	warp_event  4, 19, TRICK_HOUSE_ENTRANCE, 3
	warp_event  5, 19, TRICK_HOUSE_ENTRANCE, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
