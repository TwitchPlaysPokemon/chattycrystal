	object_const_def ; object_event constants
	const CERULEANCAVEB1F_MEWTWO
	const CERULEANCAVEB1F_POKE_BALL_1
	const CERULEANCAVEB1F_POKE_BALL_2
	const CERULEANCAVEB1F_POKE_BALL_3
	const CERULEANCAVEB1F_POKE_BALL_4

CeruleanCaveB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CeruleanCaveB1FMewtwo:
	faceplayer
	opentext
	writetext .Text
	cry MEWTWO
	pause 15
	closetext
	setevent EVENT_CERULEAN_CAVE_B1F_MEWTWO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MEWTWO, 80
	startbattle
	disappear CERULEANCAVEB1F_MEWTWO
	reloadmapafterbattle
	end

.Text:
	text "Mew!"
	done

CeruleanCaveB1FBerserkGene:
	itemball BERSERK_GENE

CeruleanCaveB1FKingsRock:
	itemball KINGS_ROCK

CeruleanCaveB1FMaxRevive:
	itemball MAX_REVIVE

CeruleanCaveB1FMaxElixir:
	itemball MAX_ELIXIR

CeruleanCaveB1FHiddenPPUp:
	hiddenitem PP_UP, EVENT_CERULEAN_CAVE_B1F_HIDDEN_PP_UP

CeruleanCaveB1F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  3,  6, CERULEAN_CAVE_1F, 8

	db 0 ; coord events

	db 1 ; bg events
	bg_event  8, 14, BGEVENT_ITEM, CeruleanCaveB1FHiddenPPUp

	db 5 ; object events
	object_event 27, 13, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanCaveB1FMewtwo, EVENT_CERULEAN_CAVE_B1F_MEWTWO
	object_event 26,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FBerserkGene, EVENT_CERULEAN_CAVE_B1F_BERSERK_GENE
	object_event  2, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FKingsRock, EVENT_CERULEAN_CAVE_B1F_KINGS_ROCK
	object_event  3, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FMaxRevive, EVENT_CERULEAN_CAVE_B1F_MAX_REVIVE
	object_event 15,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FMaxElixir, EVENT_CERULEAN_CAVE_B1F_MAX_ELIXIR
