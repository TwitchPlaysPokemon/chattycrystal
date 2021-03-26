TrickHousePuzzle1_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, TrickHouse_CheckDoor_Common

TrickHousePuzzle1_Door:
	scall TrickHouse_Door
	iffalse GenericDummyScript
	writetext .code
	sjump TrickHouse_UnlockDoor_Common

.code
	text "TRICK MASTER is"
	line "fabulous."
	prompt

TrickHouseFlowerMail:
	itemball FLOWER_MAIL

TrickHouseSurfMail:
	itemball SURF_MAIL

TrickHouseTrainerLassSally:
	trainer LASS, SALLY, EVENT_TRICK_HOUSE_BEAT_SALLY, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext .AfterBattleText

.SeenText
	text "I'll hack and slash"
	line "my way to victory"
	cont "with CUT!"
	done

.BeatenText
	text "Why are you so"
	line "serious?"
	done

.AfterBattleText
	text "I never get tired"
	line "of hacking and" ; ;)
	cont "slashing!"
	done

TrickHouseTrainerLassRobin:
	trainer LASS, ROBIN, EVENT_TRICK_HOUSE_BEAT_ROBIN, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext .AfterBattleText

.SeenText
	text "Just who is the"
	line "TRICK MASTER?"
	done

.BeatenText
	text "I lost while I"
	line "was lost in"
	cont "thought!"
	done

.AfterBattleText
	text "You're strong!"

	para "Just who are you?"
	done

TrickHouseTrainerYoungsterEdd:
	trainer YOUNGSTER, EDD, EVENT_TRICK_HOUSE_BEAT_EDD, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext .AfterBattleText

.SeenText
	text "I wandered into"
	line "this weird house"
	cont "by accident<...>"
	done

.BeatenText
	text "And now I've"
	line "lost<...>"
	done

.AfterBattleText
	text "I've lost my way,"
	line "I lost a battle,"
	para "and I'm now even"
	line "more lost<...>"

	para "I can't get out<...>"
	done

TrickHousePuzzle1_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  0, 21, TRICK_HOUSE_ENTRANCE, 3
	warp_event  1, 21, TRICK_HOUSE_ENTRANCE, 3
	warp_event 13,  1, TRICK_HOUSE_EXIT, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event 13,  1, BGEVENT_SILENT, TrickHousePuzzle1_Door

	db 6 ; object events
	object_event  3, 16, SPRITE_SCROLL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrickHouse_FoundPuzzleScroll, -1
	object_event  6, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TrickHouseFlowerMail, EVENT_TRICK_HOUSE_GOT_FLOWER_MAIL
	object_event  9,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TrickHouseSurfMail, EVENT_TRICK_HOUSE_GOT_SURF_MAIL
	object_event 14, 20, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 5, TrickHouseTrainerLassSally, -1
	object_event  2, 15, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrickHouseTrainerLassRobin, -1
	object_event 14,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrickHouseTrainerYoungsterEdd, -1
