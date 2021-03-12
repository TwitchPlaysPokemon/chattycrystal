	object_const_def ; object_event constants
	const SEAFOAMISLANDSB1F_POKE_BALL1
	const SEAFOAMISLANDSB1F_POKE_BALL2
	const SEAFOAMISLANDSB1F_BOULDER1
	const SEAFOAMISLANDSB1F_BOULDER2
	const SEAFOAMISLANDSB1F_BOULDER3
	const SEAFOAMISLANDSB1F_BOULDER4
	const SEAFOAMISLANDSB1F_BOULDER5
	const SEAFOAMISLANDSB1F_BOULDER6

SeafoamIslandsB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SeafoamIslandsB1FKingsRock:
	itemball KINGS_ROCK

SeafoamIslandsB1FIceHeal:
	itemball ICE_HEAL

SeafoamIslandsB1FHiddenIceHeal:
	hiddenitem ICE_HEAL, EVENT_SEAFOAM_ISLANDS_B1F_HIDDEN_ICE_HEAL

SeafoamIslandsB1FBoulder:
	jumpstd strengthboulder

SeafoamIslandsB1F_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event 35, 15, SEAFOAM_ISLANDS_1F, 3
	warp_event  3,  3, SEAFOAM_ISLANDS_1F, 5
	warp_event 27, 15, SEAFOAM_ISLANDS_B2F, 1
	warp_event 18,  5, SEAFOAM_ISLANDS_B2F, 2
	warp_event 15, 11, SEAFOAM_ISLANDS_B2F, 3
	warp_event  7, 15, SEAFOAM_ISLANDS_B2F, 4

	db 0 ; coord events

	db 1 ; bg events
	bg_event 20, 11, BGEVENT_ITEM, SeafoamIslandsB1FHiddenIceHeal

	db 8 ; object events
	object_event 20,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB1FKingsRock, EVENT_SEAFOAM_ISLANDS_B1F_KINGS_ROCK
	object_event 24,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB1FIceHeal, EVENT_SEAFOAM_ISLANDS_B1F_ICE_HEAL
	object_event 30,  9, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, -1
	object_event 31,  9, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, -1
	object_event 32, 10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, -1
	object_event 12,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, -1
	object_event  7, 11, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, -1
	object_event 13, 15, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, -1
