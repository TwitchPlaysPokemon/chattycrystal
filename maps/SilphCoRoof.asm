	object_const_def ; object_event constants
	const MTBTLMASTER
	const SILPH_CO_MASTER_BALL
	const SILPH_CO_RAIKOU
	const SILPH_CO_SUICUNE

SilphCoRoof_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .SetUpRoof


.SetUpRoof
	checkcaught SUICUNE
	ifequal 2, .noSuicune
	readmem wRoamMon2Species
	iffalse .noSuicune
.checkRaikou
	checkcaught RAIKOU
	ifequal 2, .noRaikou
	readmem wRoamMon1Species
	iffalse .noRaikou
.done
	return

.noSuicune
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	disappear SILPH_CO_SUICUNE
	reloadmap
	sjump .checkRaikou

.noRaikou
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	disappear SILPH_CO_RAIKOU
	reloadmap
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
	setevent EVENT_MT_BATTLE_HIDE_RAIKOU
	disappear SILPH_CO_RAIKOU
	reloadmapafterbattle
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
	setevent EVENT_MT_BATTLE_HIDE_SUICUNE
	disappear SILPH_CO_SUICUNE
	reloadmapafterbattle
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
	object_event  9,  1, SPRITE_RAIKOU, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SilphCoRoofRaikou, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event 11,  1, SPRITE_SUICUNE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoRoofSuicune, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2

