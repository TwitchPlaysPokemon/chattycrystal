	object_const_def ; object_event constants
	const MAHOGANYMART1F_PHARMACIST
	const MAHOGANYMART1F_BLACK_BELT
	const MAHOGANYMART1F_LANCE
	const MAHOGANYMART1F_DRAGON
	const MAHOGANYMART1F_GRANNY

MahoganyMart1F_MapScripts:
	db 2 ; scene scripts
	scene_script GenericDummyScript ; SCENE_MAHOGANYMART1F_NOTHING
	scene_script .LanceUncoversStaircase ; SCENE_MAHOGANYMART1F_LANCE_UNCOVERS_STAIRS

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .MahoganyMart1FStaircase

.LanceUncoversStaircase:
	prioritysjump MahoganyMart1FLanceUncoversStaircaseScript
	end

.MahoganyMart1FStaircase:
	checkevent EVENT_UNCOVERED_STAIRCASE_IN_MAHOGANY_MART
	iftrue .ShowStairs
	return

.ShowStairs:
	changeblock 6, 2, $1e ; stairs
	return

MahogayMart1FPharmacistScript:
	checkevent EVENT_DECIDED_TO_HELP_LANCE
	iftrue .LanceEntered
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_MAHOGANY_1
	closetext
	end

.LanceEntered:
	jumptextfaceplayer .entered_text

.entered_text
	text "Arrgh… You found"
	line "the secret stair-"
	cont "way…"
	done

MahogayMart1FBlackBeltScript:
	checkevent EVENT_DECIDED_TO_HELP_LANCE
	iftrue .LanceEntered
	jumptextfaceplayer .text

.text
	text "Heheh! The experi-"
	line "ment worked like a"
	cont "charm."

	para "MAGIKARP are just"
	line "worthless, but"
	para "GYARADOS are big"
	line "moneymakers."
	done

.LanceEntered:
	jumptextfaceplayer .entered_text

.entered_text
	text "Urrgh…"

	para "That girl's dragon"
	line "#MON are tough…"
	done

MahogayMart1FGrannyScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_MAHOGANY_2
	closetext
	end

MahoganyMart1FLanceUncoversStaircaseScript:
	pause 15
	opentext
	writetext HostSilenceText
	pause 15
	closetext
	playsound SFX_TACKLE
	applymovement MAHOGANYMART1F_DRAGON, .dragonite_attacks
	applymovement MAHOGANYMART1F_BLACK_BELT, .black_belt_falls
	pause 15
	disappear MAHOGANYMART1F_DRAGON
	pause 15
	applymovement MAHOGANYMART1F_LANCE, .walk_to_player
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	follow MAHOGANYMART1F_LANCE, PLAYER
	applymovement MAHOGANYMART1F_LANCE, .push_pharmacist
	applymovement MAHOGANYMART1F_PHARMACIST, .shoved_aside
	applymovement MAHOGANYMART1F_LANCE, .approach_stairs
	stopfollow
	opentext
	writetext HostSilenceText
	waitbutton
	showemote EMOTE_SHOCK, MAHOGANYMART1F_PHARMACIST, 10
	playsound SFX_FAINT
	changeblock 6, 2, $1e ; stairs
	reloadmappart
	closetext
	setevent EVENT_UNCOVERED_STAIRCASE_IN_MAHOGANY_MART
	turnobject MAHOGANYMART1F_LANCE, LEFT
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	applymovement MAHOGANYMART1F_LANCE, .enter_stairs
	playsound SFX_EXIT_BUILDING
	disappear MAHOGANYMART1F_LANCE
	setscene SCENE_MAHOGANYMART1F_NOTHING
	waitsfx
	end

.dragonite_attacks
	fix_facing
	big_step LEFT
	big_step RIGHT
	remove_fixed_facing
	step_end

.black_belt_falls
	fix_facing
	big_step LEFT
	remove_fixed_facing
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	step_end

.walk_to_player
	slow_step LEFT
	turn_head DOWN
	step_end

.push_pharmacist
	slow_step RIGHT
	slow_step UP
	slow_step UP
	step_end

.shoved_aside
	fix_facing
	big_step LEFT
	remove_fixed_facing
	step_end

.approach_stairs
	slow_step UP
	slow_step RIGHT
	slow_step RIGHT
	step_end

.enter_stairs
	slow_step RIGHT
	step_end

MahoganyMart1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, MAHOGANY_TOWN, 1
	warp_event  4,  7, MAHOGANY_TOWN, 1
	warp_event  7,  3, TEAM_ROCKET_BASE_B1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  4,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahogayMart1FPharmacistScript, EVENT_TEAM_ROCKET_BASE_POPULATION
	object_event  1,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahogayMart1FBlackBeltScript, EVENT_TEAM_ROCKET_BASE_POPULATION
	object_event  4,  6, SPRITE_CYAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MAHOGANY_MART_LANCE_AND_DRAGONITE
	object_event  3,  6, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MAHOGANY_MART_LANCE_AND_DRAGONITE
	object_event  1,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahogayMart1FGrannyScript, EVENT_MAHOGANY_MART_OWNERS
