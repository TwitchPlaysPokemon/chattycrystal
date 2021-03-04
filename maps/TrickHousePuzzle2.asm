TrickHousePuzzle2_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .check_traps

.check_traps
	scall TrickHouse_CheckDoor_Common

.check_switch1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .check_switch2
	scall TrickHousePuzzle2_Switch1_Press

.check_switch2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iffalse .check_switch3
	scall TrickHousePuzzle2_Switch2_Press

.check_switch3
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iffalse .check_switch4
	scall TrickHousePuzzle2_Switch3_Press

.check_switch4
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iffalse TrickHouse_End
	;fallthrough

TrickHousePuzzle2_Switch4_Press:
	changeblock  0, 12, $78 ; Trapdoor 4 closed
	changeblock 10, 12, $91 ; Switch 4 pressed
	refreshscreen
	end

TrickHousePuzzle2_Switch3_Press:
	changeblock 14, 12, $8e ; Trapdoor 3 closed
	changeblock  6, 10, $8f ; Switch 3 pressed
	refreshscreen
	end

TrickHousePuzzle2_Switch2_Press:
	changeblock  6, 14, $8c ; Trapdoor 2 closed
	changeblock 14,  4, $92 ; Switch 2 pressed
	refreshscreen
	end

TrickHousePuzzle2_Switch1_Press:
	changeblock  4,  6, $8d ; Trapdoor 1 closed
	changeblock  0,  4, $90 ; Switch 1 pressed
	refreshscreen
	end

TrickHousePuzzle2_Switch1:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue TrickHouse_End
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	playsound SFX_WALL_OPEN
	sjump TrickHousePuzzle2_Switch1_Press

TrickHousePuzzle2_Switch2:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue TrickHouse_End
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	playsound SFX_WALL_OPEN
	sjump TrickHousePuzzle2_Switch2_Press

TrickHousePuzzle2_Switch3:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iftrue TrickHouse_End
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	playsound SFX_WALL_OPEN
	sjump TrickHousePuzzle2_Switch3_Press


TrickHousePuzzle2_Switch4:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iftrue TrickHouse_End
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	playsound SFX_WALL_OPEN
	sjump TrickHousePuzzle2_Switch4_Press


TrickHousePuzzle2_Door:
	scall TrickHouse_Door
	iffalse TrickHouse_End
	writetext .code
	sjump TrickHouse_UnlockDoor_Common

.code
	text "TRICK MASTER is"
	line "smart."
	prompt

TrickHouseLiteBlueMail:
	itemball LITEBLUEMAIL

TrickHousePortraitMail:
	itemball PORTRAITMAIL

TrickHouseTrainerSchoolBoyTheodore:
	trainer SCHOOLBOY, THEODORE, EVENT_TRICK_HOUSE_BEAT_THEODORE, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext .AfterBattleText
	waitbutton
	closetext
	end

.SeenText
	text "Which switch"
	line "closes which hole?"
	done

.BeatenText
	text "After that battle,"
	line "I'm even more"
	cont "confused!"
	done

.AfterBattleText
	text "Can I get you to"
	line "push all the"
	cont "buttons for me?"
	done

TrickHouseTrainerSchoolBoyPaulo:
	trainer SCHOOLBOY, PAULO, EVENT_TRICK_HOUSE_BEAT_THEODORE, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext .AfterBattleText
	waitbutton
	closetext
	end

.SeenText
	text "Oh! You're on your"
	line "second TRICK HOUSE"
	cont "challenge!"
	done

.BeatenText
	text "You're good at"
	line "battling too?"
	done

.AfterBattleText
	text "The TRICK MASTER"
	line "rigged all the"
	para "tricks in this"
	line "house all by"
	cont "himself!"
	done

TrickHouseTrainerLassSavannah:
	trainer LASS, SAVANNAH, EVENT_TRICK_HOUSE_BEAT_SAVANNAH, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext .AfterBattleText
	waitbutton
	closetext
	end

.SeenText
	text "I want to make my"
	line "own GYM one day."

	para "So, I'm studying"
	line "how to set traps."
	done

.BeatenText
	text "I didn't study"
	line "battling enough!"
	done

.AfterBattleText
	text "You're strong,"
	line "aren't you?"

	para "Maybe even enough"
	line "to be a GYM"
	cont "LEADER!"
	done

TrickHousePuzzle2_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  0, 21, TRICK_HOUSE_ENTRANCE, 3
	warp_event  1, 21, TRICK_HOUSE_ENTRANCE, 3
	warp_event 13,  1, TRICK_HOUSE_EXIT, 2

	db 4 ; coord events
	coord_event  0,  4, SCENE_ALWAYS, TrickHousePuzzle2_Switch1
	coord_event 14,  5, SCENE_ALWAYS, TrickHousePuzzle2_Switch2
	coord_event  7, 11, SCENE_ALWAYS, TrickHousePuzzle2_Switch3
	coord_event 11, 12, SCENE_ALWAYS, TrickHousePuzzle2_Switch4

	db 1 ; bg events
	bg_event 13,  1, BGEVENT_SILENT, TrickHousePuzzle2_Door

	db 6 ; object events
	object_event 14, 14, SPRITE_SCROLL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrickHouse_FoundPuzzleScroll, -1
	object_event  8, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TrickHouseLiteBlueMail, EVENT_TRICK_HOUSE_GOT_LITEBLUEMAIL
	object_event  3, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TrickHousePortraitMail, EVENT_TRICK_HOUSE_GOT_PORTRAITMAIL
	object_event 13, 10, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrickHouseTrainerSchoolBoyTheodore, -1
	object_event 10, 17, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrickHouseTrainerSchoolBoyPaulo, -1
	object_event 11,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrickHouseTrainerLassSavannah, -1
