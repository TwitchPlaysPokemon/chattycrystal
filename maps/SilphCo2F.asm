	object_const_def ; object_event constants


SilphCo2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilphCo2F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  0,  0, SILPHCO_ELEVATOR, 2
	warp_event  3,  0, SILPH_CO_3F, 3 
	warp_event 13,  0, SILPH_CO_1F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
