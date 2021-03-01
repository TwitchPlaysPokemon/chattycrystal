 	object_const_def ; object_event constants
	const SILPHCO5F_NURSE
	const MTBATTLETRAINER31
	const MTBATTLETRAINER32
	const MTBATTLETRAINER33
	const MTBATTLETRAINER34
	const MTBATTLETRAINER35
	const MTBATTLETRAINER36
	const MTBATTLETRAINER37
	const MTBATTLETRAINER38
	const MTBATTLETRAINER39
	const MTBATTLETRAINER40

SilphCo5F_MapScripts:
	db 1 ; scene scripts
	scene_script MtBattleDefaultScene ; SCENE_DEFAULT

	db 0 ; callbacks

SilphCo5F_CheckForHeal:
	checkevent EVENT_MT_BATTLE_HEALED_5F
	iftrue MtBattleNurseFinished
	setevent EVENT_MT_BATTLE_HEALED_5F
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

MtBattleTrainer31:
	trainer JUGGLER, MT_BATTLE_31, EVENT_BEAT_MT_BATTLE_31, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer32:
	trainer SWIMMERF, MT_BATTLE_32, EVENT_BEAT_MT_BATTLE_32, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer33:
	trainer BOARDER, MT_BATTLE_33, EVENT_BEAT_MT_BATTLE_33, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer34:
	trainer COOLTRAINERF, MT_BATTLE_34, EVENT_BEAT_MT_BATTLE_34, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer35:
	trainer FIREBREATHER, MT_BATTLE_35, EVENT_BEAT_MT_BATTLE_35, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer36:
	trainer TEACHER, MT_BATTLE_36, EVENT_BEAT_MT_BATTLE_36, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer37:
	trainer GUITARIST, MT_BATTLE_37, EVENT_BEAT_MT_BATTLE_37, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer38:
	trainer BEAUTY, MT_BATTLE_38, EVENT_BEAT_MT_BATTLE_38, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer39:
	trainer SCIENTIST, MT_BATTLE_39, EVENT_BEAT_MT_BATTLE_39, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer40:
	trainer HIKER, MT_BATTLE_40, EVENT_BEAT_MT_BATTLE_40, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle


SilphCo5F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2,  0, SILPH_CO_ELEVATOR, 2
	warp_event  5,  0, SILPH_CO_6F, 3 
	warp_event 19,  0, SILPH_CO_4F, 2

	db 1 ; coord events
	coord_event 19,  1, SCENE_DEFAULT, SilphCo5F_CheckForHeal

	db 0 ; bg events

	db 11 ; object events
	object_event 18,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo5F_CheckForHeal, -1
	object_event 20, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, MtBattleTrainer31, -1
	object_event 17, 14, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer32, -1
	object_event 10, 12, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, MtBattleTrainer33, -1
	object_event 17,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer34, -1
	object_event 15,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, MtBattleTrainer35, -1
	object_event  9,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer36, -1
	object_event 15,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer37, -1
	object_event  8, 12, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, MtBattleTrainer38, -1
	object_event  5, 10, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, MtBattleTrainer39, -1
	object_event  1,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, MtBattleTrainer40, -1
