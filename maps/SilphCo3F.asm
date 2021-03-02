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
	db 0; scene scripts

	db 0 ; callbacks

SilphCo3F_CheckForHeal:
	checkevent EVENT_MT_BATTLE_HEALED_3F
	iftrue .Done
	setevent EVENT_MT_BATTLE_HEALED_3F
	turnobject SILPHCO3F_NURSE, RIGHT
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

.Done
	end

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
	warp_event  2,  0, SILPH_CO_ELEVATOR, 2
	warp_event  5,  0, SILPH_CO_4F, 3
	warp_event 19,  0, SILPH_CO_2F, 2

	db 1 ; coord events
	coord_event 19,  1, SCENE_ALWAYS, SilphCo3F_CheckForHeal

	db 0 ; bg events

	db 11 ; object events
	object_event 18,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtBattleNurseFinished, -1
	object_event 23,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, MtBattleTrainer11, -1
	object_event 18,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, MtBattleTrainer12, -1
	object_event 14, 14, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, MtBattleTrainer13, -1
	object_event 12,  9, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, MtBattleTrainer14, -1
	object_event 11,  1, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, MtBattleTrainer15, -1
	object_event  6,  8, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer16, -1
	object_event  9, 12, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer17, -1
	object_event  5, 13, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, MtBattleTrainer18, -1
	object_event  0, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, MtBattleTrainer19, -1
	object_event  3,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, MtBattleTrainer20, -1
