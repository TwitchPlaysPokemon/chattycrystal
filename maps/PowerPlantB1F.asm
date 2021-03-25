	object_const_def ; object_event constants
	const POWERPLANTB1F_ZAPDOS
	const POWERPLANTB1F_ZAP_CANNON
	const POWERPLANTB1F_THUNDERSTONE
	const POWERPLANTB1F_METAL_POWDER
	const POWERPLANTB1F_SCOPE_LENS
	const POWERPLANTB1F_FULL_RESTORE
	const POWERPLANTB1F_ELECTRODE_1
	const POWERPLANTB1F_ELECTRODE_2
	const POWERPLANTB1F_ELECTRODE_3
	const POWERPLANTB1F_ELECTRODE_4
	const POWERPLANTB1F_ELECTRODE_5
	const POWERPLANTB1F_ELECTRODE_6
	const POWERPLANTB1F_ELECTRODE_7
	const POWERPLANTB1F_ELECTRODE_8
	const POWERPLANTB1F_ELECTRODE_9

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
	loadwildmon ZAPDOS, 75
	startbattle
	disappear POWERPLANTB1F_ZAPDOS
	reloadmapafterbattle
	end

.Text:
	text "Gyaoo!"
	done

PowerPlantB1fZapCannon:
	itemball TM_ZAP_CANNON

PowerPlantB1fThunderstone:
	itemball THUNDERSTONE

PowerPlantB1fMetalPowder:
	itemball METAL_POWDER

PowerPlantB1fScopeLens:
	itemball SCOPE_LENS

PowerPlantB1fFullRestore:
	itemball FULL_RESTORE

PowerPlantB1FElectrode1:
	scall PowerPlantFightElectrode
	iftrue PowerPlantB1FReloadMap
	setflag EVENT_POWER_PLANT_B1F_ELECTRODE_1
	disappear POWERPLANTB1F_ELECTRODE_1
	sjump PowerPlantB1FReloadMap

PowerPlantB1FElectrode2:
	scall PowerPlantFightElectrode
	iftrue PowerPlantB1FReloadMap
	setflag EVENT_POWER_PLANT_B1F_ELECTRODE_2
	disappear POWERPLANTB1F_ELECTRODE_2
	sjump PowerPlantB1FReloadMap

PowerPlantB1FElectrode3:
	scall PowerPlantFightElectrode
	iftrue PowerPlantB1FReloadMap
	setflag EVENT_POWER_PLANT_B1F_ELECTRODE_3
	disappear POWERPLANTB1F_ELECTRODE_3
	sjump PowerPlantB1FReloadMap

PowerPlantB1FElectrode4:
	scall PowerPlantFightElectrode
	iftrue PowerPlantB1FReloadMap
	setflag EVENT_POWER_PLANT_B1F_ELECTRODE_4
	disappear POWERPLANTB1F_ELECTRODE_4
	sjump PowerPlantB1FReloadMap

PowerPlantB1FElectrode5:
	scall PowerPlantFightElectrode
	iftrue PowerPlantB1FReloadMap
	setflag EVENT_POWER_PLANT_B1F_ELECTRODE_5
	disappear POWERPLANTB1F_ELECTRODE_5
	sjump PowerPlantB1FReloadMap

PowerPlantB1FElectrode6:
	scall PowerPlantFightElectrode
	iftrue PowerPlantB1FReloadMap
	setflag EVENT_POWER_PLANT_B1F_ELECTRODE_6
	disappear POWERPLANTB1F_ELECTRODE_6
	sjump PowerPlantB1FReloadMap

PowerPlantB1FElectrode7:
	scall PowerPlantFightElectrode
	iftrue PowerPlantB1FReloadMap
	setflag EVENT_POWER_PLANT_B1F_ELECTRODE_7
	disappear POWERPLANTB1F_ELECTRODE_7
	sjump PowerPlantB1FReloadMap

PowerPlantB1FElectrode8:
	scall PowerPlantFightElectrode
	iftrue PowerPlantB1FReloadMap
	setflag EVENT_POWER_PLANT_B1F_ELECTRODE_8
	disappear POWERPLANTB1F_ELECTRODE_8
	sjump PowerPlantB1FReloadMap

PowerPlantB1FElectrode9:
	scall PowerPlantFightElectrode
	iftrue PowerPlantB1FReloadMap
	setflag EVENT_POWER_PLANT_B1F_ELECTRODE_9
	disappear POWERPLANTB1F_ELECTRODE_9
PowerPlantB1FReloadMap:
	reloadmapafterbattle
	end

PowerPlantFightElectrode:
	cry ELECTRODE
	loadwildmon ELECTRODE, 72
	startbattle
	end

PowerPlantB1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7, 10, POWER_PLANT, 3
	warp_event 36, 33, POWER_PLANT, 4

	db 0 ; coord events

	db 0 ; bg events

	db 15 ; object events
	object_event 34, 31, SPRITE_BIRD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FZapdos, EVENT_POWER_PLANT_B1F_ZAPDOS
	object_event 21, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantB1fZapCannon, EVENT_POWER_PLANT_B1F_ZAP_CANNON
	object_event 38, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantB1fThunderstone, EVENT_POWER_PLANT_B1F_THUNDERSTONE
	object_event 1, 1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantB1fMetalPowder, EVENT_POWER_PLANT_B1F_METAL_POWDER
	object_event 19, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantB1fScopeLens, EVENT_POWER_PLANT_B1F_SCOPE_LENS
	object_event 23, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantB1fFullRestore, EVENT_POWER_PLANT_B1F_FULL_RESTORE
	object_event 10, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FElectrode1, EVENT_POWER_PLANT_B1F_ELECTRODE_1
	object_event 21, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FElectrode2, EVENT_POWER_PLANT_B1F_ELECTRODE_2
	object_event 21, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FElectrode3, EVENT_POWER_PLANT_B1F_ELECTRODE_3
	object_event 14, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FElectrode4, EVENT_POWER_PLANT_B1F_ELECTRODE_4
	object_event 37, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FElectrode5, EVENT_POWER_PLANT_B1F_ELECTRODE_5
	object_event 11, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FElectrode6, EVENT_POWER_PLANT_B1F_ELECTRODE_6
	object_event 16, 5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FElectrode7, EVENT_POWER_PLANT_B1F_ELECTRODE_7
	object_event 37, 4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FElectrode8, EVENT_POWER_PLANT_B1F_ELECTRODE_8
	object_event 25, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FElectrode9, EVENT_POWER_PLANT_B1F_ELECTRODE_9
