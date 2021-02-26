TrickHousePuzzle2_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrickHousePuzzle2_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2, 19, TRICK_HOUSE_ENTRANCE, 3
	warp_event  3, 19, TRICK_HOUSE_ENTRANCE, 3
	warp_event 17,  0, TRICK_HOUSE_EXIT, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
