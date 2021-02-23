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
	warp_def $3, $3, 5, SEAFOAM_ISLANDS_B3F
	warp_def $b, $7, 6, SEAFOAM_ISLANDS_B3F
	warp_def $7, $19, 7, SEAFOAM_ISLANDS_B3F
	warp_def $2, $1b, 8, SEAFOAM_ISLANDS_B3F
	warp_def $d, $1f, 9, SEAFOAM_ISLANDS_B3F
	warp_def $d, $25, 10, SEAFOAM_ISLANDS_B3F

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	person_event SPRITE_BIRD, 13, 22, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB4FArticuno, EVENT_SEAFOAM_ISLANDS_B4F_ARTICUNO
	person_event SPRITE_POKE_BALL, 7, 33, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB4FNeverMeltIce, EVENT_SEAFOAM_ISLANDS_B4F_NEVERMELTICE
	person_event SPRITE_POKE_BALL, 2, 23, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB4FUltraBall, EVENT_SEAFOAM_ISLANDS_B4F_ULTRA_BALL
