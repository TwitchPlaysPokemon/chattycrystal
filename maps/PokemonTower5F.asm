PokemonTower5F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PokemonTower5F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  1,  9, POKEMON_TOWER_4F, 2
	warp_event 16,  9, POKEMON_TOWER_6F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
