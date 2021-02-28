	object_const_def ; object_event constants
	const MTSILVERRUINFB1F_ABE
	const MTSILVERRUINFB1F_EVAN
	const MTSILVERRUINFB1F_KAY
	const MTSILVERRUINFB1F_AZURE
	const MTSILVERRUINFB1F_PHANCERO_STATUE
	const MTSILVERRUINFB1F_PHANCERO_ALIVE

MtSilverRuins_MapScripts:
	db 5 ; scene scripts
	scene_script .DummyScene ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_BEAT_ABE
	scene_script .DummyScene ; SCENE_BEAT_EVAN
	scene_script .DummyScene ; SCENE_BEAT_KAY
	scene_script .DummyScene ; SCENE_BEAT_AZURE

	; callbacks
	db 0
	
.DummyScene
	end

MtSilverRuinsAbe:
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, MtSilverRuinsFaceRight
	waitsfx
	appear MTSILVERRUINFB1F_ABE
	applymovement MTSILVERRUINFB1F_ABE, MtSilverRuinsAbeApprochMovement
	opentext
	writetext MtSilverRuinsDotsText
	waitbutton
	closetext
	winlosstext MtSilverRuinsDotsText, MtSilverRuinsDotsText
	loadtrainer RED, ABE2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext MtSilverRuinsDotsText
	waitbutton
	closetext
	applymovement MTSILVERRUINFB1F_ABE, MtSilverRuinsWarpOutMovement
	disappear MTSILVERRUINFB1F_ABE
	setscene SCENE_BEAT_ABE
	playmapmusic
	end
	
MtSilverRuinsEvanDown:
	moveobject MTSILVERRUINFB1F_EVAN, 17, 41
MtSilverRuinsEvanUp:
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, MtSilverRuinsFaceLeft
	waitsfx
	appear MTSILVERRUINFB1F_EVAN
	applymovement MTSILVERRUINFB1F_EVAN, MtSilverRuinsRightApprochMovement
	opentext
	writetext MtSilverRuinsDotsText
	waitbutton
	closetext
	winlosstext MtSilverRuinsDotsText, MtSilverRuinsDotsText
	loadtrainer AC_CHRIS, EVAN6
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext MtSilverRuinsDotsText
	waitbutton
	closetext
	applymovement MTSILVERRUINFB1F_EVAN, MtSilverRuinsWarpOutMovement
	disappear MTSILVERRUINFB1F_EVAN
	setscene SCENE_BEAT_EVAN
	playmapmusic
	end
	
MtSilverRuinsKayDown:
	moveobject MTSILVERRUINFB1F_KAY, 20, 30
MtSilverRuinsKayUp:
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, MtSilverRuinsFaceLeft
	waitsfx
	appear MTSILVERRUINFB1F_KAY
	applymovement MTSILVERRUINFB1F_KAY, MtSilverRuinsRightApprochMovement
	opentext
	writetext MtSilverRuinsDotsText
	waitbutton
	closetext
	winlosstext MtSilverRuinsDotsText, MtSilverRuinsDotsText
	loadtrainer RED, KAY
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext MtSilverRuinsDotsText
	waitbutton
	closetext
	applymovement MTSILVERRUINFB1F_KAY, MtSilverRuinsWarpOutMovement
	disappear MTSILVERRUINFB1F_KAY
	setscene SCENE_BEAT_KAY
	playmapmusic
	end
	
MtSilverRuinsAzureRight:
	applymovement PLAYER, MtSilverRuinsStepLeftMovement
	sjump MtSilverRuinsAzureMiddle
	
MtSilverRuinsAzureLeft:
	applymovement PLAYER, MtSilverRuinsStepRightMovement
MtSilverRuinsAzureMiddle:
	applymovement PLAYER, MtSilverRuinsFaceDown
	waitsfx
	appear MTSILVERRUINFB1F_AZURE
	applymovement MTSILVERRUINFB1F_AZURE, MtSilverRuinsUpApprochMovement
	opentext
	writetext MtSilverRuinsDotsText
	waitbutton
	closetext
	applymovement MTSILVERRUINFB1F_AZURE, MtSilverRuinsAzureMovesToArena
	applymovement PLAYER, MtSilverRuinsPlayerMovesToArena
	opentext
	writetext MtSilverRuinsDotsText
	waitbutton
	closetext
	winlosstext MtSilverRuinsDotsText, MtSilverRuinsDotsText
	loadtrainer AZURE, AZURE1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext MtSilverRuinsDotsText
	waitbutton
	closetext
	special HealParty
	playsound SFX_POTION
	waitsfx
	opentext
	writetext MtSilverRuinsDotsText
	waitbutton
	closetext
	checkcaught PHANCERO
	ifless 2, MtSilverRuinsStartCredits
	applymovement MTSILVERRUINFB1F_AZURE, MtSilverRuinsWarpOutMovement
	disappear MTSILVERRUINFB1F_AZURE
	setscene SCENE_BEAT_AZURE
	end
	
