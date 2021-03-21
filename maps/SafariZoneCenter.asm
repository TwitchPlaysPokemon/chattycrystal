SafariZoneCenter_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SafariZoneCenterSignScript:
	jumptext .Text

.Text:
	text "SAFARI ZONE"
	line "CENTER AREA"

	para "EAST: AREA 1"
	line "NORTH: AREA 2"
	cont "WEST: AREA 3"
	done

SafariZoneCenterRestHouseSignScript:
	jumptext .Text

.Text:
	text "REST HOUSE"
	done

SafariZoneCenterRestHouseScript:
	jumptext .Text

.Text:
	text "It's locked…"
	done

SafariZoneCenterLuckyPunch:
	itemball LUCKY_PUNCH

SafariZoneCenterMaxPotion:
	itemball MAX_POTION

SafariZoneCenter_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 14, 25, SAFARI_ZONE_FUCHSIA_GATE, 1
	warp_event 15, 25, SAFARI_ZONE_FUCHSIA_GATE, 2
	warp_event 29, 10, SAFARI_ZONE_EAST, 1
	warp_event 29, 11, SAFARI_ZONE_EAST, 2
	warp_event 14,  0, SAFARI_ZONE_NORTH, 3
	warp_event 15,  0, SAFARI_ZONE_NORTH, 4
	warp_event  0, 10, SAFARI_ZONE_WEST, 1
	warp_event  0, 11, SAFARI_ZONE_WEST, 2

	db 0 ; coord events

	db 3 ; bg events
	bg_event 14, 22, BGEVENT_READ, SafariZoneCenterSignScript
	bg_event 18, 20, BGEVENT_READ, SafariZoneCenterRestHouseSignScript
	bg_event 17, 19, BGEVENT_READ, SafariZoneCenterRestHouseScript

	db 2 ; object events
	object_event 15, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneCenterLuckyPunch, EVENT_SAFARI_ZONE_CENTER_LUCKY_PUNCH
	object_event  2, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneCenterMaxPotion, EVENT_SAFARI_ZONE_CENTER_MAX_POTION
