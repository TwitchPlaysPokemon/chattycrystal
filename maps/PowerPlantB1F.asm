	object_const_def ; object_event constants
	const POWERPLANTB1F_ZAPDOS

PowerPlantB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PowerPlantB1FZapdos:
	faceplayer
	opentext
	writetext .Text
	cry ZAPDOS
	pause 15
	closetext
	setevent EVENT_POWER_PLANT_B1F_ZAPDOS
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ZAPDOS, 60
	startbattle
	disappear POWERPLANTB1F_ZAPDOS
	reloadmapafterbattle
	end

.Text:
	text "Gyaoo!"
	done

PowerPlantB1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7, 10, POWER_PLANT, 3
	warp_event 36, 33, POWER_PLANT, 4

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event 34, 31, SPRITE_BIRD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FZapdos, EVENT_POWER_PLANT_B1F_ZAPDOS
