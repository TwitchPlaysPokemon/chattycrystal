CeladonMansion2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CeladonMansion2FAchievementChecker:
	faceplayer
	farsjump AchievementChecker

CeladonMansion2FVisitor:
	readmem hCGB
	ifgreater 1, .virtual_boy
	jumptextfaceplayer .text

.text
	text "Can you believe"
	line "that guy? I came"
	para "all the way from"
	line "NINTENDO to show"
	para "him our latest"
	line "prototype, but he's"
	para "obsessed with some"
	line "achievements in"
	cont "his game instead<...>"
	done

.virtual_boy
	jumptextfaceplayer .virtual_boy_text

.virtual_boy_text
	text "Oh, it's our proto-"
	line "type VIRTUAL BOY!"

	para "How do you like it"
	line "so far?"
	done

CeladonMansion2FMeetingRoomSign:
	jumptext CeladonMansion2FMeetingRoomSignText

CeladonMansion2FBookshelf:
	jumpstd difficultbookshelf

CeladonMansion2FMeetingRoomSignText:
	text "GAME FREAK"
	line "MEETING ROOM"
	done

CeladonMansion2F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  0, CELADON_MANSION_1F, 4
	warp_event  1,  0, CELADON_MANSION_3F, 2
	warp_event  6,  0, CELADON_MANSION_3F, 3
	warp_event  7,  0, CELADON_MANSION_1F, 5

	db 0 ; coord events

	db 2 ; bg events
	bg_event  5,  8, BGEVENT_UP, CeladonMansion2FMeetingRoomSign
	bg_event  2,  3, BGEVENT_READ, CeladonMansion2FBookshelf

	db 2 ; object events
	object_event  1,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonMansion2FAchievementChecker, -1
	object_event  3,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonMansion2FVisitor, -1
