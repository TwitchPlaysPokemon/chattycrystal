 	object_const_def ; object_event constants
	const SILPHCO10F_NURSE
	const MTBATTLETRAINER81
	const MTBATTLETRAINER82
	const MTBATTLETRAINER83
	const MTBATTLETRAINER84
	const MTBATTLETRAINER85
	const MTBATTLETRAINER86
	const MTBATTLETRAINER87
	const MTBATTLETRAINER88
	const MTBATTLETRAINER89
	const MTBATTLETRAINER90

SilphCo10F_MapScripts:
	db 1 ; scene scripts
	scene_script MtBattleDefaultScene ; SCENE_DEFAULT

	db 0 ; callbacks

SilphCo10F_CheckForHeal:
	checkevent EVENT_MT_BATTLE_HEALED_10F
	iftrue MtBattleNurseFinished
	setevent EVENT_MT_BATTLE_HEALED_10F
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

MtBattleTrainer81:
	trainer SCIENTIST, MT_BATTLE_81, EVENT_BEAT_MT_BATTLE_81, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer82:
	trainer GUITARIST, MT_BATTLE_82, EVENT_BEAT_MT_BATTLE_82, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer83:
	trainer CAMPER, MT_BATTLE_83, EVENT_BEAT_MT_BATTLE_83, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer84:
	trainer HIKER, MT_BATTLE_84, EVENT_BEAT_MT_BATTLE_84, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer85:
	trainer SWIMMERM, MT_BATTLE_85, EVENT_BEAT_MT_BATTLE_85, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer86:
	trainer SAGE, MT_BATTLE_86, EVENT_BEAT_MT_BATTLE_86, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer87:
	trainer LASS, MT_BATTLE_87, EVENT_BEAT_MT_BATTLE_87, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer88:
	trainer BIKER, MT_BATTLE_88, EVENT_BEAT_MT_BATTLE_88, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer89:
	trainer YOUNGSTER, MT_BATTLE_89, EVENT_BEAT_MT_BATTLE_89, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer90:
	trainer GUITARIST, MT_BATTLE_90, EVENT_BEAT_MT_BATTLE_90, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle


SilphCo10F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  0,  0, SILPH_CO_ELEVATOR, 2
	warp_event  3,  0, SILPH_CO_11F, 3 
	warp_event 13,  0, SILPH_CO_9F, 2

	db 1 ; coord events
	coord_event 13, 1, SCENE_DEFAULT, SilphCo10F_CheckForHeal

	db 0 ; bg events

	db 11 ; object events
	object_event  12,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo10F_CheckForHeal, -1
	object_event  15,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer81, -1
	object_event  11,  4, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, MtBattleTrainer82, -1
	object_event   9,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer83, -1
	object_event   9,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, MtBattleTrainer84, -1
	object_event   7,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, MtBattleTrainer85, -1
	object_event   5,  1, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, MtBattleTrainer86, -1
	object_event   5,  7, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer87, -1
	object_event   0,  5, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, MtBattleTrainer88, -1
	object_event   0,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer89, -1
	object_event   3,  2, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, MtBattleTrainer90, -1
