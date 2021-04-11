	object_const_def ; object_event constants
	const MTSILVERRUINSB1F_ABE
	const MTSILVERRUINSB1F_EVAN
	const MTSILVERRUINSB1F_KAY
	const MTSILVERRUINSB1F_AZURE
	const MTSILVERRUINSB1F_PHANCERO_STATUE
	const MTSILVERRUINSB1F_PHANCERO_ALIVE

MtSilverRuins_MapScripts:
	db 5 ; scene scripts
	scene_script GenericDummyScript ; SCENE_DEFAULT
	scene_script GenericDummyScript ; SCENE_BEAT_ABE
	scene_script GenericDummyScript ; SCENE_BEAT_EVAN
	scene_script GenericDummyScript ; SCENE_BEAT_KAY
	scene_script GenericDummyScript ; SCENE_BEAT_AZURE

	; callbacks
	db 0

MtSilverRuinsAbe:
	special FadeOutMusic
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, MtSilverRuinsFaceRight
	appear MTSILVERRUINSB1F_ABE
	applymovement MTSILVERRUINSB1F_ABE, MtSilverRuinsAbeApproachMovement
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	winlosstext HostSilenceText, HostSilenceText
	loadtrainer RED, AIIIAAB2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	applymovement MTSILVERRUINSB1F_ABE, MtSilverRuinsWarpOutMovement
	disappear MTSILVERRUINSB1F_ABE
	setscene SCENE_BEAT_ABE
	playmapmusic
	end

MtSilverRuinsEvanDown:
	moveobject MTSILVERRUINSB1F_EVAN, 18, 41
MtSilverRuinsEvanUp:
	special FadeOutMusic
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, MtSilverRuinsFaceLeft
	appear MTSILVERRUINSB1F_EVAN
	applymovement MTSILVERRUINSB1F_EVAN, MtSilverRuinsRightApproachMovement
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	winlosstext HostSilenceText, HostSilenceText
	loadtrainer AC_CHRIS, EVAN6
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	applymovement MTSILVERRUINSB1F_EVAN, MtSilverRuinsWarpOutMovement
	disappear MTSILVERRUINSB1F_EVAN
	setscene SCENE_BEAT_EVAN
	playmapmusic
	end

MtSilverRuinsKayDown:
	moveobject MTSILVERRUINSB1F_KAY, 21, 30
MtSilverRuinsKayUp:
	special FadeOutMusic
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, MtSilverRuinsFaceLeft
	appear MTSILVERRUINSB1F_KAY
	applymovement MTSILVERRUINSB1F_KAY, MtSilverRuinsRightApproachMovement
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	winlosstext HostSilenceText, HostSilenceText
	loadtrainer RED, KAY
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	applymovement MTSILVERRUINSB1F_KAY, MtSilverRuinsWarpOutMovement
	disappear MTSILVERRUINSB1F_KAY
	setscene SCENE_BEAT_KAY
	playmapmusic
	end

MtSilverRuinsAzureRight:
	applymovement PLAYER, MtSilverRuinsStepLeftMovement
	sjump MtSilverRuinsAzureMiddle

MtSilverRuinsAzureLeft:
	applymovement PLAYER, MtSilverRuinsStepRightMovement
MtSilverRuinsAzureMiddle:
	special FadeOutMusic
	applymovement PLAYER, MtSilverRuinsFaceDown
	appear MTSILVERRUINSB1F_AZURE
	applymovement MTSILVERRUINSB1F_AZURE, MtSilverRuinsUpApproachMovement
	opentext
	writetext .introduction_text
	waitbutton
	closetext
	applymovement MTSILVERRUINSB1F_AZURE, MtSilverRuinsAzureMovesToArena
	applymovement PLAYER, MtSilverRuinsPlayerMovesToArena
	opentext
	writetext .before_battle_text
	waitbutton
	closetext
	winlosstext .battle_won_text, 0
	loadtrainer AZURE, AZURE1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext .after_battle_text
	waitbutton
	closetext
	checkcaught PHANCERO
	ifequal 2, MtSilverRuinsStartCredits
	special HealParty
	playsound SFX_POTION
	waitsfx
	opentext
	writetext .final_challenge_text
	waitbutton
	closetext
	applymovement MTSILVERRUINSB1F_AZURE, MtSilverRuinsWarpOutMovement
	disappear MTSILVERRUINSB1F_AZURE
	setscene SCENE_BEAT_AZURE
	end

.introduction_text
	text "Congratulations,"
	line "<PLAYER>! You made"
	cont "it to the end!"

	para "I was waiting for"
	line "you after hearing"
	para "from the rest that"
	line "you were strong."

	para "Come on, let's have"
	line "a battle!"
	done

