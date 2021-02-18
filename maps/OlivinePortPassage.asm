	object_const_def ; object_event constants
	const OLIVINEPORTPASSAGE_POKEFAN_M

OlivinePortPassage_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

OlivinePortPassagePokefanMScript:
	jumptextfaceplayer OlivinePortPassagePokefanMText
	
ShoelaceSnorlax:
	chattyoff
	opentext
	writetext ShoelaceSnorlaxText
	waitbutton
	closetext
	chattyon
	end
	
ShoelaceSnorlaxText:
	text "It's a SNORLAX"
	line "tying its"
	cont "shoelaces"
	
	para "You'll have to"
	line "wait until it is"
	cont "done<...>"
	done

OlivinePortPassagePokefanMText:
	text "FAST SHIP S.S.AQUA"
	line "sails to KANTO "

	para "every day of the"
	line "week."
	done

OlivinePortPassage_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 15,  0, OLIVINE_CITY, 10
	warp_event 16,  0, OLIVINE_CITY, 11
	warp_event 15,  4, OLIVINE_PORT_PASSAGE, 4
	warp_event  3,  2, OLIVINE_PORT_PASSAGE, 3
	warp_event  3, 14, OLIVINE_PORT, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event 17,  1, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePortPassagePokefanMScript, EVENT_OLIVINE_PORT_PASSAGE_POKEFAN_M
	object_event 15, 3, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShoelaceSnorlax, EVENT_ROUTE_5_SNORLAX
