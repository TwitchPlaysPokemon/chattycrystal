PokemonMansion2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PokemonMansion2F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  5, 10, POKEMON_MANSION_1F, 7
	warp_event  7, 10, POKEMON_MANSION_3F, 1
	warp_event  6,  1, POKEMON_MANSION_3F, 2
	warp_event 25, 14, POKEMON_MANSION_3F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
