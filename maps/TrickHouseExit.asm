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
	faceplayer
	opentext
	writetext .initial_text
	scall .select_puzzle
	clearevent EVENT_TRICK_HOUSE_SCROLL_ACTIVE
	clearevent EVENT_TRICK_HOUSE_DOOR_OPEN
	setscene SCENE_TRICKHOUSEEXIT_GOT_REWARD
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_6
	iftrue .skip_parting_message
	opentext
	writetext .parting_text
	waitbutton
	closetext
.skip_parting_message
	pause 10
	applymovement TRICKHOUSEEXIT_TRICK_MASTER, TrickHouse_DisappearingMovement
	disappear TRICKHOUSEEXIT_TRICK_MASTER
	end

.initial_text
	text "Aak! You've made it"
	line "to me?"
	cont "Hmmm<...> You're sharp!"
	prompt

.parting_text
	text "Scrub that smug"
	line "smirk from your"
	para "face! It's much too"
	line "early to think"
	cont "you've won!"

	para "I'll make new"
	line "tricks to stump"
	para "you, I will. You"
	line "may mock me only"
	cont "when you're done."

	para "Come back for the"
	line "next exciting"
	cont "installment!"
	done

.select_puzzle
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_1
	iffalse TrickHouseExit_Finished_1
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_2
	iffalse TrickHouseExit_Finished_2
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_3
	iffalse TrickHouseExit_Finished_3
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_4
	iffalse TrickHouseExit_Finished_4
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_5
	iffalse TrickHouseExit_Finished_5
	; fallthrough

TrickHouseExit_Finished_6:
	; ...
	end

TrickHouseExit_Finished_5:
	; ...
	end

TrickHouseExit_Finished_4:
	; ...
	end

TrickHouseExit_Finished_3:
	; ...
	end

TrickHouseExit_Finished_2:
	; ...
	end

TrickHouseExit_Finished_1:
	writetext .text
	writetext TrickHouseExit_EarnedRewardText
	waitbutton
	closetext
	setevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_1
	; TODO: reward
	end

.text
	text "It took me all"
	line "night to plant all"
	cont "those trees<...>"

	para "You're almost"
	line "my equal in"
	para "greatness by"
	line "one, two, three,"
	cont "four places!"
	prompt

TrickHouseExit_EarnedRewardText:
	text "Fine!"
	line "You have earned"
	cont "this reward!"
	done

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
