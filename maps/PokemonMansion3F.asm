PokemonMansion3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerScientistGideon:
	trainer SCIENTIST, GIDEON, EVENT_BEAT_SCIENTIST_GIDEON, ScientistGideonSeenText, ScientistGideonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistGideonAfterBattleText
	waitbutton
	closetext
	end

TrainerBurglarSimon:
	trainer BURGLAR, SIMON_B, EVENT_BEAT_BURGLAR_SIMON, BurglarSimonSeenText, BurglarSimonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BurglarSimonAfterBattleText
	waitbutton
	closetext
	end

PokemonMansion3FNugget:
	itemball NUGGET

PokemonMansion3FFireBlast:
	itemball TM_FIRE_BLAST

BurglarSimonSeenText:
BurglarSimonBeatenText:
BurglarSimonAfterBattleText:
ScientistGideonAfterBattleText:
ScientistGideonBeatenText:
ScientistGideonSeenText:
	text "<...>"
	done

PokemonMansion3FHiddenEscapeRope:
	hiddenitem ESCAPE_ROPE, EVENT_POKEMON_MANSION_3F_ESCAPE_ROPE

PokemonMansion3F_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event  7, 10, POKEMON_MANSION_2F, 2
	warp_event  6,  1, POKEMON_MANSION_2F, 3
	warp_event 25, 14, POKEMON_MANSION_2F, 4
	warp_event 16, 14, POKEMON_MANSION_1F, 9
	warp_event 17, 14, POKEMON_MANSION_1F, 10
	warp_event 19, 14, POKEMON_MANSION_1F, 11

	db 0 ; coord events

	db 1 ; bg events
	bg_event  7, 13, BGEVENT_ITEM, PokemonMansion3FHiddenEscapeRope

	db 4 ; object events
	object_event 20,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerScientistGideon, -1
	object_event  8,  9, SPRITE_PHARMACIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerBurglarSimon, -1
	object_event  9, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion3FNugget, EVENT_POKEMON_MANSION_3F_NUGGET
	object_event 26,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion3FFireBlast, EVENT_POKEMON_MANSION_3F_FIRE_BLAST

