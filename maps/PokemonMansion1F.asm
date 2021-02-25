PokemonMansion1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerScientistBraydon:
	trainer SCIENTIST, BRAYDON, EVENT_BEAT_SCIENTIST_BRAYDON, ScientistBraydonSeenText, ScientistBraydonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistBraydonAfterBattleText
	waitbutton
	closetext
	end

TrainerBurglarDusty:
	trainer BURGLAR, DUSTY, EVENT_BEAT_BURGLAR_DUSTY, BurglarDustySeenText, BurglarDustyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BurglarDustyAfterBattleText
	waitbutton
	closetext
	end

BurglarDustySeenText:
BurglarDustyBeatenText:
BurglarDustyAfterBattleText:
ScientistBraydonSeenText:
ScientistBraydonBeatenText:
ScientistBraydonAfterBattleText:
	text "<...>"
	done

PokemonMansion1FElixir:
	itemball ELIXIR

PokemonMansion1FPinkBow:
	itemball PINK_BOW

PokemonMansion1FFireStone:
	itemball FIRE_STONE

PokemonMansion1F_MapEvents:
	db 0, 0 ; filler

	db 11 ; warp events
	warp_event  4, 27, CINNABAR_ISLAND, 2
	warp_event  5, 27, CINNABAR_ISLAND, 2
	warp_event  6, 27, CINNABAR_ISLAND, 2
	warp_event  7, 27, CINNABAR_ISLAND, 2
	warp_event 26, 27, CINNABAR_ISLAND, 2
	warp_event 27, 27, CINNABAR_ISLAND, 2
	warp_event  5, 10, POKEMON_MANSION_2F, 1
	warp_event 21, 23, POKEMON_MANSION_B1F, 1
	warp_event 16, 14, POKEMON_MANSION_1F, 5
	warp_event 17, 14, POKEMON_MANSION_1F, 6
	warp_event 19, 14, POKEMON_MANSION_1F, 7

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event 22, 16, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerScientistBraydon, -1
	object_event 17,  6, SPRITE_PHARMACIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerBurglarDusty, -1
	object_event 14, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion1FElixir, EVENT_POKEMON_MANSION_1F_ELIXIR
	object_event  4,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion1FPinkBow, EVENT_POKEMON_MANSION_1F_PINK_BOW
	object_event 25, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion1FFireStone, EVENT_POKEMON_MANSION_1F_FIRE_STONE
