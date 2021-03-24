	object_const_def ; object_event constants
	const FASTSHIP1F_SAILOR1
	const FASTSHIP1F_SAILOR2
	const FASTSHIP1F_SAILOR3
	const FASTSHIP1F_GENTLEMAN

FastShip1F_MapScripts:
	db 3 ; scene scripts
	scene_script GenericDummyScript ; SCENE_DEFAULT
	scene_script .EnterFastShip ; SCENE_FASTSHIP1F_ENTER_SHIP
	scene_script GenericDummyScript ; SCENE_FASTSHIP1F_MEET_GRANDPA

	db 0 ; callbacks

.EnterFastShip:
	prioritysjump .EnterFastShipScript
	end

.EnterFastShipScript:
	applymovement FASTSHIP1F_SAILOR1, FastShip1F_Movement_SailorStepLeft
	applymovement PLAYER, .walk_in
	applymovement FASTSHIP1F_SAILOR1, .sailor_step_in
	pause 30
	playsound SFX_BOAT
	earthquake 30
	blackoutmod FAST_SHIP_CABINS_SW_SSW_NW
	clearevent EVENT_FAST_SHIP_HAS_ARRIVED
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iftrue .SkipGrandpa
	setscene SCENE_FASTSHIP1F_MEET_GRANDPA
	end

.SkipGrandpa:
	setscene SCENE_DEFAULT
	end

.walk_in
	step DOWN
	step DOWN
	turn_head DOWN
	step_end

.sailor_step_in
	slow_step RIGHT
	turn_head DOWN
	step_end

FastShip1FSailor1Script:
	checkevent EVENT_FAST_SHIP_HAS_ARRIVED
	iftrue FastShip1F_ShipArrived
	checkevent EVENT_FAST_SHIP_DESTINATION_OLIVINE
	iftrue .Olivine
	jumptextfaceplayer FastShip1FSailor1Text_ToVermilion

.Olivine:
	jumptextfaceplayer FastShip1FSailor1Text_ToOlivine

FastShip1F_ShipArrived:
	faceplayer
	opentext
	checkevent EVENT_FAST_SHIP_DESTINATION_OLIVINE
	iftrue .Olivine
	writetext FastShip1FSailor1Text_InVermilion
	waitbutton
	closetext
	scall .LetThePlayerOut
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	setevent EVENT_VERMILION_PORT_SAILOR_AT_GANGWAY
	setmapscene VERMILION_PORT, SCENE_VERMILIONPORT_LEAVE_SHIP
	warp VERMILION_PORT, 7, 17
	end

.Olivine:
	writetext FastShip1FSailor1Text_InOlivine
	waitbutton
	closetext
	scall .LetThePlayerOut
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	setevent EVENT_OLIVINE_PORT_SAILOR_AT_GANGWAY
	setmapscene OLIVINE_PORT, SCENE_OLIVINEPORT_LEAVE_SHIP
	warp OLIVINE_PORT, 7, 23
	end

.LetThePlayerOut:
	readvar VAR_FACING
	ifequal RIGHT, .YouAreFacingRight
	applymovement FASTSHIP1F_SAILOR1, FastShip1F_Movement_SailorStepLeft
	applymovement PLAYER, .walk_out
	end

.YouAreFacingRight:
	applymovement FASTSHIP1F_SAILOR1, .sailor_step_down
	applymovement PLAYER, .walk_right_out
	end

.sailor_step_down
	slow_step DOWN
	turn_head UP
	step_end

.walk_out
	step UP
	step UP
	step_end

.walk_right_out
	step RIGHT
	step UP
	step_end

FastShip1F_Movement_SailorStepLeft:
	slow_step LEFT
	turn_head RIGHT
	step_end

FastShip1FSailor2Script:
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iftrue .Vermilion
	jumptextfaceplayer FastShip1FSailor2Text_FirstTime

.Vermilion:
	jumptextfaceplayer FastShip1FSailor2Text

FastShip1FSailor3Script:
	jumptextfaceplayer FastShip1FSailor3Text

WorriedGrandpaSceneRight:
	moveobject FASTSHIP1F_GENTLEMAN, 20, 6
