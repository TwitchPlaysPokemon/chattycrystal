	object_const_def ; object_event constants
	const POKEMONMANSIONB1F_GROUDON
	const POKEMONMANSIONB1F_TAYLOR
	const POKEMONMANSIONB1F_POKEBALL_1
	const POKEMONMANSIONB1F_POKEBALL_2
	const POKEMONMANSIONB1F_POKEBALL_3

PokemonMansionB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Groudon:
	faceplayer
	opentext
	writetext GroudonText
	cry GROUDON
	pause 15
	closetext
	setevent EVENT_GROUDON_IN_POKEMON_MANSION
	loadwildmon GROUDON, 75
	startbattle
	disappear POKEMONMANSIONB1F_GROUDON
	reloadmapafterbattle
	end

GroudonText:
	text "GRAHH!"
	done

TrainerScientistTaylor:
	trainer SCIENTIST, TAYLOR, EVENT_BEAT_SCIENTIST_TAYLOR, ScientistTaylorSeenText, ScientistTaylorBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistTaylorAfterBattleText
	waitbutton
	closetext
	end

PokemonMansionB1FBlizzard:
	itemball TM_BLIZZARD

PokemonMansionB1FAwakening:
	itemball AWAKENING

PokemonMansionB1FHeavyBall:
	itemball HEAVY_BALL

ScientistTaylorSeenText:
ScientistTaylorBeatenText:
ScientistTaylorAfterBattleText:
	text "<...>"
	done

PokemonMansionB1F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 23, 22, POKEMON_MANSION_1F, 8

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  4, 12, SPRITE_MONSTER, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Groudon, EVENT_GROUDON_IN_POKEMON_MANSION
	object_event 12, 15, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerScientistTaylor, -1
	object_event  5, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansionB1FBlizzard, EVENT_POKEMON_MANSION_B1F_BLIZZARD
	object_event 25,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansionB1FAwakening, EVENT_POKEMON_MANSION_B1F_AWAKENING
	object_event 16,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansionB1FHeavyBall, EVENT_POKEMON_MANSION_B1F_HEAVY_BALL
