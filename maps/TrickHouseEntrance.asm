	; temporary event flags
	const_def
	const TRICKHOUSEEVENT_PUZZLE_READY
	const TRICKHOUSEEVENT_PUZZLE_FINISHED

TrickHouseEntrance_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .check_ready

.check_ready
	checkevent EVENT_TRICK_HOUSE_SCROLL_ACTIVE
	iftrue .active
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
.active
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
	checkevent EVENT_TRICK_HOUSE_SCROLL_ACTIVE
	iffalse .not_active
	opentext
	writetext .big_hole_text
	yesorno
	closetext
	iffalse .end
	changeblock 4, 0, $41 ; open door
	reloadmappart
	pause 10
	applymovement PLAYER, .movement
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

.movement
	step UP
	remove_object
	step_end

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

TrickHouseEntrance_PrepareTrickMasterReveal:
	playsound SFX_READ_TEXT_2
	waitsfx
	showemote EMOTE_SHOCK, PLAYER, 30
	pause 5
	opentext
	end

TrickHouseEntrance_HidingSpot_1:
	checkevent TRICKHOUSEEVENT_PUZZLE_READY
	iffalse TrickHouseEntrance_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_1
	iftrue TrickHouseEntrance_End
	scall TrickHouseEntrance_PrepareTrickMasterReveal
	writetext .text
	sjump TrickHouseEntrance_DoTrickMasterReveal

.text
	text "Hah? Grrr<...>"

	para "How did you know I"
	line "concealed myself"
	para "beneath this desk?"
	line "You're sharp!"
	prompt

TrickHouseEntrance_HidingSpot_2:
	checkevent TRICKHOUSEEVENT_PUZZLE_READY
	iffalse TrickHouseEntrance_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_1
	iffalse TrickHouseEntrance_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_2
	iftrue TrickHouseEntrance_End
	scall TrickHouseEntrance_PrepareTrickMasterReveal
	writetext .text
	sjump TrickHouseEntrance_DoTrickMasterReveal

.text
	text "Hah? Grrr<...>"

	para "How did you know I"
	line "concealed myself"
	para "behind this tree?"
	line "You're sharp!"
	prompt

TrickHouseEntrance_HidingSpot_3:
	checkevent TRICKHOUSEEVENT_PUZZLE_READY
	iffalse TrickHouseEntrance_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_2
	iffalse TrickHouseEntrance_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_3
	iftrue TrickHouseEntrance_End
	scall TrickHouseEntrance_PrepareTrickMasterReveal
	writetext .text
	sjump TrickHouseEntrance_DoTrickMasterReveal

.text
	text "Hah? Grrr<...>"

	para "How did you know I"
	line "concealed myself"
	para "in this dresser?"
	line "You're sharp!"
	prompt

TrickHouseEntrance_HidingSpot_4:
	checkevent TRICKHOUSEEVENT_PUZZLE_READY
	iffalse TrickHouseEntrance_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_3
	iffalse TrickHouseEntrance_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_4
	iftrue TrickHouseEntrance_End
	scall TrickHouseEntrance_PrepareTrickMasterReveal
	writetext .text
	sjump TrickHouseEntrance_DoTrickMasterReveal

.text
	text "Hah? Grrr<...>"

	para "How did you know I"
	line "concealed myself"
	para "beyond this"
	line "window?"
	cont "You're sharp!"
	prompt

TrickHouseEntrance_HidingSpot_5:
	checkevent TRICKHOUSEEVENT_PUZZLE_READY
	iffalse TrickHouseEntrance_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_4
	iffalse TrickHouseEntrance_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_5
	iftrue TrickHouseEntrance_End
	scall TrickHouseEntrance_PrepareTrickMasterReveal
	writetext .text
	sjump TrickHouseEntrance_DoTrickMasterReveal

.text
	text "Hah? Grrr<...>"

	para "How did you know I"
	line "concealed myself"
	para "in this cupboard?"
	line "You're sharp!"
	prompt

TrickHouseEntrance_HidingSpot_6:
	checkevent TRICKHOUSEEVENT_PUZZLE_READY
	iffalse TrickHouseEntrance_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_5
	iffalse TrickHouseEntrance_End
	scall TrickHouseEntrance_PrepareTrickMasterReveal
	writetext TrickHouseEntrance_HidingSpot_6_Text
TrickHouseEntrance_DoTrickMasterReveal:
	closetext
	; TODO: close text, warp, show Trick Master, etc.
	clearevent TRICKHOUSEEVENT_PUZZLE_READY
	setevent EVENT_TRICK_HOUSE_SCROLL_ACTIVE
TrickHouseEntrance_End:
	end

TrickHouseEntrance_HidingSpot_6_Text:
	text "Hah? Grrr<...>"

	para "How did you know I"
	line "concealed myself"
	para "beneath this"
	line "cushion?"
	cont "You're sharp!"
	prompt

TrickHouseEntrance_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  5,  7, VIRIDIAN_CITY, 3
	warp_event  6,  7, VIRIDIAN_CITY, 3
	warp_event  5,  1, TRICK_HOUSE_ENTRANCE, 3

	db 0 ; coord events

	db 7 ; bg events
	bg_event  5,  0, BGEVENT_UP, TrickHouseEntrance_Scroll
	bg_event  6,  3, BGEVENT_SILENT, TrickHouseEntrance_HidingSpot_1
	bg_event 11,  5, BGEVENT_SILENT, TrickHouseEntrance_HidingSpot_2
	bg_event 10,  1, BGEVENT_SILENT, TrickHouseEntrance_HidingSpot_3
	bg_event  3,  0, BGEVENT_SILENT, TrickHouseEntrance_HidingSpot_4
	bg_event  9,  1, BGEVENT_SILENT, TrickHouseEntrance_HidingSpot_5
	bg_event  4,  4, BGEVENT_SILENT, TrickHouseEntrance_HidingSpot_6

	db 0 ; object events
