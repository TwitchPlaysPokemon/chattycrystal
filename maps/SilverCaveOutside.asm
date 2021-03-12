SilverCaveOutside_MapScripts:
	; trigger count
	db 0

	; callback count
	db 0

SilverCaveOutside_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 23, 19, SILVER_CAVE_POKECENTER_1F, 1
	warp_event 18, 11, SILVER_CAVE_ROOM_1, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
