	object_const_def ; object_event constants
	const ROCKETHIFROUTB1F_GRUNT_31
	const ROCKETHIFROUTB1F_WOOPER_GMMTMT
	const ROCKETHIFROUTB1F_SODA_POP
	const ROCKETHIFROUTB1F_NORMAL_BOX_1
	const ROCKETHIFROUTB1F_NORMAL_BOX_2
	const ROCKETHIFROUTB1F_NORMAL_BOX_3
	const ROCKETHIFROUTB1F_NORMAL_BOX_4
	const ROCKETHIFROUTB1F_NORMAL_BOX_5
	const ROCKETHIFROUTB1F_NORMAL_BOX_6
	const ROCKETHIFROUTB1F_GS_BALL

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

TrainerWooper:
	trainer WOOPER_T, GMMTMT, EVENT_BEAT_GMMTMT, GMMTMTSeenText, GMMTMTBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GMMTMTAfterBattleText
	waitbutton
	closetext
	applymovement BATTLETENTGENERATOR_LARRY, BattleTentGeneratorLarryLeavesMovement
	end

GMMTMTSeenText:
GMMTMTBeatenText:
GMMTMTAfterBattleText:
GruntM31SeenText:
GruntM31BeatenText:
GruntM31AfterBattleText:
	text "<...>"
	done

RocketHideoutB1FSodaPop:
	itemball SODA_POP

RocketHideoutB1FNormalBox:
	itemball NORMAL_BOX

RocketHideoutB1FGSBall:
	itemball GS_BALL

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

	db 11 ; object events
	object_event 10,  7, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 5, TrainerGruntM31, -1
	object_event 13, 20, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerWooper, EVENT_BEAT_GMMTMT
	object_event  3, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB1FSodaPop, EVENT_ROCKET_HIDEOUT_B1F_SODA_POP
	object_event 12, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB1FNormalBox, EVENT_ROCKET_HIDEOUT_B1F_NORMAL_BOX_1
	object_event 13, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB1FNormalBox, EVENT_ROCKET_HIDEOUT_B1F_NORMAL_BOX_2
	object_event 12, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB1FNormalBox, EVENT_ROCKET_HIDEOUT_B1F_NORMAL_BOX_3
	object_event 11, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB1FNormalBox, EVENT_ROCKET_HIDEOUT_B1F_NORMAL_BOX_4
	object_event 14, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB1FNormalBox, EVENT_ROCKET_HIDEOUT_B1F_NORMAL_BOX_5
	object_event  9, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB1FNormalBox, EVENT_ROCKET_HIDEOUT_B1F_NORMAL_BOX_6
	object_event 13, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB1FGSBall, EVENT_ROCKET_HIDEOUT_B1F_GS_BALL

