	object_const_def ; object_event constants
	const ROCKETHIDEOUTB3F_WOOPER_GMMTMT
	const ROCKETHIDEOUTB3F_MAX_ETHER
	const ROCKETHIDEOUTB3F_UP_GRADE
	const ROCKETHIDEOUTB3F_NORMAL_BOX_1
	const ROCKETHIDEOUTB3F_NORMAL_BOX_2
	const ROCKETHIDEOUTB3F_NORMAL_BOX_3
	const ROCKETHIDEOUTB3F_NORMAL_BOX_4
	const ROCKETHIDEOUTB3F_NORMAL_BOX_5
	const ROCKETHIDEOUTB3F_NORMAL_BOX_6
	const ROCKETHIDEOUTB3F_GS_BALL

RocketHideoutB3F_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene
	end

RocketHideoutB3FWooperTBattleLeft:
	showemote EMOTE_SHOCK, PLAYER, 15
	showemote EMOTE_SHOCK, ROCKETHIDEOUTB3F_WOOPER_GMMTMT, 15
	special FadeOutMusic
	pause 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement ROCKETHIDEOUTB3F_WOOPER_GMMTMT, RocketHideoutB3FWooperMovementLeft
	sjump RocketHideoutB3FWooperBattleContinue
RocketHideoutB3FWooperTBattleRight:
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	playmusic MUSIC_ROCKET_ENCOUNTER
RocketHideoutB3FWooperBattleContinue:
	applymovement PLAYER, RocketHideoutB3FPlayerFaceRight
	applymovement ROCKETHIDEOUTB3F_WOOPER_GMMTMT, RocketHideoutB3FWooperMovement
	opentext
	writetext RocketHideoutB3FWooperBeforeBattleText
	waitbutton
	closetext
	winlosstext RocketHideoutB3FWooperWinText, RocketHideoutB3FWooperLoseText
	loadtrainer WOOPER_T, GMMTMT
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext RocketHideoutB3FWooperAfterBattleText
	waitbutton
	closetext
	applymovement ROCKETHIDEOUTB3F_WOOPER_GMMTMT, RocketHideoutB3FWooperLeavesMovement
	disappear ROCKETHIDEOUTB3F_WOOPER_GMMTMT
	setevent EVENT_BEAT_GMMTMT
	setscene SCENE_FINISHED
	musicfadeout MUSIC_NONE, 20
	playmapmusic
	end

RocketHideoutB3FWooperMovementLeft:
	step LEFT
	step_end

RocketHideoutB3FWooperMovement:
	step LEFT
	step LEFT
	step_end

RocketHideoutB3FWooperLeavesMovement:
	teleport_from
	step_end

RocketHideoutB3FPlayerFaceRight:
	turn_head RIGHT
	step_end

RocketHideoutB3FWooperBeforeBattleText:
RocketHideoutB3FWooperLoseText:
RocketHideoutB3FWooperWinText:
RocketHideoutB3FWooperAfterBattleText:
	text "<...>"
	done

RocketHideoutB3FUpGrade:
	itemball UP_GRADE

RocketHideoutB3FMaxEther:
	itemball MAX_ETHER

RocketHideoutB3FNormalBox:
	itemball NORMAL_BOX

RocketHideoutB3FGSBall:
	itemball GS_BALL

RocketHideoutB3F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 17,  2, ROCKET_HIDEOUT_B2F, 3
	warp_event 11, 14, ROCKET_HIDEOUT_B4F, 1

	db 2 ; coord events
	coord_event 14, 10, SCENE_DEFAULT, RocketHideoutB3FWooperTBattleLeft
	coord_event 15, 10, SCENE_DEFAULT, RocketHideoutB3FWooperTBattleRight
	db 0 ; bg events

	db 10 ; object events
	object_event 18, 10, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, ObjectEvent, EVENT_BEAT_GMMTMT
	object_event  2,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB3FMaxEther, EVENT_ROCKET_HIDEOUT_B3F_MAX_ETHER
	object_event 12, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB3FUpGrade, EVENT_ROCKET_HIDEOUT_B3F_UP_GRADE
	object_event 18, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB3FNormalBox, EVENT_ROCKET_HIDEOUT_B3F_NORMAL_BOX_1
	object_event 16, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB3FNormalBox, EVENT_ROCKET_HIDEOUT_B3F_NORMAL_BOX_2
	object_event 19, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB3FNormalBox, EVENT_ROCKET_HIDEOUT_B3F_NORMAL_BOX_3
	object_event 17, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB3FNormalBox, EVENT_ROCKET_HIDEOUT_B3F_NORMAL_BOX_4
	object_event 19, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB3FNormalBox, EVENT_ROCKET_HIDEOUT_B3F_NORMAL_BOX_5
	object_event 20, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB3FNormalBox, EVENT_ROCKET_HIDEOUT_B3F_NORMAL_BOX_6
	object_event 18, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB3FGSBall, EVENT_ROCKET_HIDEOUT_B3F_GS_BALL
