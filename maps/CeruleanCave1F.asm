	object_const_def ; object_event constants
	const CERULEANCAVE1F_POKE_BALL_1
	const CERULEANCAVE1F_POKE_BALL_2
	const CERULEANCAVE1F_POKE_BALL_3
	const CERULEANCAVE1F_POKE_BALL_4

CeruleanCave1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CeruleanCave1FRareCandy:
	itemball RARE_CANDY

CeruleanCave1FMaxElixir:
	itemball MAX_ELIXIR

CeruleanCave1FMaxRevive:
	itemball MAX_REVIVE

CeruleanCave1FUltraBall:
	itemball ULTRA_BALL

CeruleanCave1FHiddenPPUp:
	hiddenitem PP_UP, EVENT_CERULEAN_CAVE_1F_HIDDEN_PP_UP

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

	db 1 ; bg events
	bg_event 22,  7, BGEVENT_ITEM, CeruleanCave1FHiddenPPUp

	db 4 ; object events
	object_event 33, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave1FRareCandy, EVENT_CERULEAN_CAVE_1F_RARE_CANDY
	object_event 11, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave1FMaxElixir, EVENT_CERULEAN_CAVE_1F_MAX_ELIXIR
	object_event 33, 9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave1FMaxRevive, EVENT_CERULEAN_CAVE_1F_MAX_REVIVE
	object_event 22, 3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave1FUltraBall, EVENT_CERULEAN_CAVE_1F_ULTRA_BALL
