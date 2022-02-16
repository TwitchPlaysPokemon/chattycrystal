	object_const_def ; object_event constants
	const WISETRIOSROOM_SAGE1
	const WISETRIOSROOM_SAGE2
	const WISETRIOSROOM_SAGE3
	const WISETRIOSROOM_SAGE4
	const WISETRIOSROOM_SAGE5
	const WISETRIOSROOM_SAGE6

WiseTriosRoom_MapScripts:
	db 2 ; scene scripts
	scene_script GenericDummyScript ; SCENE_DEFAULT
	scene_script GenericDummyScript ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .WiseTrioCallback

.WiseTrioCallback:
	checkevent EVENT_FOUGHT_SUICUNE
	iftrue .NoWiseTrio
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue .WiseTrio2
	checkitem CLEAR_BELL
	iftrue .WiseTrio2
	clearevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	return

.WiseTrio2:
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	clearevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	return

.NoWiseTrio:
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	return

WiseTriosRoomSage1Script:
	jumptextfaceplayer WiseTriosRoomSage1Text

WiseTriosRoomSage2Script:
	jumptextfaceplayer WiseTriosRoomSage2Text

WiseTriosRoomSage3Script:
	jumptextfaceplayer WiseTriosRoomSage3Text

WiseTriosRoom_CannotEnterTinTowerScript:
	turnobject WISETRIOSROOM_SAGE3, UP
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, WISETRIOSROOM_SAGE3, 20
	follow PLAYER, WISETRIOSROOM_SAGE3
	applymovement PLAYER, WiseTriosRoom_Movement_PushPlayerAway
	stopfollow
	turnobject PLAYER, RIGHT
	opentext
	writetext WiseTriosRoomSage3BlocksExitText
	waitbutton
	closetext
	applymovement WISETRIOSROOM_SAGE3, WiseTriosRoom_Movement_WalkBack
	turnobject WISETRIOSROOM_SAGE3, LEFT
	end

TrainerSageGaku:
	trainer RED, AAAAAAA_RACE, EVENT_BEAT_SAGE_GAKU, SageGakuSeenText, SageGakuBeatenText, 0, .Script

.Script:
	jumptext SageGakuAfterBattleText

TrainerSageMasa:
	trainer BLUE_RED, AAAA, EVENT_BEAT_SAGE_MASA, SageMasaSeenText, SageMasaBeatenText, 0, .Script

.Script:
	jumptext SageMasaAfterBattleText

TrainerSageKoji:
	trainer GREEN_RED, B_RACE, EVENT_BEAT_SAGE_KOJI, SageKojiSeenText, SageKojiBeatenText, 0, .Script

.Script:
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue .KojiAllowsPassage
	pause 10
	showemote EMOTE_SHOCK, WISETRIOSROOM_SAGE6, 20
	opentext
	writetext SageKojiAfterBattleQuestionText
	buttonsound
	writetext SageKojiAfterBattleSpeechText
	waitbutton
	closetext
	applymovement WISETRIOSROOM_SAGE6, WiseTriosRoom_Movement_WalkBack
	turnobject WISETRIOSROOM_SAGE6, UP
	setevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	setscene SCENE_FINISHED
	end

.KojiAllowsPassage:
	jumptext SageKojiAfterBattleFinalText

WiseTriosRoom_Movement_PushPlayerAway:
	step LEFT
	step LEFT
	step_end

WiseTriosRoom_Movement_WalkBack:
	step RIGHT
	step DOWN
	step_end

WiseTriosRoomSage1Text:
	text "Astounding…"

	para "SUICUNE, ENTEI and"
	line "RAIKOU have arisen"
	cont "from their sleep…"

	para "Is the legend"
	line "coming true?"
	done

WiseTriosRoomSage2Text:
	text "We train at the"
	line "BURNED TOWER, but"
	para "we've never heard"
	line "of a hole opening"
	para "up there before."
	line "It must have been"
	para "deliberately made"
	line "by someone."
	done

WiseTriosRoomSage3BlocksExitText:
	text "TIN TOWER may be"
	line "entered by those"
	para "bearing ECRUTEAK's"
	line "GYM BADGE."

	para "However, now that"
	line "SUICUNE, RAIKOU"
	para "and ENTEI have"
	line "arisen, I ask you"
	para "to refrain from"
	line "entering!"
	done

WiseTriosRoomSage3Text:
	text "We, the WISE TRIO,"
	line "are the protectors"
	para "of the legendary"
	line "#MON."
	done

SageGakuSeenText:
	text "..."
	done

SageGakuBeatenText:
	text "..."
	done

SageGakuAfterBattleText:
	text "..."
	done

SageMasaSeenText:
	text "..."
	done

SageMasaBeatenText:
	text "..."
	done

SageMasaAfterBattleText:
	text "..."
	done

SageKojiSeenText:
	text "..."
	done

SageKojiBeatenText:
	text "..."
	done

SageKojiAfterBattleQuestionText:
	text "..."
	done

SageKojiAfterBattleSpeechText:
	text "..."
	done

SageKojiAfterBattleFinalText:
	text "..."
	done

WiseTriosRoom_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  7,  4, ECRUTEAK_CITY, 4
	warp_event  7,  5, ECRUTEAK_CITY, 5
	warp_event  1,  4, ECRUTEAK_TIN_TOWER_ENTRANCE, 5

	db 1 ; coord events
	coord_event  7,  4, SCENE_DEFAULT, WiseTriosRoom_CannotEnterTinTowerScript

	db 0 ; bg events

	db 6 ; object events
	object_event  6,  2, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WiseTriosRoomSage1Script, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	object_event  6,  7, SPRITE_SAGE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WiseTriosRoomSage2Script, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	object_event  7,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WiseTriosRoomSage3Script, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	object_event  4,  2, SPRITE_RED, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerSageGaku, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	object_event  4,  6, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerSageMasa, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	object_event  6,  4, SPRITE_RED, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerSageKoji, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
