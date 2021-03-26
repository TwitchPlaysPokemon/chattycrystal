	object_const_def ; object_event constants
	const SEAFOAMISLANDSB2F_SKIER
	const SEAFOAMISLANDSB2F_BOARDER1
	const SEAFOAMISLANDSB2F_BOARDER2
	const SEAFOAMISLANDSB2F_POKE_BALL

SeafoamIslandsB2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerSkierCady:
	trainer SKIER, CADY, EVENT_BEAT_SKIER_CADY, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext .AfterText

.SeenText:
	text "To beat the cold,"
	line "try warm clothes"
	cont "and a hot drink!"
	done

.BeatenText:
	text "Argh, all the way"
	line "out here!"
	done

.AfterText:
	text "That was a hot"
	line "battle!"
	done

TrainerBoarderShaun:
	trainer BOARDER, SHAUN, EVENT_BEAT_BOARDER_SHAUN, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext .AfterText

.SeenText:
	text "Hey, hey, you're"
	line "in my way! Right!"
	done

.BeatenText:
	text "I got kicked"
	line "around…"
	done

.AfterText:
	text "All right, please"
	line "pass through!"
	done

TrainerBoarderBryce:
	trainer BOARDER, BRYCE, EVENT_BEAT_BOARDER_BRYCE, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext .AfterText

.SeenText:
	text "What did you"
	line "come all the way"
	para "out here for,"
	line "I wonder."
	done

.BeatenText:
	text "I lost all the"
	line "way out here…"
	done

.AfterText:
	text "Trainers are"
	line "everywhere."
	done

SeafoamIslandsB2FWaterStone:
	itemball WATER_STONE

SeafoamIslandsB2FHiddenPearl1:
	hiddenitem PEARL, EVENT_SEAFOAM_ISLANDS_B2F_HIDDEN_PEARL_1

SeafoamIslandsB2FHiddenPearl2:
	hiddenitem PEARL, EVENT_SEAFOAM_ISLANDS_B2F_HIDDEN_PEARL_2

SeafoamIslandsB2F_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 25, 15, SEAFOAM_ISLANDS_B1F, 3
	warp_event 15,  7, SEAFOAM_ISLANDS_B1F, 4
	warp_event 13, 13, SEAFOAM_ISLANDS_B1F, 5
	warp_event  7, 15, SEAFOAM_ISLANDS_B1F, 6
	warp_event 35,  7, SEAFOAM_ISLANDS_B3F, 1
	warp_event 28,  9, SEAFOAM_ISLANDS_B3F, 2
	warp_event 35, 15, SEAFOAM_ISLANDS_B3F, 3
	warp_event  4, 13, SEAFOAM_ISLANDS_B3F, 4

	db 0 ; coord events

	db 2 ; bg events
	bg_event  7,  9, BGEVENT_ITEM, SeafoamIslandsB2FHiddenPearl1
	bg_event 35, 13, BGEVENT_ITEM, SeafoamIslandsB2FHiddenPearl2

	db 4 ; object events
	object_event 11,  4, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerSkierCady, -1
	object_event 15,  2, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderShaun, -1
	object_event 25,  8, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderBryce, -1
	object_event 15, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB2FWaterStone, EVENT_SEAFOAM_ISLANDS_B2F_WATER_STONE
