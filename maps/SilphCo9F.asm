 	object_const_def ; object_event constants
	const SILPHCO9F_NURSE
	const MTBATTLETRAINER71
	const MTBATTLETRAINER72
	const MTBATTLETRAINER73
	const MTBATTLETRAINER74
	const MTBATTLETRAINER75
	const MTBATTLETRAINER76
	const MTBATTLETRAINER77
	const MTBATTLETRAINER78
	const MTBATTLETRAINER79
	const MTBATTLETRAINER80

SilphCo9F_MapScripts:
	db 1 ; scene scripts
	scene_script MtBattleDefaultScene ; SCENE_DEFAULT

	db 0 ; callbacks

SilphCo9F_CheckForHeal:
	checkevent EVENT_MT_BATTLE_HEALED_9F
	iftrue MtBattleNurseFinished
	setevent EVENT_MT_BATTLE_HEALED_9F
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

MtBattleTrainer71:
	trainer TEACHER, MT_BATTLE_71, EVENT_BEAT_MT_BATTLE_71, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer72:
	trainer BOARDER, MT_BATTLE_72, EVENT_BEAT_MT_BATTLE_72, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer73:
	trainer COOLTRAINERF, MT_BATTLE_73, EVENT_BEAT_MT_BATTLE_73, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer74:
	trainer BLACKBELT_T, MT_BATTLE_74, EVENT_BEAT_MT_BATTLE_74, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer75:
	trainer OFFICER, MT_BATTLE_75, EVENT_BEAT_MT_BATTLE_75, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer76:
	trainer JUGGLER, MT_BATTLE_76, EVENT_BEAT_MT_BATTLE_76, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer77:
	trainer SKIER, MT_BATTLE_77, EVENT_BEAT_MT_BATTLE_77, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer78:
	trainer SCIENTIST, MT_BATTLE_78, EVENT_BEAT_MT_BATTLE_78, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer79:
	trainer TEACHER, MT_BATTLE_79, EVENT_BEAT_MT_BATTLE_79, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer80:
	trainer KIMONO_GIRL, MT_BATTLE_80, EVENT_BEAT_MT_BATTLE_80, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle


SilphCo9F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  0,  0, SILPH_CO_ELEVATOR, 2
	warp_event  3,  0, SILPH_CO_10F, 3 
	warp_event 13,  0, SILPH_CO_8F, 2

	db 1 ; coord events
	coord_event 13, 1, SCENE_DEFAULT, SilphCo9F_CheckForHeal

	db 0 ; bg events

	db 11 ; object events
	object_event  12,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo9F_CheckForHeal, -1
	object_event  15,  5, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer71, -1
	object_event  11,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, MtBattleTrainer72, -1
	object_event   9,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, MtBattleTrainer73, -1
	object_event   9,  2, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, MtBattleTrainer74, -1
	object_event   7,  5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, MtBattleTrainer75, -1
	object_event   5,  1, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, MtBattleTrainer76, -1
	object_event   5,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer77, -1
	object_event   0,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer78, -1
	object_event   0,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer79, -1
	object_event   3,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer80, -1
