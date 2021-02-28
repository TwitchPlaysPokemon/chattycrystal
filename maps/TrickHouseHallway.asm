TrickHouseHallway_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrickHouseHallway_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 10,  3, TRICK_HOUSE_EXIT, 1
	warp_event 11,  3, TRICK_HOUSE_EXIT, 1
	warp_event  4, 19, TRICK_HOUSE_ENTRANCE, 3
	warp_event  5, 19, TRICK_HOUSE_ENTRANCE, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

; Common scripts for all Trick House maps. The hallway file is nearly empty, and thus a good place for them.

TrickHouse_FoundPuzzleScroll:
	checkevent EVENT_TRICK_HOUSE_FOUND_PUZZLE_SCROLL
	iftrue .found
	opentext
	writetext .scroll_text
	playsound SFX_ITEM
	waitsfx
	writetext .memorized_text
	waitbutton
	closetext
	setevent EVENT_TRICK_HOUSE_FOUND_PUZZLE_SCROLL
	end

.scroll_text
	text "<PLAYER> found a"
	line "scroll!"
	done

.memorized_text
	text "<PLAYER> memorized"
	line "the secret code"
	para "written on the"
	line "scroll."
	done

.found
	jumptext .found_text

.found_text
	text "A secret code is"
	line "written on it."
	done
