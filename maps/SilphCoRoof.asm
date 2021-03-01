	object_const_def ; object_event constants


SilphCoRoof_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilphCoRoof_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 13,  0, SILPH_CO_11F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
