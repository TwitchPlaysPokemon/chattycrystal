TrickHousePuzzle4_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, TrickHouse_CheckDoor_Common

TrickHousePuzzle4_Door:
	scall TrickHouse_Door
	iffalse .end
	writetext .code
	sjump TrickHouse_UnlockDoor_Common
.end
	end

.code
	text "TRICK MASTER is"
	line "a genius."
	prompt

TrickHouseEonMail:
	itemball EON_MAIL

TrickHouseMorphMail:
	itemball MORPH_MAIL

TrickHousePuzzle4_MapEvents:
	db 0, 0 ; filler

	db 38 ; warp events
	warp_event  0, 21, TRICK_HOUSE_ENTRANCE,  3
	warp_event  1, 21, TRICK_HOUSE_ENTRANCE,  3
	warp_event 13,  1, TRICK_HOUSE_EXIT, 2
	warp_event  2, 19, TRICK_HOUSE_PUZZLE_4,  6
	warp_event  0, 17, TRICK_HOUSE_PUZZLE_4,  8
	warp_event  4, 17, TRICK_HOUSE_PUZZLE_4,  4
	warp_event  4, 21, TRICK_HOUSE_PUZZLE_4, 34
	warp_event  0, 15, TRICK_HOUSE_PUZZLE_4,  5
	warp_event  6, 15, TRICK_HOUSE_PUZZLE_4, 11
	warp_event  6, 21, TRICK_HOUSE_PUZZLE_4, 14
	warp_event  0, 13, TRICK_HOUSE_PUZZLE_4,  9
	warp_event  4, 13, TRICK_HOUSE_PUZZLE_4, 37
	warp_event  8, 13, TRICK_HOUSE_PUZZLE_4, 33
	warp_event  8, 17, TRICK_HOUSE_PUZZLE_4, 10
	warp_event  8, 21, TRICK_HOUSE_PUZZLE_4, 20
	warp_event  0, 11, TRICK_HOUSE_PUZZLE_4, 23
	warp_event  4, 11, TRICK_HOUSE_PUZZLE_4, 19
	warp_event 10, 11, TRICK_HOUSE_PUZZLE_4, 32
	warp_event 10, 17, TRICK_HOUSE_PUZZLE_4, 17
	warp_event 10, 21, TRICK_HOUSE_PUZZLE_4, 15
	warp_event  0,  9, TRICK_HOUSE_PUZZLE_4, 22
	warp_event  4,  9, TRICK_HOUSE_PUZZLE_4, 21
	warp_event  8,  9, TRICK_HOUSE_PUZZLE_4, 16
	warp_event 12,  9, TRICK_HOUSE_PUZZLE_4, 29
	warp_event 12, 13, TRICK_HOUSE_PUZZLE_4, 36
	warp_event 12, 17, TRICK_HOUSE_PUZZLE_4, 27
	warp_event 12, 21, TRICK_HOUSE_PUZZLE_4, 26
	warp_event  0,  7, TRICK_HOUSE_PUZZLE_4, 35
	warp_event  4,  7, TRICK_HOUSE_PUZZLE_4, 24
	warp_event  8,  7, TRICK_HOUSE_PUZZLE_4,  4
	warp_event 14,  7, TRICK_HOUSE_PUZZLE_4, 38
	warp_event 14, 13, TRICK_HOUSE_PUZZLE_4, 18
	warp_event 14, 17, TRICK_HOUSE_PUZZLE_4, 13
	warp_event 14, 21, TRICK_HOUSE_PUZZLE_4,  7
	warp_event  0,  3, TRICK_HOUSE_PUZZLE_4, 28
	warp_event  4,  3, TRICK_HOUSE_PUZZLE_4, 25
	warp_event 10,  3, TRICK_HOUSE_PUZZLE_4, 12
	warp_event 14,  3, TRICK_HOUSE_PUZZLE_4, 31

	db 0 ; coord events

	db 1 ; bg events
	bg_event 13,  1, BGEVENT_SILENT, TrickHousePuzzle4_Door

	db 3 ; object events
	object_event  2,  5, SPRITE_SCROLL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrickHouse_FoundPuzzleScroll, -1
	object_event  2,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TrickHouseEonMail, EVENT_TRICK_HOUSE_GOT_EON_MAIL
	object_event  7,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TrickHouseMorphMail, EVENT_TRICK_HOUSE_GOT_MORPH_MAIL
