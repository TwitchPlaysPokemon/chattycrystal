	object_const_def ; object_event constants
	const POKEMONMANSION2F_BLUE
	const POKEMONMANSION2F_YUJI
	const POKEMONMANSION2F_JAC
	const POKEMONMANSION2F_POKEBALL_1
	const POKEMONMANSION2F_POKEBALL_2
	const POKEMONMANSION2F_POKEBALL_3
	const POKEMONMANSION2F_POKEBALL_4

PokemonMansion2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks


PokemonMansionBlue:
	faceplayer
	opentext
	writetext PokemonMansionBlueText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement POKEMONMANSION2F_BLUE, PokemonMansionBlueTeleport
	disappear POKEMONMANSION2F_BLUE
	clearevent EVENT_VIRIDIAN_GYM_BLUE
	end

TrainerCooltrainermYuji:
	trainer COOLTRAINERM, YUJI, EVENT_BEAT_COOLTRAINERM_YUJI, CooltrainermYujiSeenText, CooltrainermYujiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermYujiAfterBattleText
	waitbutton
	closetext
	end

TrainerBurglarJac:
	trainer BURGLAR, JAC, EVENT_BEAT_BURGLAR_JAC, BurglarJacSeenText, BurglarJacBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BurglarJacAfterBattleText
	waitbutton
	closetext
	end

PokemonMansion2FRareCandy:
	itemball RARE_CANDY

PokemonMansion2FBrightpowder:
	itemball BRIGHTPOWDER

PokemonMansion2FLemonade:
	itemball LEMONADE

PokemonMansion2FPokeDoll:
	itemball POKE_DOLL

BurglarJacSeenText:
BurglarJacBeatenText:
BurglarJacAfterBattleText:
CooltrainermYujiAfterBattleText:
CooltrainermYujiBeatenText:
CooltrainermYujiSeenText:
PokemonMansionBlueText:
	text "<...>"
	done

PokemonMansionBlueTeleport:
	teleport_from
	step_end

PokemonMansion2F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  5, 10, POKEMON_MANSION_1F, 7
	warp_event  7, 10, POKEMON_MANSION_3F, 1
	warp_event  6,  1, POKEMON_MANSION_3F, 2
	warp_event 25, 14, POKEMON_MANSION_3F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 7 ; object events
	object_event 13, 18, SPRITE_BRENDAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansionBlue, EVENT_BLUE_IN_CINNABAR
	object_event 11,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerCooltrainermYuji, -1
	object_event 21,  1, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBurglarJac, -1
	object_event 28,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion2FRareCandy, EVENT_POKEMON_MANSION_2F_RARE_CANDY
	object_event 25, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion2FBrightpowder, EVENT_POKEMON_MANSION_2F_BRIGHTPOWDER
	object_event  3, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion2FLemonade, EVENT_POKEMON_MANSION_2F_LEMONADE
	object_event 19, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion2FPokeDoll, EVENT_POKEMON_MANSION_2F_POKE_DOLL
