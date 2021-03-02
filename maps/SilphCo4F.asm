 	object_const_def ; object_event constants
	const SILPHCO4F_NURSE
	const MTBATTLETRAINER21
	const MTBATTLETRAINER22
	const MTBATTLETRAINER23
	const MTBATTLETRAINER24
	const MTBATTLETRAINER25
	const MTBATTLETRAINER26
	const MTBATTLETRAINER27
	const MTBATTLETRAINER28
	const MTBATTLETRAINER29
	const MTBATTLETRAINER30

SilphCo4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilphCo4F_CheckForHeal:
	checkevent EVENT_MT_BATTLE_HEALED_4F
	iftrue .Done
	setevent EVENT_MT_BATTLE_HEALED_4F
	turnobject SILPHCO4F_NURSE, RIGHT
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

.Done
	end

MtBattleTrainer21:
	trainer JUGGLER, MT_BATTLE_21, EVENT_BEAT_MT_BATTLE_21, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer22:
	trainer SWIMMERF, MT_BATTLE_22, EVENT_BEAT_MT_BATTLE_22, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer23:
	trainer BOARDER, MT_BATTLE_23, EVENT_BEAT_MT_BATTLE_23, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer24:
	trainer COOLTRAINERF, MT_BATTLE_24, EVENT_BEAT_MT_BATTLE_24, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer25:
	trainer FIREBREATHER, MT_BATTLE_25, EVENT_BEAT_MT_BATTLE_25, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer26:
	trainer TEACHER, MT_BATTLE_26, EVENT_BEAT_MT_BATTLE_26, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer27:
	trainer GUITARIST, MT_BATTLE_27, EVENT_BEAT_MT_BATTLE_27, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer28:
	trainer BEAUTY, MT_BATTLE_28, EVENT_BEAT_MT_BATTLE_28, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer29:
	trainer SCIENTIST, MT_BATTLE_29, EVENT_BEAT_MT_BATTLE_29, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer30:
	trainer HIKER, MT_BATTLE_30, EVENT_BEAT_MT_BATTLE_30, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle


SilphCo4F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2,  0, SILPH_CO_ELEVATOR, 2
	warp_event  5,  0, SILPH_CO_5F, 3
	warp_event 19,  0, SILPH_CO_3F, 2

	db 1 ; coord events
	coord_event 19,  1, -1, SilphCo4F_CheckForHeal

	db 0 ; bg events

	db 11 ; object events
	object_event 18,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtBattleNurseFinished, -1
	object_event 22,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, MtBattleTrainer21, -1
	object_event 18, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer22, -1
	object_event 15,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, MtBattleTrainer23, -1
	object_event 15, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, MtBattleTrainer24, -1
	object_event 11,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, MtBattleTrainer25, -1
	object_event 11, 11, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, MtBattleTrainer26, -1
	object_event  6,  6, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, MtBattleTrainer27, -1
	object_event  6, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, MtBattleTrainer28, -1
	object_event  3, 13, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 6, MtBattleTrainer29, -1
	object_event  0,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, MtBattleTrainer30, -1
