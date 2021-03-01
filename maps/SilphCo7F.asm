 	object_const_def ; object_event constants
	const SILPHCO7F_NURSE
	const MTBATTLETRAINER51
	const MTBATTLETRAINER52
	const MTBATTLETRAINER53
	const MTBATTLETRAINER54
	const MTBATTLETRAINER55
	const MTBATTLETRAINER56
	const MTBATTLETRAINER57
	const MTBATTLETRAINER58
	const MTBATTLETRAINER59
	const MTBATTLETRAINER60

SilphCo7F_MapScripts:
	db 1 ; scene scripts
	scene_script MtBattleDefaultScene ; SCENE_DEFAULT

	db 0 ; callbacks

SilphCo7F_CheckForHeal:
	checkevent EVENT_MT_BATTLE_HEALED_7F
	iftrue MtBattleNurseFinished
	setevent EVENT_MT_BATTLE_HEALED_7F
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

MtBattleTrainer51:
	trainer SCIENTIST, MT_BATTLE_51, EVENT_BEAT_MT_BATTLE_51, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer52:
	trainer JUGGLER, MT_BATTLE_52, EVENT_BEAT_MT_BATTLE_52, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer53:
	trainer HIKER, MT_BATTLE_53, EVENT_BEAT_MT_BATTLE_53, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer54:
	trainer BEAUTY, MT_BATTLE_54, EVENT_BEAT_MT_BATTLE_54, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer55:
	trainer SWIMMERM, MT_BATTLE_55, EVENT_BEAT_MT_BATTLE_55, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer56:
	trainer TEACHER, MT_BATTLE_56, EVENT_BEAT_MT_BATTLE_56, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer57:
	trainer SKIER, MT_BATTLE_57, EVENT_BEAT_MT_BATTLE_57, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer58:
	trainer BOARDER, MT_BATTLE_58, EVENT_BEAT_MT_BATTLE_58, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer59:
	trainer SCIENTIST, MT_BATTLE_59, EVENT_BEAT_MT_BATTLE_59, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer60:
	trainer POKEFANF, MT_BATTLE_60, EVENT_BEAT_MT_BATTLE_60, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle


SilphCo7F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  0,  0, SILPH_CO_ELEVATOR, 2
	warp_event  3,  0, SILPH_CO_8F, 3 
	warp_event 13,  0, SILPH_CO_6F, 2

	db 1 ; coord events
	coord_event 13, 1, SCENE_DEFAULT, SilphCo7F_CheckForHeal

	db 0 ; bg events

	db 11 ; object events
	object_event  12,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo7F_CheckForHeal, -1
	object_event  15,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer51, -1
	object_event  11,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, MtBattleTrainer52, -1
	object_event   9,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, MtBattleTrainer53, -1
	object_event   9,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, MtBattleTrainer54, -1
	object_event   7,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, MtBattleTrainer55, -1
	object_event   5,  1, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, MtBattleTrainer56, -1
	object_event   5,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer57, -1
	object_event   0,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer58, -1
	object_event   0,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer59, -1
	object_event   3,  2, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer60, -1
