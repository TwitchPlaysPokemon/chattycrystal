	object_const_def ; object_event constants
	const BATTLETENTGENERATOR_CLERK_1
	const BATTLETENTGENERATOR_CLERK_2
	const BATTLETENTGENERATOR_CLERK_3
	const BATTLETENTGENERATOR_CLERK_4
	const BATTLETENTGENERATOR_LARRY
	const BATTLETENTGENERATOR_ONIXTRET
	const BATTLETENTGENERATOR_CHIQUIRTLE
	const BATTLETENTGENERATOR_HOOTDUO
	const BATTLETENTGENERATOR_TOGEKEY
	const BATTLETENTGENERATOR_HOPPORITA
	const BATTLETENTGENERATOR_WOOCHUM

BattleTentGenerator_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED
	
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
	
BattleTentGeneratorLarryBattleRight:
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement BATTLETENTGENERATOR_LARRY, BattleTentGeneratorLarryMovementRight
	sjump BattleTentGeneratorLarryBattleContinue
BattleTentGeneratorLarryBattleLeft:
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	playmusic MUSIC_ROCKET_ENCOUNTER
BattleTentGeneratorLarryBattleContinue:
	applymovement BATTLETENTGENERATOR_LARRY, BattleTentGeneratorLarryMovement
	opentext
	writetext BattleTentGeneratorLarryBeforeBattleText
	waitbutton
	closetext
	winlosstext BattleTentGeneratorLarryWinText, BattleGeneratorLarryLoseText
	loadtrainer RED_LARRY, LARRY_R2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext BattleTentGeneratorLarryAfterBattleText
	waitbutton
	closetext
	applymovement BATTLETENTGENERATOR_LARRY, BattleTentGeneratorLarryLeavesMovement
	disappear BATTLETENTGENERATOR_LARRY
	setevent EVENT_LARRY_IN_BATTLE_TENT
	setscene SCENE_FINISHED
	end
	
BattleTentGeneratorOnixtret:
	opentext
	writetext BattleTentGeneratorDoYouWantOnixtretText
	yesorno
	iffalse BattleTentGeneratorRefused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, BattleTentGeneratorNoRoom
	writetext ReceivedOnixtretText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke ONIXTRET, 50
	setevent EVENT_ONIXTRET_IN_BATTLE_TENT
	disappear BATTLETENTGENERATOR_ONIXTRET
	closetext
	end
	
BattleTentGeneratorChiquirtle:
	opentext
	writetext BattleTentGeneratorDoYouWantChiquirtleText
	yesorno
	iffalse BattleTentGeneratorRefused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, BattleTentGeneratorNoRoom
	writetext ReceivedChiquirtleText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke CHIQUIRTLE, 50
	setevent EVENT_CHIQUIRTLE_IN_BATTLE_TENT
	disappear BATTLETENTGENERATOR_CHIQUIRTLE
	closetext
	end
	
BattleTentGeneratorHootduo:
	opentext
	writetext BattleTentGeneratorDoYouWantHootduoText
	yesorno
	iffalse BattleTentGeneratorRefused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, BattleTentGeneratorNoRoom
	writetext ReceivedHootduoText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke HOOTDUO, 50
	setevent EVENT_HOOTDUO_IN_BATTLE_TENT
	disappear BATTLETENTGENERATOR_HOOTDUO
	closetext
	end
	
BattleTentGeneratorTogekey:
	opentext
	writetext BattleTentGeneratorDoYouWantTogekeyText
	yesorno
	iffalse BattleTentGeneratorRefused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, BattleTentGeneratorNoRoom
	writetext ReceivedTogekeyText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke TOGEKEY, 50
	setevent EVENT_TOGEKEY_IN_BATTLE_TENT
	disappear BATTLETENTGENERATOR_TOGEKEY
	closetext
	end
	
BattleTentGeneratorHopporita:
	opentext
	writetext BattleTentGeneratorDoYouWantHopporitaText
	yesorno
	iffalse BattleTentGeneratorRefused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, BattleTentGeneratorNoRoom
	writetext ReceivedHopporitaText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke HOPPORITA, 50
	setevent EVENT_HOPPORITA_IN_BATTLE_TENT
	disappear BATTLETENTGENERATOR_HOPPORITA
	closetext
	end
	
