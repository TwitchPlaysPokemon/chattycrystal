IndigoPlateauOutside_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	return

IndigoPlateauOutsideLeftSign:
	jumptext .Text

.Text:
	text "INDIGO PLATEAU"
	line "#MON LEAGUE HQ"

	para "The ultimate goal"
	line "of trainers!"
	done

IndigoPlateauOutsideRightSign:
	jumptext .Text

.Text:
	text "INDIGO PLATEAU"
	line "#MON LEAGUE HQ"

	para "The highest"
	line "#MON authority"
	done

IndigoPlateauOutside_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  9,  5, INDIGO_PLATEAU_POKECENTER_1F, 1
	warp_event 10,  5, INDIGO_PLATEAU_POKECENTER_1F, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  8,  6, BGEVENT_READ, IndigoPlateauOutsideLeftSign
	bg_event 11,  6, BGEVENT_READ, IndigoPlateauOutsideRightSign

	db 0 ; object events
