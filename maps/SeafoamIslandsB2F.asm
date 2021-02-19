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
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

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
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

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
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "What did you"
	line "come all the way"
	cont "out here for,"
	cont "I wonder."
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
	warp_def $f, $19, 3, SEAFOAM_ISLANDS_B1F
	warp_def $7, $f, 4, SEAFOAM_ISLANDS_B1F
	warp_def $d, $d, 5, SEAFOAM_ISLANDS_B1F
	warp_def $f, $7, 6, SEAFOAM_ISLANDS_B1F
	warp_def $7, $23, 1, SEAFOAM_ISLANDS_B3F
	warp_def $9, $1c, 2, SEAFOAM_ISLANDS_B3F
	warp_def $f, $23, 3, SEAFOAM_ISLANDS_B3F
	warp_def $d, $4, 4, SEAFOAM_ISLANDS_B3F

	db 0 ; coord events

	db 2 ; bg events
	signpost 9, 7, BGEVENT_ITEM, SeafoamIslandsB2FHiddenPearl1
	signpost 13, 35, BGEVENT_ITEM, SeafoamIslandsB2FHiddenPearl2

	db 4 ; object events
	person_event SPRITE_BUENA, 4, 11, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerSkierCady, -1
	person_event SPRITE_ROCKER,  2, 15, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderShaun, -1
	person_event SPRITE_ROCKER, 8, 25, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderBryce, -1
	person_event SPRITE_POKE_BALL, 16, 15, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB2FWaterStone, EVENT_SEAFOAM_ISLANDS_B2F_WATER_STONE
