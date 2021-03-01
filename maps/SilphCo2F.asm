	object_const_def ; object_event constants
	const SILPHCO2F_NURSE
	const MTBATTLETRAINER1
	const MTBATTLETRAINER2
	const MTBATTLETRAINER3
	const MTBATTLETRAINER4
	const MTBATTLETRAINER5
	const MTBATTLETRAINER6
	const MTBATTLETRAINER7
	const MTBATTLETRAINER8
	const MTBATTLETRAINER9
	const MTBATTLETRAINER10

SilphCo2F_MapScripts:
	db 1 ; scene scripts
	scene_script MtBattleDefaultScene ; SCENE_DEFAULT

	db 0 ; callbacks

SilphCo2F_CheckForHeal:
	checkevent EVENT_MT_BATTLE_HEALED_2F
	iftrue MtBattleNurseFinished
	setevent EVENT_MT_BATTLE_HEALED_2F
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

MtBattleTrainer1:
	trainer SUPER_NERD, MT_BATTLE_1, EVENT_BEAT_MT_BATTLE_1, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer2:
	trainer SWIMMERF, MT_BATTLE_2, EVENT_BEAT_MT_BATTLE_2, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer3:
	trainer BIKER, MT_BATTLE_3, EVENT_BEAT_MT_BATTLE_3, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer4:
	trainer BEAUTY, MT_BATTLE_4, EVENT_BEAT_MT_BATTLE_4, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer5:
	trainer TEACHER, MT_BATTLE_5, EVENT_BEAT_MT_BATTLE_5, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer6:
	trainer SAGE, MT_BATTLE_6, EVENT_BEAT_MT_BATTLE_6, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer7:
	trainer BOARDER, MT_BATTLE_7, EVENT_BEAT_MT_BATTLE_7, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer8:
	trainer POKEFANF, MT_BATTLE_8, EVENT_BEAT_MT_BATTLE_8, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer9:
	trainer BLACKBELT_T, MT_BATTLE_9, EVENT_BEAT_MT_BATTLE_9, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer10:
	trainer BIRD_KEEPER, MT_BATTLE_10, EVENT_BEAT_MT_BATTLE_10, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle


SilphCo2F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2,  0, SILPH_CO_ELEVATOR, 2
	warp_event  5,  0, SILPH_CO_3F, 3 
	warp_event 19,  0, SILPH_CO_1F, 4

	db 1 ; coord events
	coord_event 19,  1, SCENE_DEFAULT, SilphCo2F_CheckForHeal

	db 0 ; bg events

	db 11 ; object events
	object_event 18,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo2F_CheckForHeal, -1
	object_event 18,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, MtBattleTrainer1, -1
	object_event 22,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer2, -1
	object_event 19, 13, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer3, -1
	object_event 16,  9, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, MtBattleTrainer4, -1
	object_event 14,  9, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, MtBattleTrainer5, -1
	object_event 12, 13, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, MtBattleTrainer6, -1
	object_event 10,  9, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, MtBattleTrainer7, -1
	object_event  6,  9, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, MtBattleTrainer8, -1
	object_event  0,  8, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer9, -1
	object_event  3,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer10, -1
