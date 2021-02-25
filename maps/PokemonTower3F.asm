PokemonTower3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerSageYin:
	trainer SAGE, YIN, EVENT_BEAT_SAGE_YIN, SageYinSeenText, SageYinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageYinAfterBattleText
	waitbutton
	closetext
	end

PokemonTower3fNightmare:
	itemball TM_NIGHTMARE

SageYinSeenText:
SageYinBeatenText:
SageYinAfterBattleText:
	text "<...>"
	done

PokemonTower3F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  1,  9, POKEMON_TOWER_2F, 2
	warp_event 16,  9, POKEMON_TOWER_4F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event 15, 13, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSageYin, -1
	object_event 11,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower3fNightmare, EVENT_POKEMON_TOWER_3F_NIGHTMARE
