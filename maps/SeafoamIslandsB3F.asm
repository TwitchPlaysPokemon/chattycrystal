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
	warp_def $7, $25, 5, SEAFOAM_ISLANDS_B2F
	warp_def $9, $19, 6, SEAFOAM_ISLANDS_B2F
	warp_def $d, $23, 7, SEAFOAM_ISLANDS_B2F
	warp_def $d, $3, 8, SEAFOAM_ISLANDS_B2F
	warp_def $3, $3, 1, SEAFOAM_ISLANDS_B4F
	warp_def $d, $7, 2, SEAFOAM_ISLANDS_B4F
	warp_def $9, $15, 3, SEAFOAM_ISLANDS_B4F
	warp_def $3, $1d, 4, SEAFOAM_ISLANDS_B4F
	warp_def $f, $1f, 5, SEAFOAM_ISLANDS_B4F
	warp_def $f, $25, 6, SEAFOAM_ISLANDS_B4F

	db 0 ; coord events

	db 2 ; bg events
	signpost 17, 27, BGEVENT_ITEM, SeafoamIslandsB3FHiddenMaxRevive
	signpost  5,  7, BGEVENT_ITEM, SeafoamIslandsB3FHiddenRareCandy

	db 3 ; object events
	person_event SPRITE_POKE_BALL, 15, 15, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB3FRevive, EVENT_SEAFOAM_ISLANDS_B3F_REVIVE
	person_event SPRITE_POKE_BALL,  6, 17, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB3FBigPearl, EVENT_SEAFOAM_ISLANDS_B3F_BIG_PEARL
	person_event SPRITE_BOULDER, 7, 28, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3FBoulder, -1
