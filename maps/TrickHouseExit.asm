	object_const_def
	const TRICKHOUSEEXIT_TRICK_MASTER

TrickHouseExit_MapScripts:
	db 3 ; scene scripts
	scene_script TrickHouse_End ; SCENE_DEFAULT
	scene_script TrickHouse_End ; SCENE_TRICKHOUSEEXIT_LOCKED
	scene_script TrickHouse_End ; SCENE_TRICKHOUSEEXIT_GOT_REWARD

	db 0 ; callbacks

TrickHouseExit_PreventEscape:
	showemote EMOTE_SHOCK, TRICKHOUSEEXIT_TRICK_MASTER, 30
	pause 5
	turnobject TRICKHOUSEEXIT_TRICK_MASTER, LEFT
	opentext
	writetext .text
	waitbutton
	closetext
	applymovement PLAYER, .down
	pause 2
	turnobject TRICKHOUSEEXIT_TRICK_MASTER, RIGHT
	end

.text
	text "Now, now! You're"
	line "ignoring me now?"
	para "Now that, I"
	line "consider"
	cont "heartbreaking!"
	done

.down
	step DOWN
	step_end

TrickHouseExit_Lock:
	changeblock 0, 6, $40 ; scroll
	setscene SCENE_TRICKHOUSEEXIT_LOCKED
	end

TrickHouseExit_TrickMaster:
	; ...
	end

TrickHouseExit_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  1,  0, TRICK_HOUSE_HALLWAY, 1
	warp_event  7,  0, TRICK_HOUSE_PUZZLE_1, 3

	db 2 ; coord events
	coord_event  1,  1, SCENE_TRICKHOUSEEXIT_LOCKED, TrickHouseExit_PreventEscape
	coord_event  7,  1, SCENE_DEFAULT, TrickHouseExit_Lock

	db 0 ; bg events

	db 1 ; object events
	object_event  2,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TrickHouseExit_TrickMaster, -1
