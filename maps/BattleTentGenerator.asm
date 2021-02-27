	object_const_def ; object_event constants
	const BATTLETENTGENERATOR_CLERK_1
	const BATTLETENTGENERATOR_CLERK_2
	const BATTLETENTGENERATOR_CLERK_3
	const BATTLETENTGENERATOR_CLERK_4
	const BATTLETENTGENERATOR_WOOCHUM
	const BATTLETENTGENERATOR_PP_UP

BattleTentGenerator_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks


BattleTentGeneratorTMClerk1:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_GYM_TMS
	closetext
	end

BattleTentGeneratorTMClerk2:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_EVENT_TMS
	closetext
	end

BattleTentGeneratorTMClerk3:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_SINGLE_TMS_1
	closetext
	end

BattleTentGeneratorTMClerk4:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_SINGLE_TMS_2
	closetext
	end

BattleTentGeneratorWoochum:
	refreshscreen
	pokepic WOOCHUM
	cry WOOCHUM
	waitbutton
	closepokepic
	opentext
	writetext BattleTentGeneratorDoYouWantWoochumText
	yesorno
	iffalse BattleTentGeneratorRefused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, BattleTentGeneratorNoRoom
	writetext ReceivedWoochumText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke WOOCHUM, 50
	setevent EVENT_WOOCHUM_IN_ROCKET_HIDEOUT
	disappear BATTLETENTGENERATOR_WOOCHUM
	closetext
	end

BattleTentGeneratorNoRoom:
	writetext BattleTentGeneratorPartyFullText
	waitbutton
BattleTentGeneratorRefused:
	closetext
	end

BattleTentGeneratorPPUp:
	itemball PP_UP

BattleTentGeneratorDoYouWantWoochumText:
	text "It's a WOOCHUM."
	line "Do you want to"
	cont "raise it?"
	done

ReceivedWoochumText:
	text "<PLAYER> received"
	line "WOOCHUM!"
	done

BattleTentGeneratorPartyFullText:
	text "Your party"
	line "is full<...>"
	done

BattleTentGenerator_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 13, 14, BATTLE_TENT_RUINS, 3
	warp_event  1,  8, ROCKET_HIDEOUT_B4F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 6 ; object events
	object_event  3, 16, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorTMClerk1, EVENT_TM_BLACK_MARKET_BATTLE_TENT
	object_event  5, 16, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorTMClerk2, EVENT_TM_BLACK_MARKET_BATTLE_TENT
	object_event  3, 19, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorTMClerk3, EVENT_TM_BLACK_MARKET_BATTLE_TENT
	object_event  5, 19, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorTMClerk4, EVENT_TM_BLACK_MARKET_BATTLE_TENT
	object_event 16,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorWoochum, EVENT_WOOCHUM_IN_ROCKET_HIDEOUT
	object_event 11,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BattleTentGeneratorPPUp, EVENT_BATTLE_TENT_GENERATOR_PP_UP
