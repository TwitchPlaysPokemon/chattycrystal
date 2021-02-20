	object_const_def ; object_event constants
	const SAFARIZONENORTH_LATIOS

SafariZoneNorth_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SafariZoneNorthSignScript:
	jumptext .Text

.Text:
	text "AREA 2"
	done

SafariZoneNorthTrainerTips1Script:
	jumptext .Text

.Text:
	text "The sign is"
	line "faded…"
	done

SafariZoneNorthTrainerTips2Script:
	jumptext .Text

.Text:
	text "The sign is"
	line "faded…"
	done

SafariZoneNorthTrainerTips3Script:
	jumptext .Text

.Text:
	text "The sign is"
	line "faded…"
	done

SafariZoneNorthRestHouseSignScript:
	jumptext .Text

.Text:
	text "REST HOUSE"
	done

SafariZoneNorthRestHouseScript:
	jumptext .Text

.Text:
	text "It's locked…"
	done
	
Latios:
	faceplayer
	opentext
	writetext LatiosText
	cry LATIOS
	pause 15
	closetext
	loadwildmon LATIOS, 65
	startbattle
	disappear SAFARIZONENORTH_LATIOS
	reloadmapafterbattle
	end

LatiosText:
	text "Laaati!"
	done

SafariZoneNorth_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 39, 30, SAFARI_ZONE_EAST, 3
	warp_event 39, 31, SAFARI_ZONE_EAST, 4
	warp_event 20, 35, SAFARI_ZONE_CENTER, 5
	warp_event 21, 35, SAFARI_ZONE_CENTER, 6
	warp_event  8, 35, SAFARI_ZONE_WEST, 3
	warp_event  9, 35, SAFARI_ZONE_WEST, 4
	warp_event  2, 35, SAFARI_ZONE_WEST, 5
	warp_event  3, 35, SAFARI_ZONE_WEST, 6

	db 0 ; coord events

	db 6 ; bg events
	bg_event 13, 31, BGEVENT_READ, SafariZoneNorthSignScript
	bg_event 26, 28, BGEVENT_READ, SafariZoneNorthTrainerTips1Script
	bg_event 18, 32, BGEVENT_READ, SafariZoneNorthTrainerTips2Script
	bg_event  3, 25, BGEVENT_READ, SafariZoneNorthTrainerTips3Script
	bg_event 36,  4, BGEVENT_READ, SafariZoneNorthRestHouseSignScript
	bg_event 35,  3, BGEVENT_READ, SafariZoneNorthRestHouseScript

	db 1 ; object events
	object_event 30,  2, SPRITE_DRAGON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Latios, EVENT_LATIOS_IN_SAFARI_ZONE