PhanceroFliesDown:
	disappear MTSILVERRUINFB1F_PHANCERO_STATUE
	appear MTSILVERRUINFB1F_PHANCERO_ALIVE
	applymovement MTSILVERRUINFB1F_PHANCERO_ALIVE, MtSilverRuinsStepDown
	sjump PhanceroContinue
	
Phancero:
	disappear MTSILVERRUINFB1F_PHANCERO_STATUE
	appear MTSILVERRUINFB1F_PHANCERO_ALIVE
	faceplayer
PhanceroContinue:
	opentext
	writetext PhanceroText
	cry PHANCERO
	pause 15
	closetext
	loadwildmon PHANCERO, 95
	startbattle
	dontrestartmapmusic
	reloadmap
	ifequal 2, PhanceroContinue
	iffalse MtSilverRuinsStartCredits
	disappear MTSILVERRUINFB1F_PHANCERO_ALIVE
	opentext
	writetext PhanceroFledText
	waitbutton
	closetext
	;fallthrough
	
MtSilverRuinsStartCredits:
	pause 30
	setscene SCENE_DEFAULT
	setmapscene SILVER_CAVE_ROOM_3, SCENE_DEFAULT
	setmapscene MT_SILVER_RUINS_B1F, SCENE_DEFAULT
	clearflag EVENT_RED_IN_MT_SILVER
	special HealParty
	refreshscreen
	credits
	end
	
PhanceroFledText:
PhanceroText:
MtSilverRuinsDotsText:
	text "<...>"
	done
	
MtSilverRuinsAbeApprochMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
MtSilverRuinsStepLeftMovement:
	step LEFT
	step_end
	
MtSilverRuinsRightApprochMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
MtSilverRuinsStepRightMovement:
	step RIGHT
	step_end
	
MtSilverRuinsUpApprochMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
MtSilverRuinsAzureMovesToArena:
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
MtSilverRuinsFaceLeft:
	turn_head LEFT
	step_end
	
MtSilverRuinsPlayerMovesToArena:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
MtSilverRuinsFaceRight:
	turn_head RIGHT
	step_end
	
MtSilverRuinsWarpOutMovement:
	teleport_from
	step_end
	
MtSilverRuinsFaceDown:
	turn_head DOWN
	step_end
	
MtSilverRuinsStepDown:
	step DOWN
	step_end

MtSilverRuins_MapEvents:
	; filler
	db 0, 0

	; warps
	db 16
	warp_def 47, 27, 2, SILVER_CAVE_ROOM_3
	warp_def 47, 28, 3, SILVER_CAVE_ROOM_3
	warp_def 43, 27, 1, MT_SILVER_RUINS_B1F
	warp_def 43, 28, 2, MT_SILVER_RUINS_B1F
	warp_def 44, 18, 3, MT_SILVER_RUINS_B1F
	warp_def 36, 16, 4, MT_SILVER_RUINS_B1F
	warp_def 32, 4, 5, MT_SILVER_RUINS_B1F
	warp_def 26, 4, 6, MT_SILVER_RUINS_B1F
	warp_def 24, 16, 7, MT_SILVER_RUINS_B1F
	warp_def 32, 20, 8, MT_SILVER_RUINS_B1F
	warp_def 26, 22, 9, MT_SILVER_RUINS_B1F
	warp_def 28, 28, 10, MT_SILVER_RUINS_B1F
	warp_def 16, 28, 11, MT_SILVER_RUINS_B1F
	warp_def 4, 4, 12, MT_SILVER_RUINS_B1F
	warp_def 1, 3, 13, MT_SILVER_RUINS_B1F
	warp_def 1, 4, 14, MT_SILVER_RUINS_B1F
	
	; coord events
	db 8
	coord_event  9, 46, SCENE_DEFAULT, MtSilverRuinsAbe
	coord_event 23, 40, SCENE_BEAT_ABE, MtSilverRuinsEvanUp
	coord_event 23, 41, SCENE_BEAT_ABE, MtSilverRuinsEvanDown
	coord_event 26, 29, SCENE_BEAT_EVAN, MtSilverRuinsKayUp
	coord_event 26, 30, SCENE_BEAT_EVAN, MtSilverRuinsKayDown
	coord_event 20,  4, SCENE_BEAT_KAY, MtSilverRuinsAzureLeft
	coord_event 21,  4, SCENE_BEAT_KAY, MtSilverRuinsAzureMiddle
	coord_event 22,  4, SCENE_BEAT_KAY, MtSilverRuinsAzureRight
	
	; bg events
	db 1
	bg_event 21,  3, BGEVENT_UP, PhanceroFliesDown

	; object events
	db 6
	object_event 17, 46, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INITIALIZED_EVENTS
	object_event 17, 40, SPRITE_EVAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INITIALIZED_EVENTS
	object_event 20, 29, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INITIALIZED_EVENTS
	object_event 21, 10, SPRITE_AZURE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INITIALIZED_EVENTS
	object_event 21, 10, SPRITE_PHANCERO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, Phancero, -1
	object_event 21, 10, SPRITE_PHANCERO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Phancero, EVENT_INITIALIZED_EVENTS
