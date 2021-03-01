	object_const_def ; object_event constants
	const SILPHCO3F_NURSE
	const MTBATTLETRAINER11
	const MTBATTLETRAINER12
	const MTBATTLETRAINER13
	const MTBATTLETRAINER14
	const MTBATTLETRAINER15
	const MTBATTLETRAINER16
	const MTBATTLETRAINER17
	const MTBATTLETRAINER18
	const MTBATTLETRAINER19
	const MTBATTLETRAINER20

SilphCo3F_MapScripts:
	db 1 ; scene scripts
	scene_script MtBattleDefaultScene ; SCENE_DEFAULT

	db 0 ; callbacks

SilphCo3F_CheckForHeal:
	checkevent EVENT_MT_BATTLE_HEALED_3F
	iftrue MtBattleNurseFinished
	setevent EVENT_MT_BATTLE_HEALED_3F
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

MtBattleTrainer11:
	trainer POKEFANM, MT_BATTLE_11, EVENT_BEAT_MT_BATTLE_11, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer12:
	trainer CAMPER, MT_BATTLE_12, EVENT_BEAT_MT_BATTLE_12, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer13:
	trainer MEDIUM, MT_BATTLE_13, EVENT_BEAT_MT_BATTLE_13, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer14:
	trainer BLACKBELT_T, MT_BATTLE_14, EVENT_BEAT_MT_BATTLE_14, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer15:
	trainer GUITARIST, MT_BATTLE_15, EVENT_BEAT_MT_BATTLE_15, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer16:
	trainer TEACHER, MT_BATTLE_16, EVENT_BEAT_MT_BATTLE_16, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer17:
	trainer PICNICKER, MT_BATTLE_17, EVENT_BEAT_MT_BATTLE_17, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer18:
	trainer SCIENTIST, MT_BATTLE_18, EVENT_BEAT_MT_BATTLE_18, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer19:
	trainer COOLTRAINERM, MT_BATTLE_19, EVENT_BEAT_MT_BATTLE_19, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer20:
	trainer YOUNGSTER, MT_BATTLE_20, EVENT_BEAT_MT_BATTLE_20, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle


SilphCo3F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  0,  0, SILPH_CO_ELEVATOR, 2
	warp_event  3,  0, SILPH_CO_4F, 3 
	warp_event 13,  0, SILPH_CO_2F, 2

	db 1 ; coord events
	coord_event 13, 1, SCENE_DEFAULT, SilphCo3F_CheckForHeal

	db 0 ; bg events

	db 11 ; object events
	object_event  12,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo3F_CheckForHeal, -1
	object_event  14,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 8, MtBattleTrainer11, -1
	object_event  12,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer12, -1
	object_event  10,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer13, -1
	object_event   9,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer14, -1
	object_event  10,  1, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 8, MtBattleTrainer15, -1
	object_event   7,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 8, MtBattleTrainer16, -1
	object_event   7,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer17, -1
	object_event   4,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, MtBattleTrainer18, -1
	object_event   3,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, MtBattleTrainer19, -1
	object_event   1,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 8, MtBattleTrainer20, -1
