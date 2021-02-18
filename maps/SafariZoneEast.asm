SafariZoneEast_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SafariZoneEastSignScript:
	jumptext .Text

.Text:
	text "AREA 1"
	done

SafariZoneEastTrainerTipsScript:
	jumptext .Text

.Text:
	text "The sign is"
	line "faded…"
	done

SafariZoneEastRestHouseSignScript:
	jumptext .Text

.Text:
	text "REST HOUSE"
	done

SafariZoneEastRestHouseScript:
	jumptext .Text

.Text:
	text "It's locked…"
	done

SafariZoneEast_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0, 22, SAFARI_ZONE_CENTER, 3
	warp_event  0, 23, SAFARI_ZONE_CENTER, 4
	warp_event  0,  4, SAFARI_ZONE_NORTH, 1
	warp_event  0,  5, SAFARI_ZONE_NORTH, 2

	db 0 ; coord events

	db 4 ; bg events
	bg_event  4, 22, BGEVENT_READ, SafariZoneEastSignScript
	bg_event  6,  4, BGEVENT_READ, SafariZoneEastTrainerTipsScript
	bg_event 26, 10, BGEVENT_READ, SafariZoneEastRestHouseSignScript
	bg_event 25,  9, BGEVENT_READ, SafariZoneEastRestHouseScript

	db 0 ; object events
