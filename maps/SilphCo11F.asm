	object_const_def ; object_event constants


SilphCo11F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilphCo11F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  0,  1, SILPH_CO_ELEVATOR, 2
	warp_event  3,  1, SILPH_CO_ROOF, 1
	warp_event 13,  1, SILPH_CO_10F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
