	object_const_def
	const TRICKHOUSEEXIT_TRICK_MASTER

TrickHouseExit_MapScripts:
	db 3 ; scene scripts
	scene_script .lock ; SCENE_DEFAULT
	scene_script TrickHouse_End ; SCENE_TRICKHOUSEEXIT_LOCKED
	scene_script TrickHouse_End ; SCENE_TRICKHOUSEEXIT_GOT_REWARD

	db 0 ; callbacks

.lock
	applymovement PLAYER, TrickHouseExit_PushDownMovement
	setscene SCENE_TRICKHOUSEEXIT_LOCKED
	clearevent EVENT_TRICK_HOUSE_FOUND_PUZZLE_SCROLL
	end

TrickHouseExit_PreventEscape:
	showemote EMOTE_SHOCK, TRICKHOUSEEXIT_TRICK_MASTER, 30
	pause 5
	turnobject TRICKHOUSEEXIT_TRICK_MASTER, UP
	opentext
	writetext .text
	waitbutton
	closetext
	applymovement PLAYER, TrickHouseExit_PushDownMovement
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

TrickHouseExit_PushDownMovement:
	step DOWN
	step_end

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
	readvar VAR_YCOORD
	ifnotequal 4, .no_stepping_aside
	showemote EMOTE_SHOCK, PLAYER, 20
	pause 5
	applymovement PLAYER, .step_aside
.no_stepping_aside
	playsound SFX_EGG_BOMB
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

.step_aside
	fast_slide_step LEFT
	fast_slide_step DOWN
	turn_step RIGHT
	step_end

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
	writetext .after_puzzle_text
	waitbutton
	closetext
	pause 5
	scall .face_away
	opentext
	writetext .defeated_text
	waitbutton
	closetext
	pause 5
	faceobject TRICKHOUSEEXIT_TRICK_MASTER, PLAYER
	opentext
	writetext .reward_text
	waitbutton
	closetext
	setevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_6
	givedecoration DECO_GOLD_TROPHY_DOLL
	jumptext .leaving_text

.after_puzzle_text
	text "It took me all"
	line "night polishing"
	cont "floors<...>"

	para "You're above me in"
	line "greatness!"
	cont "Possibly<...>"
	prompt

.defeated_text
	text "Wh-what should I"
	line "do? My fountain of"
	para "ideas for tricks"
	line "has run dry<...>"

	para "Perhaps it is time"
	line "I toured the"
	para "country on a quest"
	line "to devise new"
	cont "tricks<...>"
	done

.reward_text
	text "I hate to admit"
	line "defeat, but you"
	cont "have bested me!"

	para "Still, you must"
	line "have been reeled"
	para "in by my charisma"
	line "for you to visit"
	para "me again and"
	line "again. Yes, you"
	cont "must have!"

	para "But that has"
	line "nothing to do with"
	cont "my losing!"

	para "In recognition of"
	line "the friendship"
	para "between you, the"
	line "driven, and the"
	para "genius that is"
	line "myself, I demand"
	para "that you take this"
	line "keepsake!"
	done

.leaving_text
	text "<...> <...> <...> <...> <...> <...>"

	para "I am leaving on a"
	line "journey of"
	para "discovery. A quest"
	line "in search of new"
	cont "tricks."

	para "I wish that you"
	line "will one day visit"
	para "and entertain me"
	line "again."

	para "And now, farewell!"
	done

.face_away
	readvar VAR_FACING
	assert !DOWN
	iffalse .face_up
	ifequal UP, .face_down
	turnobject TRICKHOUSEEXIT_TRICK_MASTER, RIGHT
	end

.face_up
	turnobject TRICKHOUSEEXIT_TRICK_MASTER, UP
	end

.face_down
	turnobject TRICKHOUSEEXIT_TRICK_MASTER, DOWN
	end

TrickHouseExit_Finished_5:
	writetext .text
	writetext TrickHouseExit_EarnedRewardText
	waitbutton
	closetext
	setevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_5
	givedecoration DECO_PIKACHU_BED
	end

.text
	text "It took me all"
	line "night setting up"
	cont "arrows<...>"

	para "You're my equal"
	line "in greatness!"
	prompt

TrickHouseExit_Finished_4:
	writetext .text
	writetext TrickHouseExit_EarnedRewardText
	waitbutton
	closetext
	setevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_4
	givedecoration DECO_N64
	end

.text
	text "It took me all"
	line "night to prepare"
	cont "the teleporters<...>"

	para "You're almost my"
	line "equal in"
	cont "greatness!"
	prompt

TrickHouseExit_Finished_3:
	writetext .text
	writetext TrickHouseExit_EarnedRewardText
	waitbutton
	closetext
	setevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_3
	givedecoration DECO_BLUE_CARPET
	end

.text
	text "It took me all"
	line "night to shove in"
	cont "those boulders<...>"

	para "You're almost my"
	line "equal in greatness"
	para "by one, two"
	line "places!"
	prompt

TrickHouseExit_Finished_2:
	writetext .text
	writetext TrickHouseExit_EarnedRewardText
	waitbutton
	closetext
	setevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_2
	givedecoration DECO_BIG_SNORLAX_DOLL
	end

.text
	text "It took me all"
	line "night to make the"
	cont "maze<...>"

	para "You're almost my"
	line "equal in greatness"
	para "by one, two,"
	line "three places!"
	prompt

TrickHouseExit_Finished_1:
	writetext .text
	writetext TrickHouseExit_EarnedRewardText
	waitbutton
	closetext
	setevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_1
	givedecoration DECO_UNOWN_DOLL
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

	db 1 ; coord events
	coord_event  1,  1, SCENE_TRICKHOUSEEXIT_LOCKED, TrickHouseExit_PreventEscape

	db 0 ; bg events

	db 1 ; object events
	object_event  2,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TrickHouseExit_TrickMaster, -1
