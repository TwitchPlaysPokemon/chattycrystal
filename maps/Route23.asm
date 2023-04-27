	object_const_def ; object_event constants
	const ROUTE_23_CASCADE_OFFICER
	const ROUTE_23_THUNDER_OFFICER
	const ROUTE_23_RAINBOW_OFFICER1
	const ROUTE_23_RAINBOW_OFFICER2
	const ROUTE_23_MARSH_SWIMMER1
	const ROUTE_23_MARSH_SWIMMER2
	const ROUTE_23_SOUL_OFFICER
	const ROUTE_23_VOLCANO_OFFICER
	const ROUTE_23_EARTH_OFFICER1
	const ROUTE_23_EARTH_OFFICER2

Route23_MapScripts:
	db 8 ; scene scripts
	scene_script GenericDummyScript ; SCENE_DEFAULT
	scene_script GenericDummyScript ; SCENE_SHOWN_CASCADE
	scene_script GenericDummyScript ; SCENE_SHOWN_THUNDER
	scene_script GenericDummyScript ; SCENE_SHOWN_RAINBOW
	scene_script GenericDummyScript ; SCENE_SHOWN_MARSH
	scene_script GenericDummyScript ; SCENE_SHOWN_SOUL
	scene_script GenericDummyScript ; SCENE_SHOWN_VOLCANO
	scene_script GenericDummyScript ; SCENE_SHOWN_EARTH

	db 0 ; callbacks

BadgeCheckNPCScript:
	jumptextfaceplayer BadgeCheckNPCText

CascadeHiveBadgeCheckScript:
	turnobject PLAYER, RIGHT
	turnobject ROUTE_23_CASCADE_OFFICER, LEFT
	opentext
	writetext CascadeHiveBadgeCheckText
	checkflag ENGINE_CASCADEBADGE
	iffalse DontHaveBadges
	checkflag ENGINE_HIVEBADGE
	iffalse DontHaveBadges
	writetext HaveCascadeHiveBadgeText
	waitbutton
	closetext
	setscene SCENE_SHOWN_CASCADE
	end

ThunderPlainBadgeCheckScript:
	turnobject PLAYER, LEFT
	turnobject ROUTE_23_THUNDER_OFFICER, RIGHT
	opentext
	writetext ThunderPlainBadgeCheckText
	checkflag ENGINE_THUNDERBADGE
	iffalse DontHaveBadges
	checkflag ENGINE_PLAINBADGE
	iffalse DontHaveBadges
	writetext HaveThunderPlainBadgeText
	waitbutton
	closetext
	setscene SCENE_SHOWN_THUNDER
	end

RainbowFogBadgeCheckScript:
	turnobject PLAYER, RIGHT
	turnobject ROUTE_23_RAINBOW_OFFICER1, LEFT
	turnobject ROUTE_23_RAINBOW_OFFICER2, LEFT
	opentext
	writetext RainbowFogBadgeCheckText
	checkflag ENGINE_RAINBOWBADGE
	iffalse DontHaveBadges
	checkflag ENGINE_FOGBADGE
	iffalse DontHaveBadges
	writetext HaveRainbowFogBadgeText
	waitbutton
	closetext
	setscene SCENE_SHOWN_RAINBOW
	end

MarshGlacierBadgeCheckScript1:
	turnobject PLAYER, LEFT
	sjump _MarshGlacierBadgeCheckScript

MarshGlacierBadgeCheckScript2:
	turnobject PLAYER, RIGHT
_MarshGlacierBadgeCheckScript:
	turnobject ROUTE_23_MARSH_SWIMMER1, RIGHT
	turnobject ROUTE_23_MARSH_SWIMMER2, LEFT
	opentext
	writetext MarshGlacierBadgeCheckText
	checkflag ENGINE_MARSHBADGE
	iffalse DontHaveBadges
	checkflag ENGINE_GLACIERBADGE
	iffalse DontHaveBadges
	writetext HaveMarshGlacierBadgeText
	waitbutton
	closetext
	setscene SCENE_SHOWN_MARSH
	end

SoulStormBadgeCheckScript:
	turnobject PLAYER, RIGHT
	turnobject ROUTE_23_SOUL_OFFICER, LEFT
	opentext
	writetext SoulStormBadgeCheckText
	checkflag ENGINE_SOULBADGE
	iffalse DontHaveBadges
	checkflag ENGINE_STORMBADGE
	iffalse DontHaveBadges
	writetext HaveSoulStormBadgeText
	waitbutton
	closetext
	setscene SCENE_SHOWN_SOUL
	end

VolcanoMineralBadgeCheckScript:
	turnobject PLAYER, RIGHT
	turnobject ROUTE_23_VOLCANO_OFFICER, LEFT
	opentext
	writetext VolcanoMineralBadgeCheckText
	checkflag ENGINE_VOLCANOBADGE
	iffalse DontHaveBadges
	checkflag ENGINE_MINERALBADGE
	iffalse DontHaveBadges
	writetext HaveVolcanoMineralBadgeText
	waitbutton
	closetext
	setscene SCENE_SHOWN_VOLCANO
	end

EarthRisingBadgeCheckScript:
	turnobject PLAYER, RIGHT
	turnobject ROUTE_23_EARTH_OFFICER1, RIGHT
	turnobject ROUTE_23_EARTH_OFFICER2, LEFT
	opentext
	writetext EarthRisingBadgeCheckText
	checkflag ENGINE_EARTHBADGE
	iffalse DontHaveBadges
	checkflag ENGINE_RISINGBADGE
	iffalse DontHaveBadges
	writetext HaveEarthRisingBadgeText
	waitbutton
	closetext
	setscene SCENE_SHOWN_EARTH
	end

