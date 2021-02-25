RocketHideoutB3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerGruntF6:
	trainer GRUNTF, GRUNTF_6, EVENT_BEAT_ROCKET_GRUNTF_6, GruntF6SeenText, GruntF6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF6AfterBattleText
	waitbutton
	closetext
	end

GruntF6SeenText:
GruntF6BeatenText:
GruntF6AfterBattleText:
	text "<...>"
	done

RocketHideoutB3FPPUp:
	itemball PP_UP

RocketHideoutB3FMaxEther:
	itemball MAX_ETHER

RocketHideoutB3F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 17,  2, ROCKET_HIDEOUT_B2F, 3
	warp_event 11, 14, ROCKET_HIDEOUT_B4F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event 16, 10, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntF6, -1
	object_event 17, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB3FPPUp, EVENT_ROCKET_HIDEOUT_B3F_PP_UP
	object_event  2,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB3FMaxEther, EVENT_ROCKET_HIDEOUT_B3F_MAX_ETHER
