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
	db 0 ; scene scripts

	db 0 ; callbacks

SilphCo2F_CheckForHeal:
	checkevent EVENT_MT_BATTLE_HEALED_2F
	iftrue GenericDummyScript
	setevent EVENT_MT_BATTLE_HEALED_2F
	turnobject SILPHCO2F_NURSE, RIGHT
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

MtBattleTrainer1:
	trainer SUPER_NERD, MT_BATTLE_1, EVENT_BEAT_MT_BATTLE_1, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	; PLACEHOLDER
	text "<...>"
	done

.defeat_text
	; PLACEHOLDER
	text "<...>"
	done

.after_text
	; PLACEHOLDER
	text "<...>"
	done

MtBattleTrainer2:
	trainer SWIMMERF, MT_BATTLE_2, EVENT_BEAT_MT_BATTLE_2, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	; PLACEHOLDER
	text "<...>"
	done

.defeat_text
	; PLACEHOLDER
	text "<...>"
	done

.after_text
	; PLACEHOLDER
	text "<...>"
	done

MtBattleTrainer3:
	trainer BIKER, MT_BATTLE_3, EVENT_BEAT_MT_BATTLE_3, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	; PLACEHOLDER
	text "<...>"
	done

.defeat_text
	; PLACEHOLDER
	text "<...>"
	done

.after_text
	; PLACEHOLDER
	text "<...>"
	done

MtBattleTrainer4:
	trainer BEAUTY, MT_BATTLE_4, EVENT_BEAT_MT_BATTLE_4, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	; PLACEHOLDER
	text "<...>"
	done

.defeat_text
	; PLACEHOLDER
	text "<...>"
	done

.after_text
	; PLACEHOLDER
	text "<...>"
	done

MtBattleTrainer5:
	trainer TEACHER, MT_BATTLE_5, EVENT_BEAT_MT_BATTLE_5, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	; PLACEHOLDER
	text "<...>"
	done

.defeat_text
	; PLACEHOLDER
	text "<...>"
	done

.after_text
	; PLACEHOLDER
	text "<...>"
	done

MtBattleTrainer6:
	trainer SAGE, MT_BATTLE_6, EVENT_BEAT_MT_BATTLE_6, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	; PLACEHOLDER
	text "<...>"
	done

.defeat_text
	; PLACEHOLDER
	text "<...>"
	done

.after_text
	; PLACEHOLDER
	text "<...>"
	done

MtBattleTrainer7:
	trainer BOARDER, MT_BATTLE_7, EVENT_BEAT_MT_BATTLE_7, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	; PLACEHOLDER
	text "<...>"
	done

.defeat_text
	; PLACEHOLDER
	text "<...>"
	done

.after_text
	; PLACEHOLDER
	text "<...>"
	done

MtBattleTrainer8:
	trainer POKEFANF, MT_BATTLE_8, EVENT_BEAT_MT_BATTLE_8, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	; PLACEHOLDER
	text "<...>"
	done

.defeat_text
	; PLACEHOLDER
	text "<...>"
	done

.after_text
	; PLACEHOLDER
	text "<...>"
	done

MtBattleTrainer9:
	trainer BLACKBELT_T, MT_BATTLE_9, EVENT_BEAT_MT_BATTLE_9, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	; PLACEHOLDER
	text "<...>"
	done

.defeat_text
	; PLACEHOLDER
	text "<...>"
	done

.after_text
	; PLACEHOLDER
	text "<...>"
	done

MtBattleTrainer10:
	trainer BIRD_KEEPER, MT_BATTLE_10, EVENT_BEAT_MT_BATTLE_10, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	; PLACEHOLDER
	text "<...>"
	done

.defeat_text
	; PLACEHOLDER
	text "<...>"
	done

.after_text
	; PLACEHOLDER
	text "<...>"
	done


SilphCo2F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2,  0, SILPH_CO_ELEVATOR, 2
	warp_event  5,  0, SILPH_CO_3F, 3
	warp_event 19,  0, SILPH_CO_1F, 4

	db 1 ; coord events
	coord_event 19,  1, SCENE_ALWAYS, SilphCo2F_CheckForHeal

	db 0 ; bg events

	db 11 ; object events
	object_event 18,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtBattleNurseFinished, -1
	object_event 18,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, MtBattleTrainer1, -1
	object_event 22,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer2, -1
	object_event 19, 13, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer3, -1
	object_event 16,  9, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 6, MtBattleTrainer4, -1
	object_event 14,  9, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, MtBattleTrainer5, -1
	object_event 12, 13, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, MtBattleTrainer6, -1
	object_event 10,  9, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, MtBattleTrainer7, -1
	object_event  6,  9, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 6, MtBattleTrainer8, -1
	object_event  0,  8, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer9, -1
	object_event  3,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer10, -1
