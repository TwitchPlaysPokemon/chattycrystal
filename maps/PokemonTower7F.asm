	object_const_def ; object_event constants
	const POKEMONTOWER7F_DARKRAI

PokemonTower7F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Darkrai:
	faceplayer
	opentext
	writetext DarikraiText
	cry DARKRAI
	pause 15
	closetext
	setevent EVENT_DARKRAI_IN_POKEMON_TOWER
	loadwildmon DARKRAI, 70
	startbattle
	disappear POKEMONTOWER7F_DARKRAI
	reloadmapafterbattle
	end

DarikraiText:
	text "<...><...><...><...>!"
	done
	
PokemonTower7F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  7, 16, POKEMON_TOWER_6F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  8,  3, SPRITE_GENGAR, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Darkrai, EVENT_DARKRAI_IN_POKEMON_TOWER
