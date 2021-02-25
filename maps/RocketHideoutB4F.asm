	object_const_def ; object_event constants
	const ROCKETHIDEOUTB4F_LARRY
	const ROCKETHIDEOUTB4F_GRUNT_32
	const ROCKETHIDEOUTB4F_REVIVAL_HERB
	const ROCKETHIDEOUTB4F_TOGEKEY
	const ROCKETHIDEOUTB4F_HOPPORITA

RocketHideoutB4F_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED
	
	db 0 ; callbacks
	
.DummyScene
	end
	
RocketHideoutB4FLarryBattleDown:
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement ROCKETHIDEOUTB4F_LARRY, RocketHideoutB4FLarryMovementDown
	sjump RocketHideoutB4FLarryBattleContinue
RocketHideoutB4FLarryBattleUp:
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	playmusic MUSIC_ROCKET_ENCOUNTER
RocketHideoutB4FLarryBattleContinue:
	applymovement ROCKETHIDEOUTB4F_LARRY, RocketHideoutB4FLarryMovement
	opentext
	writetext RocketHideoutB4FLarryBeforeBattleText
	waitbutton
	closetext
	winlosstext RocketHideoutB4FLarryWinText, RocketHideoutB4FLarryLoseText
	loadtrainer RED_LARRY, LARRY_R2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext RocketHideoutB4FLarryAfterBattleText
	waitbutton
	verbosegiveitem LIFT_KEY
	writetext RocketHideoutB4FLarryAfterLiftKeyText
	waitbutton
	closetext
	applymovement ROCKETHIDEOUTB4F_LARRY, RocketHideoutB4FLarryLeavesMovement
	disappear ROCKETHIDEOUTB4F_LARRY
	setevent EVENT_LARRY_IN_ROCKET_HIDEOUT
	setscene SCENE_FINISHED
	musicfadeout MUSIC_NONE, 20
	playmapmusic
	end
	
RocketHideoutB4FLarryMovementDown:
	step DOWN
	step_end

RocketHideoutB4FLarryMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	turn_head RIGHT
	step_end

RocketHideoutB4FLarryLeavesMovement:
	teleport_from
	step_end

TrainerGruntM32:
	trainer GRUNTM, GRUNTM_32, EVENT_BEAT_ROCKET_GRUNTM_32, GruntM32SeenText, GruntM32BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM32AfterBattleText
	waitbutton
	closetext
	end

GruntM32SeenText:
GruntM32BeatenText:
GruntM32AfterBattleText:
RocketHideoutB4FLarryBeforeBattleText:
RocketHideoutB4FLarryWinText:
RocketHideoutB4FLarryLoseText:
RocketHideoutB4FLarryAfterBattleText:
RocketHideoutB4FLarryAfterLiftKeyText:
	text "<...>"
	done
	
RocketHideoutB4FHopporita:
	refreshscreen
	pokepic HOPPORITA
	cry HOPPORITA
	waitbutton
	closepokepic
	opentext
	writetext RocketHideoutB4FDoYouWantHopporitaText
	yesorno
	iffalse RocketHideoutB4FRefused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, RocketHideoutB4FNoRoom
	writetext ReceivedHopporitaText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke HOPPORITA, 50
	setevent EVENT_HOPPORITA_IN_ROCKET_HIDEOUT
	disappear ROCKETHIDEOUTB4F_HOPPORITA
	closetext
	end
	
RocketHideoutB4FTogekey:
	refreshscreen
	pokepic TOGEKEY
	cry TOGEKEY
	waitbutton
	closepokepic
	opentext
	writetext RocketHideoutB4FDoYouWantTogekeyText
	yesorno
	iffalse RocketHideoutB4FRefused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, RocketHideoutB4FNoRoom
	writetext ReceivedTogekeyText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke TOGEKEY, 50
	setevent EVENT_TOGEKEY_IN_ROCKET_HIDEOUT
	disappear ROCKETHIDEOUTB4F_TOGEKEY
	closetext
	end
	
RocketHideoutB4FNoRoom:
	writetext RocketHideoutB4FPartyFullText
	waitbutton
RocketHideoutB4FRefused:
	closetext
	end
	
RocketHideoutB4FDoYouWantHopporitaText:
	text "It's a HOPPORITA."
	line "Do you want to"
	cont "raise it?"
	done
	
ReceivedHopporitaText:
	text "<PLAYER> received"
	line "HOPPORITA!"
	done
	
RocketHideoutB4FDoYouWantTogekeyText:
	text "It's a TOGEKEY."
	line "Do you want to"
	cont "raise it?"
	done
	
ReceivedTogekeyText:
	text "<PLAYER> received"
	line "TOGEKEY!"
	done
	
RocketHideoutB4FPartyFullText:
	text "Your party"
	line "is full<...>"
	done

RocketHideoutB4FRevivalHerb:
	itemball REVIVAL_HERB

RocketHideoutB4F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 11, 10, ROCKET_HIDEOUT_B3F, 2
	warp_event 16, 15, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 17, 15, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 19, 12, BATTLE_TENT_GENERATOR, 2

	db 2 ; coord events
	coord_event  7,  3, SCENE_DEFAULT, RocketHideoutB4FLarryBattleUp
	coord_event  7,  4, SCENE_DEFAULT, RocketHideoutB4FLarryBattleDown

	db 0 ; bg events

	db 5 ; object events
	object_event  2,  2, SPRITE_LARRY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LARRY_IN_ROCKET_HIDEOUT
	object_event  9,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntM32, -1
	object_event  3, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4FRevivalHerb, EVENT_ROCKET_HIDEOUT_B4F_REVIVAL_HERB
	object_event 18,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RocketHideoutB4FTogekey, EVENT_TOGEKEY_IN_ROCKET_HIDEOUT
	object_event  6, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RocketHideoutB4FHopporita, EVENT_HOPPORITA_IN_ROCKET_HIDEOUT
