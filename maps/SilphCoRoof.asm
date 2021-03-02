	object_const_def ; object_event constants
	const MTBTLMASTER
	const SILPH_CO_MASTER_BALL
	const SILPH_CO_RAIKOU
	const SILPH_CO_SUICUNE

SilphCoRoof_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .SetUpRoof

.SetUpRoof:
	checkcaught SUICUNE
	ifequal 2, .no_suicune
	readmem wRoamMon2Species
	iftrue .suicune
.no_suicune
	disappear SILPH_CO_SUICUNE
.suicune
	checkcaught RAIKOU
	ifequal 2, .no_raikou
	readmem wRoamMon1Species
	iftrue .raikou
.no_raikou
	disappear SILPH_CO_RAIKOU
.raikou
	return

MtBattleTrainer100:
	trainer CAL, MT_BATTLE_100, EVENT_BEAT_MT_BATTLE_100, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleBeatBtlMaster

SilphCoRoofRaikou:
	faceplayer
	opentext
	writetext SilphCoRoofLegendaryText
	cry RAIKOU
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_SUICUNE
	loadwildmon RAIKOU, 75
	startbattle
	disappear SILPH_CO_RAIKOU
	reloadmapafterbattle
	readvar VAR_BATTLERESULT
	iftrue MtBattleGotReward
	setval 0
	writemem wRoamMon1Species
	writemem wRoamMon1HP
	setval -1
	writemem wRoamMon1MapGroup
	writemem wRoamMon1MapNumber
	sjump MtBattleGotReward

SilphCoRoofSuicune:
	faceplayer
	opentext
	writetext SilphCoRoofLegendaryText
	cry SUICUNE
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_SUICUNE
	loadwildmon SUICUNE, 75
	startbattle
	disappear SILPH_CO_SUICUNE
	reloadmapafterbattle
	readvar VAR_BATTLERESULT
	iftrue MtBattleGotReward
	setval 0
	writemem wRoamMon2Species
	writemem wRoamMon2HP
	setval -1
	writemem wRoamMon2MapGroup
	writemem wRoamMon2MapNumber
	sjump MtBattleGotReward

SilphCoRoofLegendaryText:
	text "Awooo!"
	done

MtBattleBeatBtlMaster:
	endifjustbattled
	opentext
	writetext MtBattleBeatBtlMasterText
	waitbutton
	closetext
	end

MtBattleMasterBall:
	opentext
	verbosegiveitemvar MASTER_BALL, 5
	iffalse .BagFull
	closetext
	sjump MtBattleGotReward

.BagFull
	opentext
	writetext MtBattleBagFullText
	closetext
	end

SilphCoBinoculars3:
	jumptext SilphCoBinoculars3Text

SilphCoBinoculars4:
	jumptext SilphCoBinoculars4Text

SilphCoBinoculars3Text:
	text "Someone slapped"
	line "TEAM SKULL logo"

	para "stickers over the"
	line "lenses."
	done

SilphCoBinoculars4Text:
	text "The S.S. AQUA"
	line "is pulling into"
	cont "the harbor."

	para "What a fast ship!"
	done

MtBattleBeatBtlMasterText:
	text "You beat every one"
	line "of us! Good work!"

	para "Your reward is up"
	line "those stairs."

	para "But once you take"
	line "it, you'll have"

	para "to beat us all"
	line "over again to"

	para "get another!"
	done

MtBattleBagFullText:
	text "You have no room"
	line "for this."
	done

SilphCoRoof_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  7, 13, SILPH_CO_11F, 2

	db 0 ; coord events

	db 4 ; bg events
	bg_event 13, 3, BGEVENT_RIGHT, SilphCoBinoculars3
	bg_event 13, 9, BGEVENT_RIGHT, SilphCoBinoculars3
	bg_event 13, 14, BGEVENT_RIGHT, SilphCoBinoculars4
	bg_event 19, 14, BGEVENT_RIGHT, SilphCoBinoculars4

	db 4 ; object events
	object_event 12,  8, SPRITE_CAL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, MtBattleTrainer100, -1
	object_event  7,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtBattleMasterBall, -1
	object_event  9,  1, SPRITE_RAIKOU, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SilphCoRoofRaikou, -1
	object_event 11,  1, SPRITE_SUICUNE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoRoofSuicune, -1
