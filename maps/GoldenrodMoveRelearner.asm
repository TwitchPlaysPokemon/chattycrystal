	object_const_def ; object_event constants
	const GOLDENRODMOVERELEARNER_RELEARNER

GoldenrodMoveRelearner_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

GoldenrodMoveRelearner_RelearnerScript:
	faceplayer
	opentext
	writetext .introduction_text
	special PlaceMoneyTopRight
	yesorno
	iffalse .cancel
	checkmoney YOUR_MONEY, 2500
	ifequal HAVE_LESS, .not_enough_money
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, 2500
	special PlaceMoneyTopRight
	farscall MoveRelearnerScript
	iftrue .end
	givemoney YOUR_MONEY, 2500
.end
	end

.introduction_text
	text "Welcome to my"
	line "house. I can make"
	para "#MON remember"
	line "the moves that"
	cont "they used to know."

	para "For ¥2500, I can"
	line "make one of your"
	para "#MON remember a"
	line "forgotten move."

	para "What do you say?"
	line "It's only ¥2500."
	done

.not_enough_money
	writetext .not_enough_money_text
	waitbutton
	closetext
	end

.not_enough_money_text
	text "I'm sorry, but it"
	line "seems like you"
	para "can't afford that"
	line "right now."

	para "Please come again"
	line "when you can."
	done

.cancel
	farsjump MoveRelearnerCancel

GoldenrodMoveRelearnerBookshelf1:
	jumpstd magazinebookshelf

GoldenrodMoveRelearnerBookshelf2:
	jumpstd difficultbookshelf

GoldenrodMoveRelearnerRadio:
	jumpstd radio1

GoldenrodMoveRelearner_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, GOLDENROD_CITY, 16
	warp_event  3,  7, GOLDENROD_CITY, 16

	db 0 ; coord events

	db 3 ; bg events
	bg_event  0,  1, BGEVENT_READ, GoldenrodMoveRelearnerBookshelf2
	bg_event  1,  1, BGEVENT_READ, GoldenrodMoveRelearnerBookshelf1
	bg_event  7,  1, BGEVENT_READ, GoldenrodMoveRelearnerRadio

	db 1 ; object events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodMoveRelearner_RelearnerScript, -1
