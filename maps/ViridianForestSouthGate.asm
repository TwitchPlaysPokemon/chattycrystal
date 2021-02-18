	object_const_def ; object_event constants
	const VIRIDIANFORESTSOUTHGATE_OFFICER

ViridianForestSouthGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

ViridianForestSouthGateOfficerScript:
	jumptextfaceplayer ViridianForestSouthGateOfficerText

ViridianForestSouthGateOfficerText:
	text "Are you going to"
	line "VIRIDIAN FOREST?"
	cont "Be careful, it's"
	cont "a natural maze!"
	done

ViridianForestSouthGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  0, VIRIDIAN_FOREST, 2
	warp_event  5,  0, VIRIDIAN_FOREST, 3
	warp_event  4,  7, ROUTE_2, 8
	warp_event  5,  7, ROUTE_2, 8

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianForestSouthGateOfficerScript, -1
