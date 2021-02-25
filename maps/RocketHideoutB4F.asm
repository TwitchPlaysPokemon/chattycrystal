RocketHideoutB4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

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
	text "<...>"
	done

RocketHideoutB4FLiftKey:
	itemball LIFT_KEY

RocketHideoutB4FRevivalHerb:
	itemball REVIVAL_HERB

RocketHideoutB4FLevelBall:
	itemball LEVEL_BALL

RocketHideoutB4FBlackglasses:
	itemball BLACKGLASSES

RocketHideoutB4F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 11, 10, ROCKET_HIDEOUT_B3F, 2
	warp_event 16, 15, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 17, 15, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 19, 12, BATTLE_TENT_GENERATOR, 2

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  9,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntM32, -1
	object_event  4,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4FLiftKey, EVENT_ROCKET_HIDEOUT_B4F_LIFT_KEY
	object_event  3, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4FRevivalHerb, EVENT_ROCKET_HIDEOUT_B4F_REVIVAL_HERB
	object_event 18,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4FLevelBall, EVENT_ROCKET_HIDEOUT_B4F_LEVEL_BALL
	object_event  6, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4FBlackglasses, EVENT_ROCKET_HIDEOUT_B4F_BLACKGLASSES
