TrickHouseHallway_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .set_flag

.set_flag
	setevent EVENT_TRICK_HOUSE_EXITING_PUZZLE
	return

TrickHouseHallway_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
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

TrickHouse_Door:
	; returns with text open if the door unlocks!
	checkevent EVENT_TRICK_HOUSE_DOOR_OPEN
	iftrue .nothing
	playsound SFX_READ_TEXT_2
	waitsfx
	checkevent EVENT_TRICK_HOUSE_FOUND_PUZZLE_SCROLL
	iffalse .locked
	setevent EVENT_TRICK_HOUSE_DOOR_OPEN
	opentext
	writetext .unlock_text
	end

.nothing
	setval FALSE
	end

.locked
	jumptext .locked_text

.locked_text
	text "The door is"
	line "locked."

	para "<...>On closer"
	line "inspection, this"
	cont "is written on it:"

	para "Write the secret"
	line "code here."
	done

.unlock_text
	text "<PLAYER> wrote down"
	line "the secret code on"
	cont "the door:"
	prompt

TrickHouse_DoorUnlockText:
	text "<...> <...> <...> <...> <...> <...>"

	para "The lock clicked"
	line "open!"
	done

; All Trick House maps have the door block at 12, 0, so these can live here
; If a Trick House map doesn't have the door at 12, 0, it should have its own version of these
TrickHouse_CheckDoor_Common:
	checkevent EVENT_TRICK_HOUSE_DOOR_OPEN
	iffalse .return
	changeblock 12, 0, $43 ; exit door open
.return
	return

TrickHouse_UnlockDoor_Common:
	writetext TrickHouse_DoorUnlockText
	playsound SFX_DEX_FANFARE_50_79
	waitsfx
	changeblock 12, 0, $43 ; exit door open
	reloadmappart ; This works fine
	end
