	object_const_def ; object_event constants
	const VICTORYROADGATE_OFFICER1
	const VICTORYROADGATE_BLACK_BELT1
	const VICTORYROADGATE_BLACK_BELT2
	const VICTORYROADGATE_OFFICER2
	const VICTORYROADGATE_OFFICER3

VictoryRoadGate_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
.DummyScene1:
	end

VictoryRoadGateBadgeCheckSceneLeft:
	turnobject PLAYER, LEFT
	sjump VictoryRoadGateBadgeCheckScript

VictoryRoadGateBadgeCheckSceneRight:
	turnobject PLAYER, RIGHT
;fallthrough

VictoryRoadGateBadgeCheckScript:
	turnobject VICTORYROADGATE_OFFICER3, LEFT
	turnobject VICTORYROADGATE_OFFICER2, RIGHT
	opentext
	writetext ZephyrBoulderBadgeCheckText
	checkflag ENGINE_ZEPHYRBADGE
	iffalse .DontHaveBadges
	checkflag ENGINE_BOULDERBADGE
	iffalse .DontHaveBadges
	writetext HaveZephyrBoulderBadgeText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	end

.DontHaveBadges:
	writetext NoZephyrBoulderBadgeText
	waitbutton
	closetext
	applymovement PLAYER, VictoryRoadGateStepDownMovement
	end

VictoryRoadGateOfficerScript:
	faceplayer
	opentext
	writetext VictoryRoadGateOfficerText
	buttonsound
	closetext
	end

VictoryRoadGateLeftBlackBeltScript:
	jumptextfaceplayer VictoryRoadGateLeftBlackBeltText

VictoryRoadGateRightBlackBeltScript:
	jumptextfaceplayer VictoryRoadGateRightBlackBeltText

VictoryRoadGateStepDownMovement:
	step DOWN
	step_end

VictoryRoadGateOfficerText:
	text "Only trainers who"
	line "have proven them-"
	cont "selves may pass."
	done

ZephyrBoulderBadgeCheckText:
	text "Only trainers who"
	line "who posses the"

	para "ZEPHYRBADGE and"
	line "BOULDERBADGE"
	cont "may pass."
	done

NoZephyrBoulderBadgeText:
	text "You don't those"
	line "GYM BADGES."

	para "I'm sorry, but I"
	line "can't let you go"
	cont "through."
	done

HaveZephyrBoulderBadgeText:
	text "Oh! You have the"
	line "ZEPHYRBADGE and"
	cont "BOULDERBADGE!"

	para "Please, go right"
	line "on through!"
	done

VictoryRoadGateLeftBlackBeltText:
	text "This way leads to"
	line "MT.SILVER."

	para "You'll see scary-"
	line "strong #MON out"
	cont "there."
	done

VictoryRoadGateRightBlackBeltText:
	text "Off to the #MON"
	line "LEAGUE, are you?"

	para "The ELITE FOUR are"
	line "so strong it's"

	para "scary, and they're"
	line "ready for you!"
	done

VictoryRoadGate_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 17,  7, ROUTE_22, 1
	warp_event 18,  7, ROUTE_22, 1
	warp_event  9, 17, ROUTE_26, 1
	warp_event 10, 17, ROUTE_26, 1
	warp_event  9,  0, ROUTE_23, 1
	warp_event 10,  0, ROUTE_23, 2
	warp_event  1,  7, ROUTE_28, 2
	warp_event  2,  7, ROUTE_28, 2

	db 2 ; coord events
	coord_event 9, 1, SCENE_DEFAULT, VictoryRoadGateBadgeCheckSceneLeft
	coord_event 10, 1, SCENE_DEFAULT, VictoryRoadGateBadgeCheckSceneRight

	db 0 ; bg events

	db 5 ; object events
	object_event  8, 11, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateOfficerScript, -1
	object_event  7,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateLeftBlackBeltScript, EVENT_BEAT_ELITE_FOUR
	object_event 12,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateRightBlackBeltScript, EVENT_GOT_HM07_WATERFALL
	object_event  8, 1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateOfficerScript, -1
	object_event  11, 1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateOfficerScript, -1
