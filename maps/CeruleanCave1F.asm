CeruleanCave1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CeruleanCave1F_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 29, 17, CERULEAN_CITY, 7
	warp_event 31,  1, CERULEAN_CAVE_2F, 1
	warp_event 27,  7, CERULEAN_CAVE_2F, 2
	warp_event 22,  9, CERULEAN_CAVE_2F, 3
	warp_event 11,  1, CERULEAN_CAVE_2F, 4
	warp_event  5,  3, CERULEAN_CAVE_2F, 5
	warp_event  7, 11, CERULEAN_CAVE_2F, 6
	warp_event  4,  6, CERULEAN_CAVE_B1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
