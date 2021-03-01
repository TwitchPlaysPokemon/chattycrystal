 	object_const_def ; object_event constants
	const SILPHCO6F_NURSE
	const MTBATTLETRAINER41
	const MTBATTLETRAINER42
	const MTBATTLETRAINER43
	const MTBATTLETRAINER44
	const MTBATTLETRAINER45
	const MTBATTLETRAINER46
	const MTBATTLETRAINER47
	const MTBATTLETRAINER48
	const MTBATTLETRAINER49
	const MTBATTLETRAINER50

SilphCo6F_MapScripts:
	db 1 ; scene scripts
	scene_script MtBattleDefaultScene ; SCENE_DEFAULT

	db 0 ; callbacks

SilphCo6F_CheckForHeal:
	checkevent EVENT_MT_BATTLE_HEALED_6F
	iftrue MtBattleNurseFinished
	setevent EVENT_MT_BATTLE_HEALED_6F
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

MtBattleTrainer41:
	trainer SAGE, MT_BATTLE_41, EVENT_BEAT_MT_BATTLE_41, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer42:
	trainer POKEFANM, MT_BATTLE_42, EVENT_BEAT_MT_BATTLE_42, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer43:
	trainer GUITARIST, MT_BATTLE_43, EVENT_BEAT_MT_BATTLE_43, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer44:
	trainer TEACHER, MT_BATTLE_44, EVENT_BEAT_MT_BATTLE_44, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer45:
	trainer SUPER_NERD, MT_BATTLE_45, EVENT_BEAT_MT_BATTLE_45, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer46:
	trainer SKIER, MT_BATTLE_46, EVENT_BEAT_MT_BATTLE_46, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer47:
	trainer BLACKBELT_T, MT_BATTLE_47, EVENT_BEAT_MT_BATTLE_47, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer48:
	trainer COOLTRAINERF, MT_BATTLE_48, EVENT_BEAT_MT_BATTLE_48, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer49:
	trainer BOARDER, MT_BATTLE_49, EVENT_BEAT_MT_BATTLE_49, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer50:
	trainer COOLTRAINERM, MT_BATTLE_50, EVENT_BEAT_MT_BATTLE_50, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle


SilphCo6F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2,  0, SILPH_CO_ELEVATOR, 2
	warp_event  5,  0, SILPH_CO_7F, 3 
	warp_event 19,  0, SILPH_CO_5F, 2

	db 1 ; coord events
	coord_event 19,  1, SCENE_DEFAULT, SilphCo6F_CheckForHeal

	db 0 ; bg events

	db 11 ; object events
	object_event 18,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo6F_CheckForHeal, -1
	object_event 12,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer41, -1
	object_event 17, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, MtBattleTrainer42, -1
	object_event 20,  6, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, MtBattleTrainer43, -1
	object_event 23, 11, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer44, -1
	object_event 17, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer45, -1
	object_event 15, 12, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, MtBattleTrainer46, -1
	object_event 13, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer47, -1
	object_event  9, 12, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer48, -1
	object_event  4,  9, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer49, -1
	object_event  0,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, MtBattleTrainer50, -1
