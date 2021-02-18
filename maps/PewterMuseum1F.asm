PewterMuseum1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PewterMuseum1F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 10,  7, PEWTER_CITY, 6
	warp_event 11,  7, PEWTER_CITY, 6
	warp_event 16,  7, PEWTER_CITY, 7
	warp_event 17,  7, PEWTER_CITY, 7
	warp_event  7,  7, PEWTER_MUSEUM_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