BattleTentGeneratorWoochum:
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
	setevent EVENT_WOOCHUM_IN_BATTLE_TENT
	disappear BATTLETENTGENERATOR_WOOCHUM
	closetext
	end

BattleTentGeneratorNoRoom:
	writetext BattleTentGeneratorPartyFullText
	waitbutton
BattleTentGeneratorRefused:
	closetext
	end
	
BattleTentGeneratorDoYouWantOnixtretText:
	text "It's an ONIXTRET."
	line "Do you want to"
	cont "raise it?"
	done
	
ReceivedOnixtretText:
	text "<PLAYER> received"
	line "ONIXTRET!"
	done
	
BattleTentGeneratorDoYouWantChiquirtleText:
	text "It's a CHIQUIRTLE."
	line "Do you want to"
	cont "raise it?"
	done
	
ReceivedChiquirtleText:
	text "<PLAYER> received"
	line "CHIQUIRTLE!"
	done
	
BattleTentGeneratorDoYouWantHootduoText:
	text "It's a HOOTDUO."
	line "Do you want to"
	cont "raise it?"
	done
	
ReceivedHootduoText:
	text "<PLAYER> received"
	line "HOOTDUO!"
	done
	
BattleTentGeneratorDoYouWantTogekeyText:
	text "It's a TOGEKEY."
	line "Do you want to"
	cont "raise it?"
	done
	
ReceivedTogekeyText:
	text "<PLAYER> received"
	line "TOGEKEY!"
	done

BattleTentGeneratorDoYouWantHopporitaText:
	text "It's a HOPPORITA."
	line "Do you want to"
	cont "raise it?"
	done
	
ReceivedHopporitaText:
	text "<PLAYER> received"
	line "HOPPORITA!"
	done
	
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
	
BattleTentGeneratorLarryBeforeBattleText:
BattleTentGeneratorLarryWinText:
BattleTentGeneratorLarryLoseText:
BattleTentGeneratorLarryAfterBattleText:
	text "<...>"
	done

BattleTentGeneratorLarryMovementRight:
	step RIGHT
	step_end

BattleTentGeneratorLarryMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step_end

BattleTentGeneratorLarryLeavesMovement:
	teleport_from
	step_end

BattleTentGenerator_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 13, 14, BATTLE_TENT_RUINS, 3
	warp_event  1,  8, ROCKET_HIDEOUT_B4F, 4

	db 2 ; coord events
	coord_event 17,  7, SCENE_DEFAULT, BattleTentGeneratorLarryBattleLeft
	coord_event 18,  7, SCENE_DEFAULT, BattleTentGeneratorLarryBattleRight

	db 0 ; bg events

	db 11 ; object events
	object_event  3, 16, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorStoneClerk1, EVENT_TM_BLACK_MARKET_BATTLE_TENT
	object_event  5, 16, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorStoneClerk2, EVENT_TM_BLACK_MARKET_BATTLE_TENT
	object_event  3, 19, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorStoneClerk3, EVENT_TM_BLACK_MARKET_BATTLE_TENT
	object_event  5, 19, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorStoneClerk4, EVENT_TM_BLACK_MARKET_BATTLE_TENT
	object_event 14,  5, SPRITE_LARRY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LARRY_IN_BATTLE_TENT
	object_event 17,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BattleTentGeneratorOnixtret, EVENT_ONIXTRET_IN_BATTLE_TENT
	object_event 18,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BattleTentGeneratorChiquirtle, EVENT_CHIQUIRTLE_IN_BATTLE_TENT
	object_event 19,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BattleTentGeneratorHoorduo, EVENT_HOOTDUO_IN_BATTLE_TENT
	object_event 17,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BattleTentGeneratorTogekey, EVENT_TOGEKEY_IN_BATTLE_TENT
	object_event 18,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BattleTentGeneratorHopporita, EVENT_HOPPORITA_IN_BATTLE_TENT
	object_event 19,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BattleTentGeneratorWoochum, EVENT_WOOCHUM_IN_BATTLE_TENT
