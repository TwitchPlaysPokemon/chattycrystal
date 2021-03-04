TrickHousePuzzle3_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, TrickHouse_CheckDoor_Common

TrickHousePuzzle3_Door:
	scall TrickHouse_Door
	iffalse TrickHouse_End
	writetext .code
	sjump TrickHouse_UnlockDoor_Common

.code
	text "TRICK MASTER is"
	line "cool."
	prompt

TrickHouseLovelyMail:
	itemball LOVELY_MAIL

TrickHouseBoulder:
	jumpstd strengthboulder

TrickHouseTrainerCoolTrainerFCora:
	trainer COOLTRAINERF, CORA, EVENT_TRICK_HOUSE_BEAT_CORA, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext .AfterBattleText
	waitbutton
	closetext
	end

.SeenText
	text "It's too much"
	line "bother to think"
	cont "this out."

	para "I only wanted"
	line "to battle!"
	done

.BeatenText
	text "Even though I lost"
	line "I still like"
	cont "battling."
	done

.AfterBattleText
	text "Wouldn't you"
	line "agree?"

	para "You would go"
	line "anywhere if there"
	cont "were TRAINERS."
	done

TrickHouseTrainerBlackBeltYugi:
	trainer BLACKBELT_T, YUGI, EVENT_TRICK_HOUSE_BEAT_YUGI, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext .AfterBattleText
	waitbutton
	closetext
	end

.SeenText
	text "Heh, boulders like"
	line "this, I can brush"
	cont "aside with one"
	cont "finger!"
	done

.BeatenText
	text "I can push these"
	line "boulders, but I"
	cont "can't solve the"
	cont "puzzle<...>"
	done

.AfterBattleText
	text "It's not good"
	line "enough to be"
	cont "brawny<...>"

	para "You have to use"
	line "your head."

	para "Be brainy!"
	done

TrickHouseTrainerCoolTrainerFCathy:
	trainer COOLTRAINERF, CATHY, EVENT_TRICK_HOUSE_BEAT_CATHY, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext .AfterBattleText
	waitbutton
	closetext
	end

.SeenText
	text "The TRICK HOUSE is"
	line "getting trickier,"
	cont "isn't it?"
	done

.BeatenText
	text "Aaak!"
	done

.AfterBattleText
	text "Has anyone made it"
	line "to the end?"
	done

TrickHousePuzzle3_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  0, 21, TRICK_HOUSE_ENTRANCE, 3
	warp_event  1, 21, TRICK_HOUSE_ENTRANCE, 3
	warp_event 13,  1, TRICK_HOUSE_EXIT, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event 13,  1, BGEVENT_SILENT, TrickHousePuzzle3_Door

	db 12 ; object events
	object_event 14, 13, SPRITE_SCROLL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrickHouse_FoundPuzzleScroll, -1
	object_event  2,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TrickHouseLovelyMail, EVENT_TRICK_HOUSE_GOT_LOVELY_MAIL
	object_event  9,  3, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrickHouseBoulder, -1
	object_event 13,  3, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrickHouseBoulder, -1
	object_event 12,  5, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrickHouseBoulder, -1
	object_event  4,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrickHouseBoulder, -1
	object_event 10, 12, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrickHouseBoulder, -1
	object_event 10, 15, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrickHouseBoulder, -1
	object_event  5, 17, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrickHouseBoulder, -1
	object_event  2,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrickHouseTrainerCoolTrainerFCora, -1
	object_event  2, 14, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrickHouseTrainerBlackBeltYugi, -1
	object_event 14,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrickHouseTrainerCoolTrainerFCathy, -1
