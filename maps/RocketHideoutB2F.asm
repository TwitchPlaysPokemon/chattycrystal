RocketHideoutB2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

RocketHideoutB2FUpGrade:
	itemball UP_GRADE

RocketHideoutB2FRareCandy:
	itemball RARE_CANDY

RocketHideoutB2FHardStone:
	itemball HARD_STONE

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

	db 3 ; object events
	object_event  3, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB2FUpGrade, EVENT_ROCKET_HIDEOUT_B2F_UP_GRADE
	object_event 16,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB2FRareCandy, EVENT_ROCKET_HIDEOUT_B2F_RARE_CANDY
	object_event 26, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB2FHardStone, EVENT_ROCKET_HIDEOUT_B2F_HARD_ROCK
