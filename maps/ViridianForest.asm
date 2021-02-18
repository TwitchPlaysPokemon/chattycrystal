ViridianForest_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

ViridianForestDireHit:
	itemball DIRE_HIT

ViridianForestMaxPotion:
	itemball MAX_POTION

ViridianForestHiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_VIRIDIAN_FOREST_HIDDEN_MAX_ETHER

ViridianForestHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_VIRIDIAN_FOREST_HIDDEN_FULL_HEAL

ViridianForestHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_VIRIDIAN_FOREST_HIDDEN_FULL_RESTORE

ViridianForestHiddenRevive:
	hiddenitem REVIVE, EVENT_VIRIDIAN_FOREST_HIDDEN_REVIVE

ViridianForest_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2,  3, VIRIDIAN_FOREST_NORTH_GATE, 3
	warp_event 16, 51, VIRIDIAN_FOREST_SOUTH_GATE, 1
	warp_event 17, 51, VIRIDIAN_FOREST_SOUTH_GATE, 2

	db 0 ; coord events

	db 4 ; bg events
	bg_event 13, 23, BGEVENT_ITEM, ViridianForestHiddenMaxEther
	bg_event 13,  7, BGEVENT_ITEM, ViridianForestHiddenFullHeal
	bg_event 16, 45, BGEVENT_ITEM, ViridianForestHiddenFullRestore
	bg_event 31, 37, BGEVENT_ITEM, ViridianForestHiddenRevive

	db 2 ; object events
	object_event  1, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestDireHit, EVENT_VIRIDIAN_FOREST_DIRE_HIT
	object_event 12, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestMaxPotion, EVENT_VIRIDIAN_FOREST_MAX_POTION
