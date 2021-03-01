	object_const_def ; object_event constants
	const MTSILVERRUINFB1F_RED
	const MTSILVERRUINFB1F_XMAN
	const MTSILVERRUINFB1F_BRACKETS
	const MTSILVERRUINFB1F_XXWWNN
	const MTSILVERRUINFB1F_REDO

MtSilverRuinsB1F_MapScripts:
	db 5 ; scene scripts
	scene_script .DummyScene ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_BEAT_RED
	scene_script .DummyScene ; SCENE_BEAT_XMAN
	scene_script .DummyScene ; SCENE_BEAT_DUAL_HOSTS
	scene_script .DummyScene ; SCENE_BEAT_REDO

	; callbacks
	db 0
	
.DummyScene
	end

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
	applymovement MTSILVERRUINFB1F_RED, MtSilverRuinsB1FLeftApprochMovement
	opentext
	writetext MtSilverRuinsB1FDotsText
	waitbutton
	closetext
	winlosstext MtSilverRuinsB1FDotsText, MtSilverRuinsB1FDotsText
	loadtrainer RED, RED_RED2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext MtSilverRuinsB1FDotsText
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
	applymovement MTSILVERRUINFB1F_XMAN, MtSilverRuinsB1FXmanApprochMovement
	opentext
	writetext MtSilverRuinsB1FDotsText
	waitbutton
	closetext
	winlosstext MtSilverRuinsB1FDotsText, MtSilverRuinsB1FDotsText
	loadtrainer CY_ROBORED, X_CHATTYYELLOW5
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext MtSilverRuinsB1FDotsText
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
	applymovement MTSILVERRUINFB1F_BRACKETS, MtSilverRuinsB1FRightApprochMovement
	opentext
	writetext MtSilverRuinsB1FDotsText
	waitbutton
	closetext
	winlosstext MtSilverRuinsB1FDotsText, MtSilverRuinsB1FDotsText
	loadtrainer RED, CCC_DUALRED
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext MtSilverRuinsB1FDotsText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	appear MTSILVERRUINFB1F_XXWWNN
	applymovement MTSILVERRUINFB1F_XXWWNN, MtSilverRuinsB1FXxwwnnApprochMovement
	opentext
	writetext MtSilverRuinsB1FDotsText
	waitbutton
	closetext
	winlosstext MtSilverRuinsB1FDotsText, MtSilverRuinsB1FDotsText
	loadtrainer RBY_GREEN, XXWWNN
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext MtSilverRuinsB1FDotsText
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
	applymovement MTSILVERRUINFB1F_REDO, MtSilverRuinsB1FRedoApprochMovement
	applymovement PLAYER, MtSilverRuinsB1FFaceLeft
	applymovement MTSILVERRUINFB1F_REDO, MtSilverRuinsB1FRedoFinishMovement
	opentext
	writetext MtSilverRuinsB1FDotsText
	waitbutton
	closetext
	winlosstext MtSilverRuinsB1FDotsText, MtSilverRuinsB1FDotsText
	loadtrainer RED, RED_GAUNTLETRED
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext MtSilverRuinsB1FDotsText
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
	
MtSilverRuinsB1FLeftApprochMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
MtSilverRuinsB1FRightApprochMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
MtSilverRuinsB1FXmanApprochMovement:
	step LEFT
	step LEFT
	step LEFT
	step UP
	step LEFT
	step LEFT
	step_end
	
MtSilverRuinsB1FRedoApprochMovement:
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
	
MtSilverRuinsB1FRedoFinishMovement:
	step RIGHT
	step RIGHT
	step_end
	
MtSilverRuinsB1FWarpOutMovement:
	teleport_from
	step_end
	
MtSilverRuinsB1FXxwwnnApprochMovement:
	step LEFT
	step LEFT
MtSilverRuinsB1FFaceDown:
	turn_head DOWN
	step_end


MtSilverRuinsB1FDotsText:
	text "<...>"
	done

MtSilverRuinsB1F_MapEvents:
	; filler
	db 0, 0

	; warps
	db 14
	warp_def 26, 27, 3, MT_SILVER_RUINS
	warp_def 26, 28, 4, MT_SILVER_RUINS
	warp_def 29, 17, 5, MT_SILVER_RUINS
	warp_def 24, 19, 6, MT_SILVER_RUINS
	warp_def 19, 3, 7, MT_SILVER_RUINS
	warp_def 13, 3, 8, MT_SILVER_RUINS
	warp_def 11, 17, 9, MT_SILVER_RUINS
	warp_def 17, 21, 10, MT_SILVER_RUINS
	warp_def 13, 23, 11, MT_SILVER_RUINS
	warp_def 14, 28, 12, MT_SILVER_RUINS
	warp_def 3, 29, 13, MT_SILVER_RUINS
	warp_def 5, 11, 14, MT_SILVER_RUINS
	warp_def 2, 10, 15, MT_SILVER_RUINS
	warp_def 2, 11, 16, MT_SILVER_RUINS

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
