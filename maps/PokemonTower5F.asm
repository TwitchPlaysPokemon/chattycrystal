PokemonTower5F_MapScripts:
	db 1 ; scene scripts
	scene_script .dummy

.dummy
	end

	db 0 ; callbacks

PokemonTower5F_HealPad:
	special HealParty
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .done
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	special FadeOutPalettes
	pause 6
	special FadeInPalettes
	opentext
	writetext .text
	waitbutton
	closetext
.done
	end

.text
	text "Entered purified,"
	line "protected zone!"

	para "<PLAYER>'s #MON"
	line "are fully healed!"
	done

PokemonTower5F_EnableHealPad:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	end

PokemonTower5F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  1,  9, POKEMON_TOWER_4F, 2
	warp_event 16,  9, POKEMON_TOWER_6F, 1

	db 10 ; coord events
	coord_event  7,  8, SCENE_DEFAULT, PokemonTower5F_EnableHealPad
	coord_event  7,  9, SCENE_DEFAULT, PokemonTower5F_EnableHealPad
	coord_event  8,  8, SCENE_DEFAULT, PokemonTower5F_HealPad
	coord_event  8,  9, SCENE_DEFAULT, PokemonTower5F_HealPad
	coord_event  8, 10, SCENE_DEFAULT, PokemonTower5F_EnableHealPad
	coord_event  9,  8, SCENE_DEFAULT, PokemonTower5F_HealPad
	coord_event  9,  9, SCENE_DEFAULT, PokemonTower5F_HealPad
	coord_event  9, 10, SCENE_DEFAULT, PokemonTower5F_EnableHealPad
	coord_event 10,  8, SCENE_DEFAULT, PokemonTower5F_EnableHealPad
	coord_event 10,  9, SCENE_DEFAULT, PokemonTower5F_EnableHealPad

	db 0 ; bg events

	db 0 ; object events
