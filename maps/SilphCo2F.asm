	object_const_def ; object_event constants

SilphCo2F_MapScripts:
	db 1 ; scene scripts
	scene_script MtBattleDefaultScene ; SCENE_DEFAULT

	db 0 ; callbacks

SilphCo2F_CheckForHeal:
	checkflag EVENT_MT_BATTLE_HEALED_2F
	iffalse SilphCo2F_FirstTimeHeal
	end

SilphCo2F_FirstTimeHeal:
	setflag EVENT_MT_BATTLE_HEALED_2F
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
	warp_event  0,  0, SILPH_CO_ELEVATOR, 2
	warp_event  3,  0, SILPH_CO_3F, 3 
	warp_event 13,  0, SILPH_CO_1F, 4

	db 1 ; coord events
	coord_event 13, 1, SCENE_DEFAULT, SilphCo2F_FirstTimeHeal

	db 0 ; bg events

	db 11 ; object events
	object_event  12,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtBattleNurseFinished, -1
	object_event   9,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 8, MtBattleTrainer1, -1
	object_event  15,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 8, MtBattleTrainer2, -1
	object_event  12,  7, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 8, MtBattleTrainer3, -1
	object_event  10,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 8, MtBattleTrainer4, -1
	object_event   8,  5, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 8, MtBattleTrainer5, -1
	object_event   7,  7, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 8, MtBattleTrainer6, -1
	object_event   6,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 8, MtBattleTrainer7, -1
	object_event   4,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 8, MtBattleTrainer8, -1
	object_event   0,  4, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 8, MtBattleTrainer9, -1
	object_event   3,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 8, MtBattleTrainer10, -1
