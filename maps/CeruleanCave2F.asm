	object_const_def ; object_event constants
	const CERULEANCAVE2F_POKE_BALL_1
	const CERULEANCAVE2F_POKE_BALL_2
	const CERULEANCAVE2F_POKE_BALL_3
	const CERULEANCAVE2F_POKE_BALL_4

CeruleanCave2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CeruleanCave2FRareCandy:
	itemball RARE_CANDY

CeruleanCave2FUltraBall:
	itemball ULTRA_BALL

CeruleanCave2FMaxRevive:
	itemball MAX_REVIVE

CeruleanCave2FFullRestore:
	itemball FULL_RESTORE

CeruleanCave2FHiddenPPUp:
	hiddenitem PP_UP, EVENT_CERULEAN_CAVE_2F_HIDDEN_PP_UP

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

	db 1 ; bg events
	bg_event 16, 13, BGEVENT_ITEM, CeruleanCave2FHiddenPPUp

	db 4 ; object events
	object_event  0, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2FRareCandy, EVENT_CERULEAN_CAVE_2F_RARE_CANDY
	object_event 16,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2FUltraBall, EVENT_CERULEAN_CAVE_2F_ULTRA_BALL
	object_event 19, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2FMaxRevive, EVENT_CERULEAN_CAVE_2F_MAX_REVIVE
	object_event 27,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2FFullRestore, EVENT_CERULEAN_CAVE_2F_FULL_RESTORE
