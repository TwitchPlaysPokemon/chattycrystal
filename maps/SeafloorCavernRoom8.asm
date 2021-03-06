	object_const_def ; object_event constants

SeafloorCavernRoom8_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SeafloorCavernRoom8_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  5, 11, SEAFLOOR_CAVERN_ROOM4, 2
	warp_event  5,  2, SEAFLOOR_CAVERN_ROOM9, 1

	db 0 ; coord events

	db 0 ; bg events

	db 8 ; object events
	object_event  4,  4, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafloorCavernBoulder, -1
	object_event  6,  4, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafloorCavernBoulder, -1
	object_event  4,  5, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafloorCavernBoulder, -1
	object_event  5,  5, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafloorCavernBoulder, -1
	object_event  6,  5, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafloorCavernBoulder, -1
	object_event  4,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafloorCavernBoulder, -1
	object_event  5,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafloorCavernBoulder, -1
	object_event  6,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafloorCavernBoulder, -1
