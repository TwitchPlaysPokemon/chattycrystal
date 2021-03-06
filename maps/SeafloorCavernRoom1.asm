SeafloorCavernRoom1_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SeafloorCavernRoom1_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  4, 16, SEAFLOOR_CAVERN_ENTRANCE, 1
	warp_event 16, 12, SEAFLOOR_CAVERN_ROOM5, 1
	warp_event  5,  2, SEAFLOOR_CAVERN_ROOM4, 4

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event 10, 10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafloorCavernBoulder, -1
	object_event  4, 10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafloorCavernBoulder, -1
	object_event  4,  9, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafloorCavernRock, -1
