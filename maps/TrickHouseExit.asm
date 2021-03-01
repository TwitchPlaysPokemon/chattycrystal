TrickHouseExit_MapScripts:
	db 3 ; scene scripts
	scene_script TrickHouse_End ; SCENE_DEFAULT
	scene_script TrickHouse_End ; SCENE_TRICKHOUSEEXIT_LOCKED
	scene_script TrickHouse_End ; SCENE_TRICKHOUSEEXIT_GOT_REWARD

	db 0 ; callbacks

TrickHouseExit_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  1,  0, TRICK_HOUSE_HALLWAY, 1
	warp_event  7,  0, TRICK_HOUSE_PUZZLE_1, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
