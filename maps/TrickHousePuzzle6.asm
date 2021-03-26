TrickHousePuzzle6_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, TrickHouse_CheckDoor_Common

TrickHousePuzzle6_Door:
	scall TrickHouse_Door
	iffalse GenericDummyScript
	writetext .code
	sjump TrickHouse_UnlockDoor_Common

.code
	text "TRICK MASTER"
	line "I love."
	prompt

TrickHouseMirageMail:
	itemball MIRAGE_MAIL

TrickHouseTrainerCoolTrainerMVince:
	trainer COOLTRAINERM, VINCE, EVENT_TRICK_HOUSE_BEAT_VINCE, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext .AfterBattleText

.SeenText
	text "Not many TRAINERS"
	line "have made it this"
	cont "far."
	done

.BeatenText
	text "That must mean"
	line "you're tough, too<...>"
	done

.AfterBattleText
	text "You've beaten the"
	line "#MON LEAGUE"
	cont "CHAMPION?"

	para "That's too much!"
	done

TrickHouseTrainerCoolTrainerFKeira:
	trainer COOLTRAINERF, KEIRA, EVENT_TRICK_HOUSE_BEAT_KEIRA, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext .AfterBattleText

.SeenText
	text "Consider yourself"
	line "lucky to be"
	cont "battling me!"
	done

.BeatenText
	text "This isn't right!"
	line "I can't lose!"
	done

.AfterBattleText
	text "It's a miracle that"
	line "you beat me."

	para "You can brag about"
	line "it."
	done

TrickHouseTrainerCoolTrainerMJules:
	trainer COOLTRAINERM, JULES, EVENT_TRICK_HOUSE_BEAT_JULES, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext .AfterBattleText

.SeenText
	text "You've been"
	line "slugging through"
	para "the TRICK HOUSE"
	line "challenge, too."
	done

.BeatenText
	text "I see<...>"

	para "You possess an"
	line "extraordinary"
	cont "style."
	done

.AfterBattleText
	text "Seeing someone"
	line "like you should"
	para "please the TRICK"
	line "MASTER."
	done

TrickHousePuzzle6_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  0, 21, TRICK_HOUSE_ENTRANCE, 3
	warp_event  1, 21, TRICK_HOUSE_ENTRANCE, 3
	warp_event 13,  1, TRICK_HOUSE_EXIT, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event 13,  1, BGEVENT_SILENT, TrickHousePuzzle6_Door

	db 6 ; object events
	object_event  7, 11, SPRITE_SCROLL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrickHouse_FoundPuzzleScroll, -1
	object_event  2, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TrickHouseMirageMail, EVENT_TRICK_HOUSE_GOT_MIRAGE_MAIL
	object_event 12, 21, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrickHouseTrainerCoolTrainerMVince, -1
	object_event 10, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrickHouseTrainerCoolTrainerFKeira, -1
	object_event 12, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrickHouseTrainerCoolTrainerMJules, -1
