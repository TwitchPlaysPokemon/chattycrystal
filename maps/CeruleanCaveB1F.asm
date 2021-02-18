CeruleanCaveB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CeruleanCaveB1F_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event  3,  6, CERULEAN_CAVE_1F, 8

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
