BattleTentGenerator_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

BattleTentGeneratorStoneClerk1:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_GYM_TMS
	closetext
	end

BattleTentGeneratorStoneClerk2:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_EVENT_TMS
	closetext
	end

BattleTentGeneratorStoneClerk3:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_SINGLE_TMS_1
	closetext
	end

BattleTentGeneratorStoneClerk4:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_SINGLE_TMS_2
	closetext
	end

BattleTentGenerator_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 13, 14, BATTLE_TENT_RUINS, 3
	warp_event  1,  8, ROCKET_HIDEOUT_B4F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  3, 16, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorStoneClerk1, EVENT_TM_BLACK_MARKET_BATTLE_TENT
	object_event  5, 16, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorStoneClerk2, EVENT_TM_BLACK_MARKET_BATTLE_TENT
	object_event  3, 19, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorStoneClerk3, EVENT_TM_BLACK_MARKET_BATTLE_TENT
	object_event  5, 19, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorStoneClerk4, EVENT_TM_BLACK_MARKET_BATTLE_TENT
