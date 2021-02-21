PokemonTower4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TrainerMediumLaurel:
	trainer MEDIUM, LAUREL, EVENT_BEAT_MEDIUM_LAUREL, MediumLaurelSeenText, MediumLaurelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumLaurelAfterBattleText
	waitbutton
	closetext
	end
	
TrainerMediumPatricia:
	trainer MEDIUM, PATRICIA, EVENT_BEAT_MEDIUM_PATRICIA, MediumPatriciaSeenText, MediumPatriciaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumPatriciaAfterBattleText
	waitbutton
	closetext
	end

MediumLaurelBeatenText:
MediumLaurelSeenText:
MediumLaurelAfterBattleText:
MediumPatriciaBeatenText:
MediumPatriciaSeenText:
MediumPatriciaAfterBattleText:
	text "<...>"
	done

PokemonTower4F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 16,  9, POKEMON_TOWER_3F, 2
	warp_event  1,  9, POKEMON_TOWER_5F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5, 12, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerMediumLaurel, -1
	object_event  9,  1, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerMediumPatricia, -1
