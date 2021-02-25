	object_const_def ; object_event constants
	const ROCKETHIDEOUTB2F_GRUNTF_6
	const ROCKETHIDEOUTB2F_CHIQUIRTLE
	const ROCKETHIDEOUTB2F_HOOTDUO
	const ROCKETHIDEOUTB2F_RARE_CANDY

RocketHideoutB2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

RocketHideoutB2FUpGrade:
	itemball UP_GRADE

RocketHideoutB2FRareCandy:
	itemball RARE_CANDY

GruntF6SeenText:
GruntF6BeatenText:
GruntF6AfterBattleText:
	text "<...>"
	done
	
TrainerGruntF6:
	trainer GRUNTF, GRUNTF_6, EVENT_BEAT_ROCKET_GRUNTF_6, GruntF6SeenText, GruntF6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF6AfterBattleText
	waitbutton
	closetext
	end
	
RocketHideoutB2FChiquirtle:
	refreshscreen
	pokepic CHIQUIRTLE
	cry CHIQUIRTLE
	waitbutton
	closepokepic
	opentext
	writetext RocketHideoutB2FDoYouWantChiquirtleText
	yesorno
	iffalse RocketHideoutB2FRefused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, RocketHideoutB2FNoRoom
	writetext ReceivedChiquirtleText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke CHIQUIRTLE, 50
	setevent EVENT_CHIQUIRTLE_IN_ROCKET_HIDEOUT
	disappear ROCKETHIDEOUTB2F_CHIQUIRTLE
	closetext
	end
	
RocketHideoutB2FHootduo:
	refreshscreen
	pokepic HOOTDUO
	cry HOOTDUO
	waitbutton
	closepokepic
	opentext
	writetext RocketHideoutB2FDoYouWantHootduoText
	yesorno
	iffalse RocketHideoutB2FRefused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, RocketHideoutB2FNoRoom
	writetext ReceivedHootduoText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke HOOTDUO, 50
	setevent EVENT_HOOTDUO_IN_ROCKET_HIDEOUT
	disappear ROCKETHIDEOUTB2F_HOOTDUO
	closetext
	end
	
RocketHideoutB2FNoRoom:
	writetext RocketHideoutB2FPartyFullText
	waitbutton
RocketHideoutB2FRefused:
	closetext
	end
	
RocketHideoutB2FDoYouWantChiquirtleText:
	text "It's a CHIQUIRTLE."
	line "Do you want to"
	cont "raise it?"
	done
	
ReceivedChiquirtleText:
	text "<PLAYER> received"
	line "CHIQUIRTLE!"
	done
	
RocketHideoutB2FDoYouWantHootduoText:
	text "It's a HOOTDUO."
	line "Do you want to"
	cont "raise it?"
	done
	
ReceivedHootduoText:
	text "<PLAYER> received"
	line "HOOTDUO!"
	done
	
RocketHideoutB2FPartyFullText:
	text "Your party"
	line "is full<...>"
	done

RocketHideoutB2F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 27,  2, ROCKET_HIDEOUT_B1F, 2
	warp_event 21, 16, ROCKET_HIDEOUT_B1F, 3
	warp_event 21,  2, ROCKET_HIDEOUT_B3F, 1
	warp_event 24, 13, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 25, 13, ROCKET_HIDEOUT_ELEVATOR, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event 26,  5, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerGruntF6, -1
	object_event  3, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RocketHideoutB2FChiquirtle, EVENT_CHIQUIRTLE_IN_ROCKET_HIDEOUT
	object_event 15,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RocketHideoutB2FHootduo, EVENT_HOOTDUO_IN_ROCKET_HIDEOUT
	object_event 16,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB2FRareCandy, EVENT_ROCKET_HIDEOUT_B2F_RARE_CANDY