.before_battle_text
	text "I want to see by"
	line "myself how strong"
	para "you are. Don't hold"
	line "back!"
	done

.battle_won_text
	text "As strong as the"
	line "others said!"
	done

.after_battle_text
	text "Now you have beat"
	line "us all. You've"
	para "definitely become"
	line "an excellent trai-"
	cont "ner, <PLAYER>."

	para "Keep up the good"
	line "work until you"
	para "become the best"
	line "trainer in the"
	cont "world!"
	done

.final_challenge_text
	text "But there is still"
	line "a challenger"
	para "awaiting you. This"
	line "time, not another"
	para "trainer, but a"
	line "#MON."

	para "I've healed your"
	line "#MON so you'll"
	para "be in your best"
	line "condition. Do your"
	cont "best!"
	done

PhanceroFliesDown:
	disappear MTSILVERRUINSB1F_PHANCERO_STATUE
	appear MTSILVERRUINSB1F_PHANCERO_ALIVE
	applymovement MTSILVERRUINSB1F_PHANCERO_ALIVE, MtSilverRuinsStepDown
	sjump PhanceroContinue

Phancero:
	disappear MTSILVERRUINSB1F_PHANCERO_STATUE
	appear MTSILVERRUINSB1F_PHANCERO_ALIVE
	applymovement PLAYER, MtSilverRuinsShowObject
	faceobject MTSILVERRUINSB1F_PHANCERO_ALIVE, PLAYER
PhanceroContinue:
	opentext
	writetext EllipsisSilenceText
	cry PHANCERO
	pause 15
	closetext
	loadwildmon PHANCERO, 95
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	ifequal 2, PhanceroContinue
	disappear MTSILVERRUINSB1F_PHANCERO_ALIVE
	checkcaught PHANCERO
	ifequal 2, MtSilverRuinsStartCredits
	opentext
	writetext PhanceroFledText
	waitbutton
	closetext
	;fallthrough

MtSilverRuinsStartCredits:
	pause 30
	setscene SCENE_DEFAULT
	setmapscene MT_SILVER_RUINS_B1F, SCENE_DEFAULT
	clearevent EVENT_RED_IN_MT_SILVER
	setevent EVENT_BEAT_MT_SILVER
	setevent EVENT_MARINA_AVAILABLE
	clearevent EVENT_REDS_HOUSE_2F_TM_ROCK_SMASH
	special HealParty
	refreshscreen
	credits
	end

MtSilverRuinsAbeApproachMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
MtSilverRuinsStepLeftMovement:
	step LEFT
	step_end

MtSilverRuinsRightApproachMovement:
	step RIGHT
	step RIGHT
	step RIGHT
MtSilverRuinsStepRightMovement:
	step RIGHT
	step_end

MtSilverRuinsUpApproachMovement:
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

MtSilverRuinsShowObject:
	show_object
	step_end

PhanceroFledText:
	text "PHANCERO flew"
	line "away<...>"
	done

MtSilverRuins_MapEvents:
	; filler
	db 0, 0

	; warps
	db 16
	warp_event 27, 47, SILVER_CAVE_ROOM_3, 2
	warp_event 28, 47, SILVER_CAVE_ROOM_3, 3
	warp_event 27, 43, MT_SILVER_RUINS_B1F, 1
	warp_event 28, 43, MT_SILVER_RUINS_B1F, 2
	warp_event 18, 44, MT_SILVER_RUINS_B1F, 3
	warp_event 16, 36, MT_SILVER_RUINS_B1F, 4
	warp_event  4, 32, MT_SILVER_RUINS_B1F, 5
	warp_event  4, 26, MT_SILVER_RUINS_B1F, 6
	warp_event 16, 24, MT_SILVER_RUINS_B1F, 7
	warp_event 20, 32, MT_SILVER_RUINS_B1F, 8
	warp_event 22, 26, MT_SILVER_RUINS_B1F, 9
	warp_event 28, 28, MT_SILVER_RUINS_B1F, 10
	warp_event 28, 16, MT_SILVER_RUINS_B1F, 11
	warp_event  4,  4, MT_SILVER_RUINS_B1F, 12
	warp_event  3,  1, MT_SILVER_RUINS_B1F, 13
	warp_event  4,  1, MT_SILVER_RUINS_B1F, 14

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
	object_event 15, 46, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INITIALIZED_EVENTS
	object_event 18, 40, SPRITE_EVAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INITIALIZED_EVENTS
	object_event 21, 29, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INITIALIZED_EVENTS
	object_event 21, 9, SPRITE_AZURE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INITIALIZED_EVENTS
	object_event 21, 2, SPRITE_PHANCERO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, Phancero, -1
	object_event 21, 2, SPRITE_PHANCERO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Phancero, EVENT_INITIALIZED_EVENTS
