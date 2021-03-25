	object_const_def ; object_event constants
	const MTSILVERRUINFB1F_RED
	const MTSILVERRUINFB1F_XMAN
	const MTSILVERRUINFB1F_BRACKETS
	const MTSILVERRUINFB1F_XXWWNN
	const MTSILVERRUINFB1F_REDO

MtSilverRuinsB1F_MapScripts:
	db 5 ; scene scripts
	scene_script GenericDummyScript ; SCENE_DEFAULT
	scene_script GenericDummyScript ; SCENE_BEAT_RED
	scene_script GenericDummyScript ; SCENE_BEAT_XMAN
	scene_script GenericDummyScript ; SCENE_BEAT_DUAL_HOSTS
	scene_script GenericDummyScript ; SCENE_BEAT_REDO

	; callbacks
	db 0

MtSilverRuinsB1FRed:
	special FadeOutMusic
	pause 15
	earthquake 1
	playsound SFX_STRENGTH
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, MtSilverRuinsB1FFaceRight
	waitsfx
	pause 30
	appear MTSILVERRUINFB1F_RED
	applymovement MTSILVERRUINFB1F_RED, MtSilverRuinsB1FLeftApproachMovement
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	winlosstext HostSilenceText, HostSilenceText
	loadtrainer RED, RED_RED2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	applymovement MTSILVERRUINFB1F_RED, MtSilverRuinsB1FWarpOutMovement
	disappear MTSILVERRUINFB1F_RED
	setscene SCENE_BEAT_RED
	playmapmusic
	end

MtSilverRuinsB1FXman:
	special FadeOutMusic
	pause 15
	earthquake 1
	playsound SFX_STRENGTH
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, MtSilverRuinsB1FFaceRight
	waitsfx
	pause 30
	appear MTSILVERRUINFB1F_XMAN
	applymovement MTSILVERRUINFB1F_XMAN, MtSilverRuinsB1FXmanApproachMovement
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	winlosstext HostSilenceText, HostSilenceText
	loadtrainer CY_ROBORED, X_CHATTYYELLOW5
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	applymovement MTSILVERRUINFB1F_XMAN, MtSilverRuinsB1FWarpOutMovement
	disappear MTSILVERRUINFB1F_XMAN
	setscene SCENE_BEAT_XMAN
	playmapmusic
	end

MtSilverRuinsB1FDualHosts:
	special FadeOutMusic
	pause 15
	earthquake 1
	playsound SFX_STRENGTH
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, MtSilverRuinsB1FFaceLeft
	waitsfx
	pause 30
	playsound SFX_JUMP_OVER_LEDGE
	waitsfx
	pause 30
	appear MTSILVERRUINFB1F_BRACKETS
	applymovement MTSILVERRUINFB1F_BRACKETS, MtSilverRuinsB1FRightApproachMovement
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	winlosstext HostSilenceText, HostSilenceText
	loadtrainer RED, CCC_DUALRED
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	appear MTSILVERRUINFB1F_XXWWNN
	applymovement MTSILVERRUINFB1F_XXWWNN, MtSilverRuinsB1FXxwwnnApproachMovement
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	winlosstext HostSilenceText, HostSilenceText
	loadtrainer RBY_GREEN, XXWWNN
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	applymovement MTSILVERRUINFB1F_BRACKETS, MtSilverRuinsB1FWarpOutMovement
	disappear MTSILVERRUINFB1F_BRACKETS
	applymovement MTSILVERRUINFB1F_XXWWNN, MtSilverRuinsB1FWarpOutMovement
	disappear MTSILVERRUINFB1F_XXWWNN
	setscene SCENE_BEAT_DUAL_HOSTS
	playmapmusic
	end

MtSilverRuinsB1FRedo:
	special FadeOutMusic
	pause 15
	earthquake 1
	playsound SFX_STRENGTH
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, MtSilverRuinsB1FFaceDown
	waitsfx
	pause 30
	appear MTSILVERRUINFB1F_REDO
	applymovement MTSILVERRUINFB1F_REDO, MtSilverRuinsB1FRedoApproachMovement
	applymovement PLAYER, MtSilverRuinsB1FFaceLeft
	applymovement MTSILVERRUINFB1F_REDO, MtSilverRuinsB1FRedoFinishMovement
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	winlosstext HostSilenceText, HostSilenceText
	loadtrainer RED, RED_GAUNTLETRED
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	applymovement MTSILVERRUINFB1F_REDO, MtSilverRuinsB1FWarpOutMovement
	disappear MTSILVERRUINFB1F_REDO
	setscene SCENE_BEAT_REDO
	playmapmusic
	end

MtSilverRuinsB1FFaceRight:
	turn_head RIGHT
	step_end

MtSilverRuinsB1FFaceLeft:
	turn_head LEFT
	step_end

MtSilverRuinsB1FLeftApproachMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

MtSilverRuinsB1FRightApproachMovement:
	step RIGHT
	step RIGHT
MtSilverRuinsB1FRedoFinishMovement:
	step RIGHT
	step RIGHT
	step_end

MtSilverRuinsB1FXmanApproachMovement:
	step LEFT
	step LEFT
	step LEFT
	step UP
	step LEFT
	step LEFT
	step_end

MtSilverRuinsB1FRedoApproachMovement:
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step LEFT
	step UP
	step UP
	step UP
	step_end

MtSilverRuinsB1FWarpOutMovement:
	teleport_from
	step_end

MtSilverRuinsB1FXxwwnnApproachMovement:
	step LEFT
	step LEFT
MtSilverRuinsB1FFaceDown:
	turn_head DOWN
	step_end

MtSilverRuinsB1F_MapEvents:
	; filler
	db 0, 0

	; warps
	db 14
	warp_event 27, 26, MT_SILVER_RUINS, 3
	warp_event 28, 26, MT_SILVER_RUINS, 4
	warp_event 17, 29, MT_SILVER_RUINS, 5
	warp_event 19, 24, MT_SILVER_RUINS, 6
	warp_event  3, 19, MT_SILVER_RUINS, 7
	warp_event  3, 13, MT_SILVER_RUINS, 8
	warp_event 17, 11, MT_SILVER_RUINS, 9
	warp_event 21, 17, MT_SILVER_RUINS, 10
	warp_event 23, 13, MT_SILVER_RUINS, 11
	warp_event 28, 14, MT_SILVER_RUINS, 12
	warp_event 29,  3, MT_SILVER_RUINS, 13
	warp_event 11,  5, MT_SILVER_RUINS, 14
	warp_event 10,  2, MT_SILVER_RUINS, 15
	warp_event 11,  2, MT_SILVER_RUINS, 16

	; coord events
	db 4
	coord_event 19, 28, SCENE_DEFAULT, MtSilverRuinsB1FRed
	coord_event  8, 17, SCENE_BEAT_RED, MtSilverRuinsB1FXman
	coord_event 15, 12, SCENE_BEAT_XMAN, MtSilverRuinsB1FDualHosts
	coord_event 26, 2, SCENE_BEAT_DUAL_HOSTS, MtSilverRuinsB1FRedo

	; bg events
	db 0

	; object events
	db 5
	object_event 25, 28, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INITIALIZED_EVENTS
	object_event 14, 18, SPRITE_ROBORED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INITIALIZED_EVENTS
	object_event 10, 12, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INITIALIZED_EVENTS
	object_event 17, 11, SPRITE_GREEN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INITIALIZED_EVENTS
	object_event 28, 7, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INITIALIZED_EVENTS
