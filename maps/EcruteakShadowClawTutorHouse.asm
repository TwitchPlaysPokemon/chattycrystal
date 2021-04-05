EcruteakShadowClawTutorHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

EcruteakShadowClawTutor:
	faceplayer
	opentext
	writetext .introduction_text
	checkflag ENGINE_FOGBADGE
	iffalse .no_badge
	writetext .teach_move_text
	yesorno
	iffalse .rejected
	setval MOVETUTOR_SHADOW_CLAW
	special MoveTutor
	iftrue .rejected
	writetext .taught_text
	waitbutton
	closetext
	end

.introduction_text
	text "MORTY: Welcome! I'm"
	line "the former LEADER"
	cont "of this city's GYM."

	para "This girl aoooo"
	line "offered to run the"
	para "GYM for a while,"
	line "so I decided to"
	para "take a short"
	line "vacation."

	para "I wonder how my"
	line "old GYM is doing?"
	prompt

.teach_move_text
	text "Oh, that's the GYM's"
	line "BADGE! Maybe I"
	cont "should go back<...>"

	para "As a reward for"
	line "earning my BADGE,"
	para "let me teach your"
	line "#MON a great"
	cont "ghost-type move."

	para "What do you think?"
	line "Does any of your"
	para "#MON want to"
	line "learn SHADOW CLAW?"
	done

.taught_text
	text "SHADOW CLAW is a"
	line "move that often"
	para "delivers critical"
	line "hits."

	para "I know you'll put"
	line "it to good use."
	done

.rejected
	writetext .rejected_text
	waitbutton
	closetext
	end

.rejected_text
	text "Oh, okay. If you"
	line "change your mind,"
	cont "I'll be waiting."
	done

.no_badge
	writetext .no_badge_text
	waitbutton
	closetext
	end

.no_badge_text
	text "Maybe you should"
	line "check it out!"
	done

EcruteakShadowClawTutorHouseRadio:
	jumpstd radio1

EcruteakShadowClawTutorHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, ECRUTEAK_CITY, 16
	warp_event  4,  7, ECRUTEAK_CITY, 16

	db 0 ; coord events

	db 1 ; bg events
	bg_event  2,  1, BGEVENT_READ, EcruteakShadowClawTutorHouseRadio

	db 1 ; object events
	object_event  5,  4, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EcruteakShadowClawTutor, -1
