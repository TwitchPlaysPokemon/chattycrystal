CeruleanCave2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CeruleanCave2F_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event 29,  1, CERULEAN_CAVE_1F, 2
	warp_event 22,  6, CERULEAN_CAVE_1F, 3
	warp_event 19,  7, CERULEAN_CAVE_1F, 4
	warp_event  9,  1, CERULEAN_CAVE_1F, 5
	warp_event  1,  3, CERULEAN_CAVE_1F, 6
	warp_event  3, 11, CERULEAN_CAVE_1F, 7

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
