	object_const_def ; object_event constants
	const ROCKETHIDEOUTB1F_GRUNT_31
	const ROCKETHIDEOUTB1F_SODA_POP
	const ROCKETHIDEOUTB1F_ONIXTRET

RocketHideoutB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks


TrainerGruntM31:
	trainer GRUNTM, GRUNTM_31, EVENT_BEAT_ROCKET_GRUNTM_31, GruntM31SeenText, GruntM31BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM31AfterBattleText
	waitbutton
	closetext
	end
	
RocketHideoutB1FOnixtret:
	refreshscreen
	pokepic ONIXTRET
	cry ONIXTRET
	waitbutton
	closepokepic
	opentext
	writetext RocketHideoutB1FDoYouWantOnixtretText
	yesorno
	iffalse .Refused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedOnixtretText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke ONIXTRET, 50
	setevent EVENT_ONIXTRET_IN_ROCKET_HIDEOUT
	disappear ROCKETHIDEOUTB1F_ONIXTRET
	closetext
	end
	
.NoRoom:
	writetext RocketHideoutB1FPartyFullText
	waitbutton
.Refused:
	closetext
	end
	
RocketHideoutB1FDoYouWantOnixtretText:
	text "It's an ONIXTRET."
	line "Do you want to"
	cont "raise it?"
	done
	
ReceivedOnixtretText:
	text "<PLAYER> received"
	line "ONIXTRET!"
	done
	
RocketHideoutB1FPartyFullText:
	text "Your party"
	line "is full<...>"
	done

GruntM31SeenText:
GruntM31BeatenText:
GruntM31AfterBattleText:
	text "<...>"
	done

RocketHideoutB1FSodaPop:
	itemball SODA_POP

RocketHideoutB1F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 13,  2, CELADON_GAME_CORNER, 3
	warp_event 15,  2, ROCKET_HIDEOUT_B2F, 1
	warp_event 13, 24, ROCKET_HIDEOUT_B2F, 2
	warp_event 16, 19, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 17, 19, ROCKET_HIDEOUT_ELEVATOR, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event 10,  7, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 5, TrainerGruntM31, -1
	object_event  3, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB1FSodaPop, EVENT_ROCKET_HIDEOUT_B1F_SODA_POP
	object_event  9, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RocketHideoutB1FOnixtret, EVENT_ONIXTRET_IN_ROCKET_HIDEOUT


