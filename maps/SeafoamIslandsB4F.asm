	object_const_def ; object_event constants
	const SEAFOAMISLANDSB4F_ARTICUNO
	const SEAFOAMISLANDSB4F_POKE_BALL1
	const SEAFOAMISLANDSB4F_POKE_BALL2

SeafoamIslandsB4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SeafoamIslandsB4FArticuno:
	faceplayer
	opentext
	writetext .Text
	cry ARTICUNO
	pause 15
	closetext
	setevent EVENT_SEAFOAM_ISLANDS_B4F_ARTICUNO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ARTICUNO, 75
	startbattle
	disappear SEAFOAMISLANDSB4F_ARTICUNO
	reloadmapafterbattle
	end

.Text:
	text "Gyaoo!"
	done

SeafoamIslandsB4FNeverMeltIce:
	itemball NEVERMELTICE

SeafoamIslandsB4FUltraBall:
	itemball ULTRA_BALL

SeafoamIslandsB4F_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event  3,  3, SEAFOAM_ISLANDS_B3F, 5
	warp_event  7, 11, SEAFOAM_ISLANDS_B3F, 6
	warp_event 25,  7, SEAFOAM_ISLANDS_B3F, 7
	warp_event 27,  2, SEAFOAM_ISLANDS_B3F, 8
	warp_event 31, 13, SEAFOAM_ISLANDS_B3F, 9
	warp_event 37, 13, SEAFOAM_ISLANDS_B3F, 10

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event 22, 13, SPRITE_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB4FArticuno, EVENT_SEAFOAM_ISLANDS_B4F_ARTICUNO
	object_event 33,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB4FNeverMeltIce, EVENT_SEAFOAM_ISLANDS_B4F_NEVERMELTICE
	object_event 23,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB4FUltraBall, EVENT_SEAFOAM_ISLANDS_B4F_ULTRA_BALL
