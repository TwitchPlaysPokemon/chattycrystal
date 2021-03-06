SeafloorCavernRoom5_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SeafloorCavernRoom5_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  4,  2, SEAFLOOR_CAVERN_ROOM1, 2
	warp_event  5, 19, SEAFLOOR_CAVERN_ROOM4, 3
	warp_event 15, 13, SEAFLOOR_CAVERN_ROOM4, 1

	db 0 ; coord events

	db 0 ; bg events

	db 6 ; object events
	object_event  3, 12, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafloorCavernBoulder, -1
	object_event  4, 12, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafloorCavernBoulder, -1
	object_event  3, 14, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafloorCavernRock, -1
	object_event 11,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafloorCavernBoulder, -1
	object_event 12,  9, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafloorCavernBoulder, -1
	object_event 13,  9, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafloorCavernRock, -1
