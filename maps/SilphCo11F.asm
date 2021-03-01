 	object_const_def ; object_event constants
	const SILPHCO11F_NURSE
	const MTBATTLETRAINER91
	const MTBATTLETRAINER92
	const MTBATTLETRAINER93
	const MTBATTLETRAINER94
	const MTBATTLETRAINER95
	const MTBATTLETRAINER96
	const MTBATTLETRAINER97
	const MTBATTLETRAINER98
	const MTBATTLETRAINER99

SilphCo11F_MapScripts:
	db 1 ; scene scripts
	scene_script MtBattleDefaultScene ; SCENE_DEFAULT

	db 0 ; callbacks

SilphCo11F_CheckForHeal:
	checkevent EVENT_MT_BATTLE_HEALED_11F
	iftrue MtBattleNurseFinished
	setevent EVENT_MT_BATTLE_HEALED_11F
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

MtBattleTrainer91:
	trainer COOLTRAINERM, MT_BATTLE_91, EVENT_BEAT_MT_BATTLE_91, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer92:
	trainer POKEFANM, MT_BATTLE_92, EVENT_BEAT_MT_BATTLE_92, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer93:
	trainer PICNICKER, MT_BATTLE_93, EVENT_BEAT_MT_BATTLE_93, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer94:
	trainer MEDIUM, MT_BATTLE_94, EVENT_BEAT_MT_BATTLE_94, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer95:
	trainer SUPER_NERD, MT_BATTLE_95, EVENT_BEAT_MT_BATTLE_95, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer96:
	trainer BLACKBELT_T, MT_BATTLE_96, EVENT_BEAT_MT_BATTLE_96, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer97:
	trainer POKEFANF, MT_BATTLE_97, EVENT_BEAT_MT_BATTLE_97, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer98:
	trainer TEACHER, MT_BATTLE_98, EVENT_BEAT_MT_BATTLE_98, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer99:
	trainer COOLTRAINERF, MT_BATTLE_99, EVENT_BEAT_MT_BATTLE_99, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle


SilphCo11F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  0,  1, SILPH_CO_ELEVATOR, 2
	warp_event  3,  1, SILPH_CO_ROOF, 3 
	warp_event 13,  1, SILPH_CO_10F, 2

	db 1 ; coord events
	coord_event 13, 2, SCENE_DEFAULT, SilphCo11F_CheckForHeal

	db 0 ; bg events

	db 10 ; object events
	object_event  12,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo11F_CheckForHeal, -1
	object_event  15,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, MtBattleTrainer91, -1
	object_event  11,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, MtBattleTrainer92, -1
	object_event   9,  7, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer93, -1
	object_event   9,  2, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, MtBattleTrainer94, -1
	object_event   7,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, MtBattleTrainer95, -1
	object_event   5,  1, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, MtBattleTrainer96, -1
	object_event   5,  7, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer97, -1
	object_event   0,  5, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer98, -1
	object_event   0,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer99, -1