WorriedGrandpaSceneLeft:
	appear FASTSHIP1F_GENTLEMAN
	applymovement FASTSHIP1F_GENTLEMAN, .bump_into_player
	playsound SFX_TACKLE
	applymovement PLAYER, .fall_back
	applymovement FASTSHIP1F_GENTLEMAN, .walk_to_player
	opentext
	writetext FastShip1FGrandpaText
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement FASTSHIP1F_GENTLEMAN, .exit
	disappear FASTSHIP1F_GENTLEMAN
	setscene SCENE_DEFAULT
	end

.bump_into_player
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step_end

.fall_back
	big_step RIGHT
	turn_head LEFT
	step_end

.walk_to_player
	step RIGHT
	step_end

.exit
	big_step DOWN
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end

FastShip1FSailor1Text_ToVermilion:
	text "FAST SHIP S.S.AQUA"
	line "is en route to"
	cont "VERMILION CITY."

	para "We will make an"
	line "announcement when"
	cont "we arrive."
	done

FastShip1FSailor1Text_ToOlivine:
	text "FAST SHIP S.S.AQUA"
	line "is en route to"
	cont "OLIVINE CITY."

	para "We will make an"
	line "announcement when"
	cont "we arrive."
	done

FastShip1FSailor2Text_FirstTime:
	text "Here's your cabin."

	para "If your #MON"
	line "are hurt, take a"
	cont "nap in the bed."

	para "That will heal"
	line "them."
	done

FastShip1FSailor2Text:
	text "Here's your cabin."

	para "You can heal your"
	line "#MON by taking"
	cont "a nap in the bed."

	para "The ship will"
	line "arrive while"
	cont "you're sleeping."
	done

FastShip1FSailor3Text:
	text "The passengers are"
	line "all trainers."

	para "They're all itch-"
	line "ing to battle in"
	cont "their cabins."
	done

FastShip1FGrandpaText:
	text "Whoa! Excuse me."
	line "I was in a hurry!"

	para "My granddaughter"
	line "is missing!"

	para "She's just a wee"
	line "girl. If you see"
	para "her, please let me"
	line "know!"
	done

FastShip1FSailor1Text_InOlivine:
	text "FAST SHIP S.S.AQUA"
	line "has arrived in"
	cont "OLIVINE CITY."
	done

FastShip1FSailor1Text_InVermilion:
	text "FAST SHIP S.S.AQUA"
	line "has arrived in"
	cont "VERMILION CITY."
	done

FastShip1F_MapEvents:
	db 0, 0 ; filler

	db 12 ; warp events
	warp_event 25,  1, FAST_SHIP_1F, -1
	warp_event 27,  8, FAST_SHIP_CABINS_NNW_NNE_NE, 1
	warp_event 23,  8, FAST_SHIP_CABINS_NNW_NNE_NE, 2
	warp_event 19,  8, FAST_SHIP_CABINS_NNW_NNE_NE, 3
	warp_event 15,  8, FAST_SHIP_CABINS_SW_SSW_NW, 1
	warp_event 15, 15, FAST_SHIP_CABINS_SW_SSW_NW, 2
	warp_event 19, 15, FAST_SHIP_CABINS_SW_SSW_NW, 4
	warp_event 23, 15, FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN, 1
	warp_event 27, 15, FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN, 3
	warp_event  3, 13, FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN, 5
	warp_event  6, 12, FAST_SHIP_B1F, 1
	warp_event 30, 14, FAST_SHIP_B1F, 2

	db 2 ; coord events
	coord_event 24,  6, SCENE_FASTSHIP1F_MEET_GRANDPA, WorriedGrandpaSceneLeft
	coord_event 25,  6, SCENE_FASTSHIP1F_MEET_GRANDPA, WorriedGrandpaSceneRight

	db 0 ; bg events

	db 4 ; object events
	object_event 25,  2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShip1FSailor1Script, -1
	object_event 14,  7, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShip1FSailor2Script, -1
	object_event 22, 17, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShip1FSailor3Script, -1
	object_event 19,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INITIALIZED_EVENTS
