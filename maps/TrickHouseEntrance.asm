	; temporary event flags
	const_def
	const TRICKHOUSEEVENT_PUZZLE_READY
	const TRICKHOUSEEVENT_PUZZLE_FINISHED
	const TRICKHOUSEEVENT_SCROLL_ACTIVE

TrickHouseEntrance_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .check_ready

.check_ready
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_6
	iftrue .finished
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_5
	iftrue .six
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_4
	iftrue .five
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_3
	iftrue .four
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_2
	iftrue .three
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_1
	iftrue .two
.ready
	setevent TRICKHOUSEEVENT_PUZZLE_READY
	setevent TRICKHOUSEEVENT_SCROLL_ACTIVE ; TODO: make the Trick Master activate it
	return

.finished
	setevent TRICKHOUSEEVENT_PUZZLE_FINISHED
	return

.two
	readvar VAR_BADGES
	ifgreater 12, .ready
	return

.three
	readvar VAR_BADGES
	ifgreater 13, .ready
	return

.four
	readvar VAR_BADGES
	ifgreater 14, .ready
	return

.five
	readvar VAR_BADGES
	ifgreater 15, .ready
	return

.six
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .ready
	return

TrickHouseEntrance_Scroll:
	checkevent TRICKHOUSEEVENT_PUZZLE_FINISHED
	iftrue .finished
	checkevent TRICKHOUSEEVENT_SCROLL_ACTIVE
	iffalse .not_active
	opentext
	writetext .big_hole_text
	yesorno
	closetext
	iffalse .end
	; TODO: some movement effect
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_5
	iftrue .six
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_4
	iftrue .five
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_3
	iftrue .four
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_2
	iftrue .three
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_1
	iftrue .two
	warp TRICK_HOUSE_PUZZLE_1, 0, 21
.end
	end

.two
	warp TRICK_HOUSE_PUZZLE_2, 0, 21
	end

.three
	warp TRICK_HOUSE_PUZZLE_3, 0, 21
	end

.four
	warp TRICK_HOUSE_PUZZLE_4, 0, 21
	end

.five
	warp TRICK_HOUSE_PUZZLE_5, 0, 21
	end

.six
	warp TRICK_HOUSE_PUZZLE_6, 0, 21
	end

.big_hole_text
	text "There's a big hole"
	line "behind the scroll!"

	para "Want to go in?"
	done

.not_active
	jumptext .not_active_text

.not_active_text
	text "It's a scroll."
	done

.finished
	jumptext .finished_text

.finished_text
	text "There's a note"
	line "affixed to the"
	cont "scroll<...>"

	para "I'm leaving on a"
	line "journey. Don't look"
	para "for me."
	line "TRICK MASTER"
	done

TrickHouseEntrance_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  5,  7, VIRIDIAN_CITY, 3
	warp_event  6,  7, VIRIDIAN_CITY, 3
	warp_event  5,  1, TRICK_HOUSE_ENTRANCE, 3

	db 0 ; coord events

	db 1 ; bg events
	bg_event 5, 0, BGEVENT_UP, TrickHouseEntrance_Scroll

	db 0 ; object events
