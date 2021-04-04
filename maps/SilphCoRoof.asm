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
	trainer CAL, MT_BATTLE_100, EVENT_BEAT_MT_BATTLE_100, .before_text, .defeat_text, 0, .script

.script
	checkevent EVENT_MT_BATTLE_TALKED_WITH_FINAL_TRAINER
	iffalse .first_message
	jumptext .final_text

.first_message
	setevent EVENT_MT_BATTLE_TALKED_WITH_FINAL_TRAINER
	farjumptext MtBattleTrainer100AfterText

.before_text
	text_far MtBattleTrainer100BeforeText
	text_end

.defeat_text
	text "Stupendous!"
	done

.final_text
	text "Congratulations!"
	line "But don't be"
	cont "content with this."

	para "Don't neglect your"
	line "training!"
	done

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
MtBattleGotReward:
	callasm .resetTrainers
	warp SILPH_CO_1F, 2, 0 	; Warp to the 1F Elevator door
	end

NUM_SILPH_FLAGS EQU 111

.resetTrainers
	ld b, NUM_SILPH_FLAGS / 8
	assert !(EVENT_BEAT_MT_BATTLE_1 % 8)
	ld hl, wEventFlags + EVENT_BEAT_MT_BATTLE_1 / 8
	xor a
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	if NUM_SILPH_FLAGS % 8
		ld a, [hl]
		and $100 - (1 << (NUM_SILPH_FLAGS % 8))
		ld [hl], a
	endc
	ret

SilphCoRoofLegendaryText:
	text "Awooo!"
	done

MtBattleMasterBall:
	opentext
	verbosegiveitem MASTER_BALL, 5
	iffalse .BagFull
	closetext
	sjump MtBattleGotReward

.BagFull
	writetext MtBattleBagFullText
	waitbutton
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
