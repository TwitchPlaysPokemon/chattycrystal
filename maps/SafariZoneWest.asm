SafariZoneWest_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SafariZoneWestSignScript:
	jumptext .Text

.Text:
	text "AREA 3"
	done

SafariZoneWestTrainerTips1Script:
	jumptext .Text

.Text:
	text "The sign is"
	line "faded…"
	done

SafariZoneWestTrainerTips2Script:
	jumptext .Text

.Text:
	text "The sign is"
	line "faded…"
	done

SafariZoneWestRestHouseSignScript:
	jumptext .Text

.Text:
	text "REST HOUSE"
	done

SafariZoneWestRestHouseScript:
	jumptext .Text

.Text:
	text "It's locked…"
	done

SafariZoneWestPrizeHouseScript:
	jumptext .Text

.Text:
	text "It's locked…"
	done
	
SafariZoneWestRevivalHerb:
	itemball REVIVAL_HERB
	
SafariZoneWestHyperBeam:
	itemball TM_HYPER_BEAM

SafariZoneWest_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event 29, 22, SAFARI_ZONE_CENTER, 7
	warp_event 29, 23, SAFARI_ZONE_CENTER, 8
	warp_event 26,  0, SAFARI_ZONE_NORTH, 5
	warp_event 27,  0, SAFARI_ZONE_NORTH, 6
	warp_event 20,  0, SAFARI_ZONE_NORTH, 7
	warp_event 21,  0, SAFARI_ZONE_NORTH, 8

	db 0 ; coord events

	db 6 ; bg events
	bg_event 24, 22, BGEVENT_READ, SafariZoneWestSignScript
	bg_event 26,  4, BGEVENT_READ, SafariZoneWestTrainerTips1Script
	bg_event 17,  3, BGEVENT_READ, SafariZoneWestTrainerTips2Script
	bg_event 12, 12, BGEVENT_READ, SafariZoneWestRestHouseSignScript
	bg_event 11, 11, BGEVENT_READ, SafariZoneWestRestHouseScript
	bg_event  3,  3, BGEVENT_READ, SafariZoneWestPrizeHouseScript

	db 2 ; object events
	object_event 12,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneWestRevivalHerb, EVENT_SAFARI_ZONE_WEST_REVIVAL_HERB
	object_event  4,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneWestHyperBeam, EVENT_SAFARI_ZONE_WEST_HYPER_BEAM
