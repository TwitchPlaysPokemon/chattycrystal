	object_const_def ; object_event constants
	const VERMILIONPORT_SAILOR1
	const VERMILIONPORT_SAILOR2
	const VERMILIONPORT_SUPER_NERD

VermilionPort_MapScripts:
	db 2 ; scene scripts
	scene_script GenericDummyScript ; SCENE_DEFAULT
	scene_script .LeaveFastShip ; SCENE_VERMILIONPORT_LEAVE_SHIP

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.LeaveFastShip:
	prioritysjump .LeaveFastShipScript
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_VERMILION
	return

.LeaveFastShipScript:
	applymovement PLAYER, VermilionPortLeaveShipMovement
	appear VERMILIONPORT_SAILOR1
	setscene SCENE_DEFAULT
	setevent EVENT_FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN_TWIN_1
	setevent EVENT_FAST_SHIP_CABINS_SE_SSE_GENTLEMAN
	setevent EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	clearevent EVENT_OLIVINE_PORT_PASSAGE_POKEFAN_M
	setevent EVENT_FAST_SHIP_FIRST_TIME
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	blackoutmod VERMILION_CITY
	end

VermilionPortSailorAtGangwayScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue VermilionPortAlreadyRodeScript
	writetext VermilionPortGetOnBoardText
	waitbutton
	closetext
	turnobject VERMILIONPORT_SAILOR1, DOWN
	pause 10
	playsound SFX_EXIT_BUILDING
	disappear VERMILIONPORT_SAILOR1
	waitsfx
	applymovement PLAYER, VermilionPortEnterShipMovement
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	setevent EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	clearevent EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	clearevent EVENT_BEAT_POKEMANIAC_ETHAN
	clearevent EVENT_BEAT_BURGLAR_COREY
	clearevent EVENT_BEAT_BUG_CATCHER_KEN
	clearevent EVENT_BEAT_GUITARIST_CLYDE
	clearevent EVENT_BEAT_POKEFANM_JEREMY
	clearevent EVENT_BEAT_POKEFANF_GEORGIA
	clearevent EVENT_BEAT_SAILOR_KENNETH
	clearevent EVENT_BEAT_TEACHER_SHIRLEY
	clearevent EVENT_BEAT_SCHOOLBOY_NATE
	clearevent EVENT_BEAT_SCHOOLBOY_RICKY
	setevent EVENT_FAST_SHIP_DESTINATION_OLIVINE
	appear VERMILIONPORT_SAILOR1
	setmapscene FAST_SHIP_1F, SCENE_FASTSHIP1F_ENTER_SHIP
	warp FAST_SHIP_1F, 25, 1
	end

VermilionPortAlreadyRodeScript:
	writetext VermilionPortCantBoardNowText
	waitbutton
	closetext
	end

VermilionPortWalkUpToShipScript:
	turnobject VERMILIONPORT_SAILOR2, RIGHT
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue GenericDummyScript
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue GenericDummyScript
	turnobject PLAYER, LEFT
	opentext
	writetext VermilionPortWillYouBoardText
	yesorno
	iffalse VermilionPortNotRidingMoveAwayScript
	writetext VermilionPortRequestTicketText
	buttonsound
	checkitem S_S_TICKET
	iffalse .NoTicket
	writetext VermilionPortSSTicketText
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	applymovement PLAYER, VermilionPortWalkToShipMovement
	sjump VermilionPortSailorAtGangwayScript

.NoTicket:
	writetext VermilionPortNoTicketText
	waitbutton
	closetext
	applymovement PLAYER, VermilionPortStepBackMovement
	end

VermilionPortNotRidingScript:
	writetext VermilionPortHopeToSeeYouAgainText
	waitbutton
	closetext
	end

VermilionPortNotRidingMoveAwayScript:
	writetext VermilionPortHopeToSeeYouAgainText
	waitbutton
	closetext
	applymovement PLAYER, VermilionPortStepBackMovement
	end

VermilionPortSailorScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue VermilionPortAlreadyRodeScript
	writetext VermilionPortWillYouBoardText
	yesorno
	iffalse VermilionPortNotRidingScript
	writetext VermilionPortRequestTicketText
	buttonsound
	checkitem S_S_TICKET
	iffalse .NoTicket
	writetext VermilionPortSSTicketText
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	applymovement PLAYER, VermilionPortWalkToShipAroundSailorMovement
	sjump VermilionPortSailorAtGangwayScript

.NoTicket:
	writetext VermilionPortNoTicketText
	waitbutton
	closetext
	end

VermilionPortSuperNerdScript:
	jumptextfaceplayer .text

.text
	text "You came from"
	line "JOHTO?"

	para "I hear many rare"
	line "#MON live over"
	cont "there."
	done

VermilionPortHiddenIron:
	hiddenitem IRON, EVENT_VERMILION_PORT_HIDDEN_IRON

VermilionPortLeaveShipMovement:
	step UP
	step_end

VermilionPortStepBackMovement:
	step RIGHT
	turn_head LEFT
	step_end

VermilionPortWalkToShipAroundSailorMovement:
	step RIGHT
	step DOWN
VermilionPortWalkToShipMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
VermilionPortEnterShipMovement:
	step DOWN
	step_end

VermilionPortGetOnBoardText:
	text "We're departing"
	line "soon. Please get"
	cont "on board."
	done

VermilionPortCantBoardNowText:
	text "Sorry. You can't"
	line "board now."
	done

VermilionPortWillYouBoardText:
	text "Welcome to FAST"
	line "SHIP S.S.AQUA."

	para "Will you be"
	line "boarding today?"
	done

VermilionPortRequestTicketText:
	text "May I see your"
	line "S.S.TICKET?"
	done

VermilionPortHopeToSeeYouAgainText:
	text "We hope to see you"
	line "again!"
	done

VermilionPortSSTicketText:
	text "<PLAYER> flashed"
	line "the S.S.TICKET."

	para "That's it."
	line "Thank you!"
	done

VermilionPortNoTicketText:
	text "<PLAYER> tried to"
	line "show the S.S."
	cont "TICKET…"

	para "…But no TICKET!"

	para "Sorry!"
	line "You may board only"

	para "if you have an"
	line "S.S.TICKET."
	done

VermilionPort_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  8,  4, VERMILION_CITY, 8
	warp_event  7, 17, FAST_SHIP_1F, 1
	warp_event  9,  4, VERMILION_CITY, 9

	db 1 ; coord events
	coord_event  7, 11, SCENE_DEFAULT, VermilionPortWalkUpToShipScript

	db 1 ; bg events
	bg_event 16, 13, BGEVENT_ITEM, VermilionPortHiddenIron

	db 3 ; object events
	object_event  7, 17, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPortSailorAtGangwayScript, EVENT_VERMILION_PORT_SAILOR_AT_GANGWAY
	object_event  6, 11, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPortSailorScript, -1
	object_event 11, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPortSuperNerdScript, -1
