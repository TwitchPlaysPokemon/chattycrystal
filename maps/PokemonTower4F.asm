PokemonTower4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerMediumLaurel:
	trainer MEDIUM, LAUREL, EVENT_BEAT_MEDIUM_LAUREL, .before_text, .defeat_text, 0, .Script

.Script:
	endifjustbattled
	jumptext .after_text

.before_text
	text "Be cursed with me!"
	line "Kwaaah!"
	done

.defeat_text
	text "What!"
	done

.after_text
	text "We can't determine"
	line "the identity of"
	cont "the ghosts<...>"
	done

TrainerMediumPatricia:
	trainer MEDIUM, PATRICIA, EVENT_BEAT_MEDIUM_PATRICIA, .before_text, .defeat_text, 0, .Script

.Script:
	endifjustbattled
	jumptext .after_text

.before_text
	text "Be gone!"
	line "Malevolent spirit!"
	done

.defeat_text
	text "Whew! The spirit"
	line "left!"
	done

.after_text
	text "The others above<...>"
	line "They must have"
	cont "been possessed."
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
