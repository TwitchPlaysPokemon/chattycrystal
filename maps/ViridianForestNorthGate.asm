	object_const_def ; object_event constants
	const VIRIDIANFORESTNORTHGATE_OFFICER

ViridianForestNorthGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

ViridianForestNorthGateOfficerScript:
	jumptextfaceplayer ViridianForestNorthGateOfficerText

ViridianForestNorthGateOfficerText:
	text "Many #MON live"
	line "only in forests "
	cont "and caves."

	para "You need to look"
	line "everywhere to get"
	cont "different kinds!"
	done

ViridianForestNorthGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  0, ROUTE_2, 6
	warp_event  5,  0, ROUTE_2, 7
	warp_event  4,  7, VIRIDIAN_FOREST, 1
	warp_event  5,  7, VIRIDIAN_FOREST, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianForestNorthGateOfficerScript, -1
