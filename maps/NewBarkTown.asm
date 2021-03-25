	object_const_def ; object_event constants
	const NEWBARKTOWN_TEACHER
	const NEWBARKTOWN_FISHER

NewBarkTown_MapScripts:
	db 2 ; scene scripts
	scene_script GenericDummyScript ; SCENE_DEFAULT
	scene_script GenericDummyScript ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_NEW_BARK
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	return

NewBarkTown_TeacherStopsYouScene1:
	playmusic MUSIC_MOM
	turnobject NEWBARKTOWN_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement NEWBARKTOWN_TEACHER, Movement_TeacherRunsToYou1_NBT
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow NEWBARKTOWN_TEACHER, PLAYER
	applymovement NEWBARKTOWN_TEACHER, Movement_TeacherBringsYouBack1_NBT
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

NewBarkTown_TeacherStopsYouScene2:
	playmusic MUSIC_MOM
	turnobject NEWBARKTOWN_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement NEWBARKTOWN_TEACHER, Movement_TeacherRunsToYou2_NBT
	turnobject PLAYER, UP
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow NEWBARKTOWN_TEACHER, PLAYER
	applymovement NEWBARKTOWN_TEACHER, Movement_TeacherBringsYouBack2_NBT
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

NewBarkTownTeacherScript:
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .CallMom
	checkevent EVENT_GOT_EVERSTONE_FROM_ELM
	iftrue .TellMomYoureLeaving
	checkevent EVENT_UNOWN_HATCHED
	iftrue .MonIsAdorable
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .SentYouAlone
	jumptextfaceplayer Text_GearIsImpressive

.MonIsAdorable:
	jumptextfaceplayer Text_YourMonIsAdorable

.TellMomYoureLeaving:
	jumptextfaceplayer Text_TellMomIfLeaving

.CallMom:
	jumptextfaceplayer Text_CallMomOnGear

.SentYouAlone:
	jumptextfaceplayer Text_ElmSentYouAlone

NewBarkTownFisherScript:
	jumptextfaceplayer Text_ElmDiscoveredNewMon

NewBarkTownSign:
	jumptext NewBarkTownSignText

NewBarkTownPlayersHouseSign:
	jumptext NewBarkTownPlayersHouseSignText

NewBarkTownElmsLabSign:
	jumptext NewBarkTownElmsLabSignText

NewBarkTownElmsHouseSign:
	jumptext NewBarkTownElmsHouseSignText

Movement_TeacherRunsToYou1_NBT:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

Movement_TeacherRunsToYou2_NBT:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

Movement_TeacherBringsYouBack2_NBT:
	step RIGHT
Movement_TeacherBringsYouBack1_NBT:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

Movement_SilverPushesYouAway_NBT:
	turn_head UP
	step DOWN
	step_end

Movement_SilverShovesYouOut_NBT:
	turn_head UP
	fix_facing
	jump_step DOWN
	remove_fixed_facing
	step_end

Movement_SilverReturnsToTheShadows_NBT:
	step RIGHT
	step_end

Text_GearIsImpressive:
	text "Wow, your #GEAR"
	line "is impressive!"

	para "Did your mom get"
	line "it for you?"
	done

Text_WaitPlayer:
	text "Wait, <PLAYER>!"
	done

Text_WhatDoYouThinkYoureDoing:
	text "What do you think"
	line "you're doing?"
	done

Text_ItsDangerousToGoAlone:
	text "It's dangerous to"
	line "go out without a"
	cont "#MON!"

	para "Wild #MON jump"
	line "out of the grass"
	para "on the way to the"
	line "next town."
	done

Text_YourMonIsAdorable:
	text "Oh! Your #MON"
	line "is adorable!"
	cont "I wish I had one!"
	done

Text_ElmSentYouAlone:
	text "Oh! Professor ELM"
	line "sent you out"
	cont "without a #MON?"

	para "I guess it's OK"
	line "if he says so<……>"
	done

Text_TellMomIfLeaving:
	text "Hi, <PLAYER>!"
	line "Leaving again?"

	para "You should tell"
	line "your mom if you"
	cont "are leaving."
	done

Text_CallMomOnGear:
	text "Call your mom on"
	line "your #GEAR to"
	para "let her know how"
	line "you're doing."
	done

Text_ElmDiscoveredNewMon:
	text "Yo, <PLAYER>!"

	para "I hear PROF.ELM"
	line "discovered some"
	cont "new #MON."
	done

NewBarkTownRivalText1:
	text "<……>"

	para "So this is the"
	line "famous ELM #MON"
	cont "LAB…"
	done

NewBarkTownRivalText2:
	text "…What are you"
	line "staring at?"
	done

NewBarkTownSignText:
	text "NEW BARK TOWN"

	para "The Town Where the"
	line "Winds of a New"
	cont "Beginning Blow"
	done

NewBarkTownPlayersHouseSignText:
	text "<PLAYER>'s House"
	done

NewBarkTownElmsLabSignText:
	text "ELM #MON LAB"
	done

NewBarkTownElmsHouseSignText:
	text "ELM'S HOUSE"
	done

NewBarkTown_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  6,  3, ELMS_LAB, 1
	warp_event 13,  5, PLAYERS_HOUSE_1F, 1
	warp_event  3, 11, PLAYERS_NEIGHBORS_HOUSE, 1
	warp_event 11, 13, ELMS_HOUSE, 1

	db 2 ; coord events
	coord_event  1,  8, SCENE_DEFAULT, NewBarkTown_TeacherStopsYouScene1
	coord_event  1,  9, SCENE_DEFAULT, NewBarkTown_TeacherStopsYouScene2

	db 4 ; bg events
	bg_event  8,  8, BGEVENT_READ, NewBarkTownSign
	bg_event 11,  5, BGEVENT_READ, NewBarkTownPlayersHouseSign
	bg_event  3,  3, BGEVENT_READ, NewBarkTownElmsLabSign
	bg_event  9, 13, BGEVENT_READ, NewBarkTownElmsHouseSign

	db 2 ; object events
	object_event  6,  8, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownTeacherScript, -1
	object_event 12,  9, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NewBarkTownFisherScript, -1
