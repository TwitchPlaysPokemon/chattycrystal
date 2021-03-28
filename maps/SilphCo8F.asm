 	object_const_def ; object_event constants
	const SILPHCO8F_NURSE
	const MTBATTLETRAINER61
	const MTBATTLETRAINER62
	const MTBATTLETRAINER63
	const MTBATTLETRAINER64
	const MTBATTLETRAINER65
	const MTBATTLETRAINER66
	const MTBATTLETRAINER67
	const MTBATTLETRAINER68
	const MTBATTLETRAINER69
	const MTBATTLETRAINER70

SilphCo8F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilphCo8F_CheckForHeal:
	checkevent EVENT_MT_BATTLE_HEALED_8F
	iftrue GenericDummyScript
	setevent EVENT_MT_BATTLE_HEALED_8F
	turnobject SILPHCO8F_NURSE, RIGHT
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

MtBattleTrainer61:
	trainer BIRD_KEEPER, MT_BATTLE_61, EVENT_BEAT_MT_BATTLE_61, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Oh, finally a"
	line "challenger has"
	para "reached these"
	line "lofty heights!"

	text "This is it, 8F!"
	line "Let's see some"
	cont "passion!"
	done

.defeat_text
	text "The challenger is"
	line "victorious!"
	done

.after_text
	text "How far can this"
	line "challenger go?"

	para "I'll enjoy tracking"
	line "your progress!"
	done

MtBattleTrainer62:
	trainer BLACKBELT_T, MT_BATTLE_62, EVENT_BEAT_MT_BATTLE_62, .before_text, .defeat_text, 0, .script

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

MtBattleTrainer63:
	trainer BIKER, MT_BATTLE_63, EVENT_BEAT_MT_BATTLE_63, .before_text, .defeat_text, 0, .script

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

MtBattleTrainer64:
	trainer POKEFANF, MT_BATTLE_64, EVENT_BEAT_MT_BATTLE_64, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "I<...> I<...> I love"
	line "#MON!"
	done

.defeat_text
	text "I love #MON"
	line "even though I"
	cont "lost!"
	done

.after_text
	text "I love #MON!"
	done

MtBattleTrainer65:
	trainer MEDIUM, MT_BATTLE_65, EVENT_BEAT_MT_BATTLE_65, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Hm! I sense"
	line "formidable power"
	cont "in you!"
	done

.defeat_text
	text "Just as I"
	cont "anticipated!"
	done

.after_text
	text "Thanks to"
	line "training, I gained"
	para "the ability to"
	line "identify skilled"
	para "trainers with"
	line "confidence."
	done

MtBattleTrainer66:
	trainer COOLTRAINERM, MT_BATTLE_66, EVENT_BEAT_MT_BATTLE_66, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "No challenger's"
	line "come this high in"
	cont "a while."
	done

.defeat_text
	text "Oh, you've got it,"
	line "I'd say!"
	done

.after_text
	text "Thanks for showing"
	line "me one amusing"
	cont "battle."
	done

MtBattleTrainer67:
	trainer PICNICKER, MT_BATTLE_67, EVENT_BEAT_MT_BATTLE_67, .before_text, .defeat_text, 0, .script

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

MtBattleTrainer68:
	trainer POKEFANM, MT_BATTLE_68, EVENT_BEAT_MT_BATTLE_68, .before_text, .defeat_text, 0, .script

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

MtBattleTrainer69:
	trainer SUPER_NERD, MT_BATTLE_69, EVENT_BEAT_MT_BATTLE_69, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Hohoh. I'm impres-"
	line "sed that you've"
	cont "made it this far."
	done

.defeat_text
	text "Hohoh."
	done

.after_text
	text "Hohoh. You battle"
	line "in an incredible"
	cont "way."
	done

MtBattleTrainer70:
	trainer SAILOR, MT_BATTLE_70, EVENT_BEAT_MT_BATTLE_70, .before_text, .defeat_text, 0, .script

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

SilphCo8F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2,  0, SILPH_CO_ELEVATOR, 2
	warp_event  5,  0, SILPH_CO_9F, 3
	warp_event 19,  0, SILPH_CO_7F, 2

	db 1 ; coord events
	coord_event 19,  1, SCENE_ALWAYS, SilphCo8F_CheckForHeal

	db 0 ; bg events

	db 11 ; object events
	object_event 18,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtBattleNurseFinished, -1
	object_event 11,  1, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer61, -1
	object_event  8,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, MtBattleTrainer62, -1
	object_event 12,  8, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, MtBattleTrainer63, -1
	object_event 23,  8, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, MtBattleTrainer64, -1
	object_event 18, 12, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, MtBattleTrainer65, -1
	object_event 16, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, MtBattleTrainer66, -1
	object_event  9, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer67, -1
	object_event  0, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer68, -1
	object_event  3, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer69, -1
	object_event  6,  6, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, MtBattleTrainer70, -1
