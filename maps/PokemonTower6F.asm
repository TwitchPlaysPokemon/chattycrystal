PokemonTower6F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PokemonTower6fTwistedspoon:
	itemball TWISTEDSPOON

PokemonTower6fThickClub:
	itemball THICK_CLUB

PokemonTower6F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 16,  9, POKEMON_TOWER_5F, 2
	warp_event  7, 16, POKEMON_TOWER_7F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5, 3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower6fTwistedspoon, EVENT_POKEMON_TOWER_6F_TWISTEDSPOON
	object_event 11, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower6fThickClub, EVENT_POKEMON_TOWER_6F_THICK_CLUB
