	object_const_def ; object_event constants
	const ICEPATH1F_POKE_BALL1
	const ICEPATH1F_POKE_BALL2
	const ICEPATH1F_POKE_BALL3
	const ICEPATH1F_EVAN

IcePath1F_MapScripts:
	db 2 ; scene scripts
	scene_script GenericDummyScript ; SCENE_DEFAULT
	scene_script GenericDummyScript ; SCENE_FINISHED

	db 0 ; callbacks

IcePath1FTM_PSYCH_UP:
	itemball TM_PSYCH_UP

IcePathEvan:
	playmusic MUSIC_RIVAL_ENCOUNTER
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, IcePath1FPlayerTurnHead
	applymovement ICEPATH1F_EVAN, IcePath1FEvanMoveUp
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	winlosstext HostSilenceText, HostSilenceText
	loadtrainer AC_CHRIS, EVAN3
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	applymovement ICEPATH1F_EVAN, IcePath1FEvanMoveDown
	special FadeOutMusic
	playsound SFX_EXIT_BUILDING
	disappear ICEPATH1F_EVAN
	setflag EVENT_EVAN_AT_ICE_PATH
	waitsfx
	playmapmusic
	end

IcePath1FEvanMoveUp:
	step UP
	step UP
	step UP
	step_end

IcePath1FEvanMoveDown:
	step DOWN
	step DOWN
	step DOWN
	step_end

IcePath1FPlayerTurnHead:
	turn_head DOWN
	step_end

IcePath1FPPUp:
	itemball PP_UP

IcePath1FProtein:
	itemball PROTEIN

IcePath1F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4, 19, ROUTE_44, 1
	warp_event 36, 27, BLACKTHORN_CITY, 7
	warp_event 37,  5, ICE_PATH_B1F, 1
	warp_event 37, 13, ICE_PATH_B1F, 7

	db 1 ; coord events
	coord_event 36, 23, SCENE_DEFAULT, IcePathEvan

	db 0 ; bg events

	db 4 ; object events
	object_event 31,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FTM_PSYCH_UP, EVENT_GOT_TM09_PSYCH_UP
	object_event 32, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FPPUp, EVENT_ICE_PATH_1F_PP_UP
	object_event 35,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FProtein, EVENT_ICE_PATH_1F_PROTEIN
	object_event 36, 27, SPRITE_EVAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, EVENT_EVAN_AT_ICE_PATH
