	object_const_def ; object_event constants
	const SEAFOAMISLANDSB3F_POKE_BALL1
	const SEAFOAMISLANDSB3F_POKE_BALL2
	const SEAFOAMISLANDSB3F_BOULDER

SeafoamIslandsB3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SeafoamIslandsB3FRevive:
	itemball REVIVE

SeafoamIslandsB3FBigPearl:
	itemball BIG_PEARL

SeafoamIslandsB3FHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_SEAFOAM_ISLANDS_B3F_HIDDEN_MAX_REVIVE

SeafoamIslandsB3FHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_SEAFOAM_ISLANDS_B3F_HIDDEN_RARE_CANDY

SeafoamIslandsB3FBoulder:
	jumpstd strengthboulder

SeafoamIslandsB3F_MapEvents:
	db 0, 0 ; filler

	db 10 ; warp events
	warp_event 37,  7, SEAFOAM_ISLANDS_B2F, 5
	warp_event 25,  9, SEAFOAM_ISLANDS_B2F, 6
	warp_event 35, 13, SEAFOAM_ISLANDS_B2F, 7
	warp_event  3, 13, SEAFOAM_ISLANDS_B2F, 8
	warp_event  3,  3, SEAFOAM_ISLANDS_B4F, 1
	warp_event  7, 13, SEAFOAM_ISLANDS_B4F, 2
	warp_event 21,  9, SEAFOAM_ISLANDS_B4F, 3
	warp_event 29,  3, SEAFOAM_ISLANDS_B4F, 4
	warp_event 31, 15, SEAFOAM_ISLANDS_B4F, 5
	warp_event 37, 15, SEAFOAM_ISLANDS_B4F, 6

	db 0 ; coord events

	db 2 ; bg events
	bg_event 27, 17, BGEVENT_ITEM, SeafoamIslandsB3FHiddenMaxRevive
	bg_event  7,  5, BGEVENT_ITEM, SeafoamIslandsB3FHiddenRareCandy

	db 3 ; object events
	object_event 15, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB3FRevive, EVENT_SEAFOAM_ISLANDS_B3F_REVIVE
	object_event 17,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB3FBigPearl, EVENT_SEAFOAM_ISLANDS_B3F_BIG_PEARL
	object_event 28,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3FBoulder, -1