DontHaveBadges:
	writetext NoBadgeText
	waitbutton
	closetext
	applymovement PLAYER, Route23StepDownMovement
	end

Route23StepDownMovement:
	step DOWN
	step_end

Route23Sign:
	jumptext Route23SignText

Route23SignText:
	text "VICTORY ROAD GATE"
	line "- #MON LEAGUE"
	done

NoBadgeText:
	text "You don't have"
	line "those GYM BADGES."

	para "I'm sorry, but I"
	line "can't let you go"
	cont "through."
	done

BadgeCheckNPCText:
	text "Only trainers who"
	line "have proven them-"
	cont "selves may pass."
	done

CascadeHiveBadgeCheckText:
	text "Only trainers who"
	line "who possess the"
	para "CASCADEBADGE and"
	line "the HIVEBADGE may"
	cont "pass."
	prompt

HaveCascadeHiveBadgeText:
	text "Oh! You have the"
	line "CASCADEBADGE and"
	cont "the HIVEBADGE!"

	para "Please, go right"
	line "on through!"
	done

ThunderPlainBadgeCheckText:
	text "Only trainers who"
	line "who possess the"
	para "THUNDERBADGE and"
	line "the PLAINBADGE may"
	cont "pass."
	prompt

HaveThunderPlainBadgeText:
	text "Oh! You have the"
	line "THUNDERBADGE and"
	cont "the PLAINBADGE!"

	para "Please, go right"
	line "on through!"
	done

RainbowFogBadgeCheckText:
	text "Only trainers who"
	line "who possess the"
	para "RAINBOWBADGE and"
	line "the FOGBADGE may"
	cont "pass."
	prompt

HaveRainbowFogBadgeText:
	text "Oh! You have the"
	line "RAINBOWBADGE and"
	cont "the FOGBADGE!"

	para "Please, go right"
	line "on through!"
	done

MarshGlacierBadgeCheckText:
	text "Only trainers who"
	line "who possess the"
	para "MARSHBADGE and the"
	line "GLACIERBADGE may"
	cont "pass."
	prompt

HaveMarshGlacierBadgeText:
	text "Oh! You have the"
	line "MARSHBADGE and the"
	cont "GLACIERBADGE!"

	para "Please, go right"
	line "on through!"
	done

SoulStormBadgeCheckText:
	text "Only trainers who"
	line "who possess the"
	para "SOULBADGE and the"
	line "STORMBADGE may"
	cont "pass."
	prompt

HaveSoulStormBadgeText:
	text "Oh! You have the"
	line "SOULBADGE and the"
	cont "STORMBADGE!"

	para "Please, go right"
	line "on through!"
	done

VolcanoMineralBadgeCheckText:
	text "Only trainers who"
	line "who possess the"
	para "VOLCANOBADGE and"
	line "the MINERALBADGE"
	cont "may pass."
	prompt

HaveVolcanoMineralBadgeText:
	text "Oh! You have the"
	line "VOLCANOBADGE and"
	cont "the MINERALBADGE!"

	para "Please, go right"
	line "on through!"
	done

EarthRisingBadgeCheckText:
	text "Only trainers who"
	line "who possess the"
	para "EARTHBADGE and the"
	line "RISINGBADGE may"
	cont "pass."
	prompt

HaveEarthRisingBadgeText:
	text "Oh! You have the"
	line "EARTHBADGE and the"
	cont "RISINGBADGE!"

	para "Please, go right"
	line "on through!"
	done

Route23_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  7, 139, VICTORY_ROAD_GATE, 5
	warp_event  8, 139, VICTORY_ROAD_GATE, 6
	warp_event  4,  31, VICTORY_ROAD, 1
	warp_event 14,  31, VICTORY_ROAD, 10

	db 9 ; coord events
	coord_event 14, 131, SCENE_DEFAULT, CascadeHiveBadgeCheckScript
	coord_event  9, 123, SCENE_SHOWN_CASCADE, ThunderPlainBadgeCheckScript
	coord_event  0, 115, SCENE_SHOWN_THUNDER, RainbowFogBadgeCheckScript
	coord_event 10, 115, SCENE_SHOWN_THUNDER, RainbowFogBadgeCheckScript
	coord_event  5,  84, SCENE_SHOWN_RAINBOW, MarshGlacierBadgeCheckScript1
	coord_event  6,  84, SCENE_SHOWN_RAINBOW, MarshGlacierBadgeCheckScript2
	coord_event 12,  55, SCENE_SHOWN_MARSH, SoulStormBadgeCheckScript
	coord_event  6,  44, SCENE_SHOWN_SOUL, VolcanoMineralBadgeCheckScript
	coord_event  4,  32, SCENE_SHOWN_VOLCANO, EarthRisingBadgeCheckScript

	db 1 ; bg events
	bg_event  3,  33, BGEVENT_READ, Route23Sign

	db 10 ; object events
	object_event 15, 131, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BadgeCheckNPCScript, -1
	object_event  8, 123, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BadgeCheckNPCScript, -1
	object_event  1, 115, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BadgeCheckNPCScript, -1
	object_event 11, 115, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BadgeCheckNPCScript, -1
	object_event  4,  84, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BadgeCheckNPCScript, -1
	object_event  7,  84, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BadgeCheckNPCScript, -1
	object_event 13,  55, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BadgeCheckNPCScript, -1
	object_event  7,  44, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BadgeCheckNPCScript, -1
	object_event  3,  32, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BadgeCheckNPCScript, -1
	object_event  5,  32, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BadgeCheckNPCScript, -1
