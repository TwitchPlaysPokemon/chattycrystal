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

.DummyScene
	end


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
	winlosstext BattleTentGeneratorLarryWinText, BattleTentGeneratorLarryLoseText
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
	musicfadeout MUSIC_NONE, 20
	playmapmusic
	end

BattleTentGeneratorOnixtret:
	getmonname STRING_BUFFER_4, ONIXTRET
	opentext
	writetext BattleTentGenerator_DoYouWantOnixtretText
	yesorno
	iffalse BattleTentGeneratorRefused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, BattleTentGeneratorNoRoom
	writetext BattleTentGenerator_ReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke ONIXTRET, 50
	setevent EVENT_ONIXTRET_IN_BATTLE_TENT
	disappear BATTLETENTGENERATOR_ONIXTRET
	closetext
	end

BattleTentGeneratorChiquirtle:
	getmonname STRING_BUFFER_4, CHIQUIRTLE
	opentext
	writetext BattleTentGenerator_DoYouWantMonText
	yesorno
	iffalse BattleTentGeneratorRefused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, BattleTentGeneratorNoRoom
	writetext BattleTentGenerator_ReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke CHIQUIRTLE, 50
	setevent EVENT_CHIQUIRTLE_IN_BATTLE_TENT
	disappear BATTLETENTGENERATOR_CHIQUIRTLE
	closetext
	end

BattleTentGeneratorHootduo:
	getmonname STRING_BUFFER_4, HOOTDUO
	opentext
	writetext BattleTentGenerator_DoYouWantMonText
	yesorno
	iffalse BattleTentGeneratorRefused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, BattleTentGeneratorNoRoom
	writetext BattleTentGenerator_ReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke HOOTDUO, 50
	setevent EVENT_HOOTDUO_IN_BATTLE_TENT
	disappear BATTLETENTGENERATOR_HOOTDUO
	closetext
	end

BattleTentGeneratorTogekey:
	getmonname STRING_BUFFER_4, TOGEKEY
	opentext
	writetext BattleTentGenerator_DoYouWantMonText
	yesorno
	iffalse BattleTentGeneratorRefused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, BattleTentGeneratorNoRoom
	writetext BattleTentGenerator_ReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke TOGEKEY, 50
	setevent EVENT_TOGEKEY_IN_BATTLE_TENT
	disappear BATTLETENTGENERATOR_TOGEKEY
	closetext
	end

BattleTentGeneratorHopporita:
	getmonname STRING_BUFFER_4, HOPPORITA
	opentext
	writetext BattleTentGenerator_DoYouWantMonText
	yesorno
	iffalse BattleTentGeneratorRefused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, BattleTentGeneratorNoRoom
	writetext BattleTentGenerator_ReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke HOPPORITA, 50
	setevent EVENT_HOPPORITA_IN_BATTLE_TENT
	disappear BATTLETENTGENERATOR_HOPPORITA
	closetext
	end

BattleTentGeneratorWoochum:
	getmonname STRING_BUFFER_4, WOOCHUM
	opentext
	writetext BattleTentGenerator_DoYouWantMonText
	yesorno
	iffalse BattleTentGeneratorRefused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, BattleTentGeneratorNoRoom
	writetext BattleTentGenerator_ReceivedMonText
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

BattleTentGenerator_DoYouWantOnixtretText:
	text "It's an @"
	text_asm
	ld hl, BattleTentGenerator_DoYouWantMonText.before_species_name
	ret

BattleTentGenerator_ReceivedMonText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer4
	text "!"
	done

BattleTentGenerator_DoYouWantMonText:
	text "It's a @"
.before_species_name
	text_ram wStringBuffer4
	text "."
	line "Do you want to"
	cont "raise it?"
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
	object_event 13,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorOnixtret, EVENT_ONIXTRET_IN_BATTLE_TENT
	object_event 14,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorChiquirtle, EVENT_CHIQUIRTLE_IN_BATTLE_TENT
	object_event 15,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorHootduo, EVENT_HOOTDUO_IN_BATTLE_TENT
	object_event 16,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorTogekey, EVENT_TOGEKEY_IN_BATTLE_TENT
	object_event 13,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorHopporita, EVENT_HOPPORITA_IN_BATTLE_TENT
	object_event 16,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTentGeneratorWoochum, EVENT_WOOCHUM_IN_BATTLE_TENT
