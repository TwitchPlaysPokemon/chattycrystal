	object_const_def ; object_event constants

SeafoamIslands1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SeafoamIslands1FHiddenEscapeRope:
	hiddenitem ESCAPE_ROPE, EVENT_SEAFOAM_ISLANDS_1F_HIDDEN_ESCAPE_ROPE

SeafoamIslands1F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 19,  7, ROUTE_20, 1
	warp_event 19,  5, SEAFOAM_GYM, 1
	warp_event 16,  2, SEAFOAM_ISLANDS_B1F, 1
	warp_event  5,  5, ROUTE_20, 2
	warp_event  5,  3, SEAFOAM_ISLANDS_B1F, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event 16,  4, BGEVENT_ITEM, SeafoamIslands1FHiddenEscapeRope

	db 0 ; object events
