PokemonMansion3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PokemonMansion3F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  7, 10, POKEMON_MANSION_2F, 2
	warp_event  6,  1, POKEMON_MANSION_2F, 3
	warp_event 25, 14, POKEMON_MANSION_2F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
