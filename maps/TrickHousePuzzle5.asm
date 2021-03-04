TrickHousePuzzle5_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .check_traps

.check_traps:
	scall TrickHouse_CheckDoor_Common

.check_switch1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .check_switch2
	scall TrickHousePuzzle5_Switch1_TurnOn

.check_switch2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iffalse .check_switch3
	scall TrickHousePuzzle5_Switch2_TurnOn

.check_switch3
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iffalse .check_switch4
	scall TrickHousePuzzle5_Switch3_TurnOn

.check_switch4
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iffalse .check_switch5
	scall TrickHousePuzzle5_Switch4_TurnOn

.check_switch5
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	iffalse TrickHouse_End
	;fallthrough

TrickHousePuzzle5_Switch5_TurnOn:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	changeblock 12, 16, $C7 ; Switch 5 on and Conveyor 5 turned
	refreshscreen
	end

TrickHousePuzzle5_Switch4_TurnOn:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	changeblock 12, 12, $CB ; Conveyor 4 turned
	changeblock 12, 10, $CA ; Switch 4 on
	refreshscreen
	end

TrickHousePuzzle5_Switch3_TurnOn:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	changeblock  6, 12, $C9 ; Conveyor 3 turned
	changeblock  4, 10, $C8 ; Switch 3 on
	refreshscreen
	end

TrickHousePuzzle5_Switch2_TurnOn:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	changeblock  8,  4, $CF ; Conveyor 2 turned
	changeblock  6,  4, $CE ; Switch 2 on
	refreshscreen
	end

TrickHousePuzzle5_Switch1_TurnOn:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	changeblock  6,  6, $CD ; Conveyor 1 turned
	changeblock  4,  4, $CC ; Switch 1 on
	refreshscreen
	end

TrickHousePuzzle5_Switch1:
	playsound SFX_WALL_OPEN
	waitsfx
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse TrickHousePuzzle5_Switch1_TurnOn
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	changeblock  6,  6, $B9 ; Conveyor 1 reset
	changeblock  4,  4, $BE ; Switch 1 off
	refreshscreen
	end

TrickHousePuzzle5_Switch2:
	playsound SFX_WALL_OPEN
	waitsfx
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iffalse TrickHousePuzzle5_Switch2_TurnOn
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	changeblock  8,  4, $C0 ; Conveyor 2 reset
	changeblock  6,  4, $BF ; Switch 2 off
	refreshscreen
	end

TrickHousePuzzle5_Switch3:
	playsound SFX_WALL_OPEN
	waitsfx
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iffalse TrickHousePuzzle5_Switch3_TurnOn
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	changeblock  6, 12, $A9 ; Conveyor 3 reset
	changeblock  4, 10, $AD ; Switch 3 off
	refreshscreen
	end

TrickHousePuzzle5_Switch4:
	playsound SFX_WALL_OPEN
	waitsfx
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iffalse TrickHousePuzzle5_Switch4_TurnOn
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	changeblock 12, 12, $AA ; Conveyor 4 reset
	changeblock 12, 10, $B0 ; Switch 4 off
	refreshscreen
	end

TrickHousePuzzle5_Switch5:
	playsound SFX_WALL_OPEN
	waitsfx
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	iffalse TrickHousePuzzle5_Switch5_TurnOn
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	changeblock 12, 16, $A0 ; Switch 5 off and Conveyor 5 reset
	refreshscreen
	end

TrickHousePuzzle5_Door:
	scall TrickHouse_Door
	iffalse TrickHouse_End
	writetext .code
	sjump TrickHouse_UnlockDoor_Common

.code
	text "TRICK MASTER is"
	line "huggable."
	prompt

TrickHouseBlueSkyMail:
	hiddenitem BLUESKY_MAIL, EVENT_TRICK_HOUSE_GOT_BLUESKY_MAIL

TrickHouseMusicMail:
	itemball MUSIC_MAIL

TrickHouseTrainerPsychicJoshua:
	trainer PSYCHIC_T, JOSHUA_P, EVENT_TRICK_HOUSE_BEAT_PSYCHIC_JOSHUA, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext .AfterBattleText

.SeenText
	text "The TRICK MASTER"
	line "always vanishes"
	cont "like smoke."

	para "How does he do it?"
	done

.BeatenText
	text "Aiyeeeh!"

	para "You're much too"
	line "strong!"

	para "How do you do it?"
	done

.AfterBattleText
	text "I wish I could"
	line "appear and"
	para "disappear as if I"
	line "were smoke, too."
	done

TrickHouseTrainerPsychicAlexis:
	trainer PSYCHIC_T, ALEXIS, EVENT_TRICK_HOUSE_BEAT_ALEXIS, .SeenText, .BeatenText, 0, .Script

.Script:
	jumptext .AfterBattleText

.SeenText
	text "Whoever wins will"
	line "get through here"
	cont "first."

	para "That's the feeling"
	line "I get."
	done

.BeatenText
	text "Oh!"

	para "Well, go ahead,"
	line "then!"
	done

.AfterBattleText
	text "You're solving all"
	line "the puzzles in the"
	cont "TRICK HOUSE."

	para "That's the feeling"
	line "I get."
	done

TrickHouseTrainerMediumPhoebe:
	trainer MEDIUM, PHOEBE, EVENT_TRICK_HOUSE_BEAT_PHOEBE, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext .AfterBattleText

.SeenText
	text "Going around the"
	line "same spot<...>"

	para "It begets ill"
	line "fortune<...>"
	done

.BeatenText
	text "Defeated!"

	para "It's a bad sign<...>"
	done

.AfterBattleText
	text "I've circled the"
	line "same spot over ten"
	cont "times now."

	para "It's ill fortune<...>"
	done

TrickHousePuzzle5_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  0, 21, TRICK_HOUSE_ENTRANCE, 3
	warp_event  1, 21, TRICK_HOUSE_ENTRANCE, 3
	warp_event 13,  1, TRICK_HOUSE_EXIT, 2

	db 0 ; coord events

	db 7 ; bg events
	bg_event 13,  1, BGEVENT_SILENT, TrickHousePuzzle5_Door
	bg_event  4,  4, BGEVENT_SILENT, TrickHousePuzzle5_Switch1
	bg_event  7,  5, BGEVENT_SILENT, TrickHousePuzzle5_Switch2
	bg_event  5, 10, BGEVENT_SILENT, TrickHousePuzzle5_Switch3
	bg_event 12, 11, BGEVENT_SILENT, TrickHousePuzzle5_Switch4
	bg_event 12, 16, BGEVENT_SILENT, TrickHousePuzzle5_Switch5
	bg_event  5,  7, BGEVENT_ITEM, TrickHouseBlueSkyMail

	db 5 ; object events
	object_event  7,  2, SPRITE_SCROLL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrickHouse_FoundPuzzleScroll, -1
	object_event 10, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TrickHouseMusicMail, EVENT_TRICK_HOUSE_GOT_MUSIC_MAIL
	object_event  0,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrickHouseTrainerPsychicJoshua, -1
	object_event 14,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrickHouseTrainerPsychicAlexis, -1
	object_event  9, 10, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrickHouseTrainerMediumPhoebe, -1
