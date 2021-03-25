PokemonTower5F_MapScripts:
	db 1 ; scene scripts
	scene_script GenericDummyScript

	db 0 ; callbacks

PokemonTower5F_HealPad:
	special HealParty
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse GenericDummyScript
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	special FadeOutPalettes
	pause 6
	special FadeInPalettes
	opentext
	writetext .text
	waitbutton
	closetext
	end

.text
	text "Entered purified,"
	line "protected zone!"

	para "<PLAYER>'s #MON"
	line "are fully healed!"
	done

TrainerSageYang:
	trainer SAGE, YANG, EVENT_BEAT_SAGE_YANG, .before_text, .defeat_text, 0, .Script

.Script:
	endifjustbattled
	jumptext .after_text

.before_text
	text "Give<...> me<...>"
	line "your<...> all<...>"
	done

.defeat_text
	text "Gasp!"
	done

.after_text
	text "I was under"
	line "possession."
	done

PokemonTower5FMaxRevive:
	itemball MAX_REVIVE

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

	db 2 ; object events
	object_event 12,  7, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSageYang, -1
	object_event 13,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower5FMaxRevive, EVENT_POKEMON_TOWER_5F_MAX_REVIVE
