 	object_const_def ; object_event constants
	const SILPHCO10F_NURSE
	const MTBATTLETRAINER81
	const MTBATTLETRAINER82
	const MTBATTLETRAINER83
	const MTBATTLETRAINER84
	const MTBATTLETRAINER85
	const MTBATTLETRAINER86
	const MTBATTLETRAINER87
	const MTBATTLETRAINER88
	const MTBATTLETRAINER89
	const MTBATTLETRAINER90

SilphCo10F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilphCo10F_CheckForHeal:
	checkevent EVENT_MT_BATTLE_HEALED_10F
	iftrue GenericDummyScript
	setevent EVENT_MT_BATTLE_HEALED_10F
	turnobject SILPHCO10F_NURSE, RIGHT
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

MtBattleTrainer81:
	trainer SCIENTIST, MT_BATTLE_81, EVENT_BEAT_MT_BATTLE_81, .before_text, .defeat_text, 0, .script

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

MtBattleTrainer82:
	trainer GUITARIST, MT_BATTLE_82, EVENT_BEAT_MT_BATTLE_82, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	farjumptext MtBattleTrainer82AfterText

.before_text
	text "Whenever and"
	line "wherever it may"
	para "be, I battle as if"
	line "it were my last."
	done

.defeat_text
	text "You're tough, you!"
	done

MtBattleTrainer83:
	trainer CAMPER, MT_BATTLE_83, EVENT_BEAT_MT_BATTLE_83, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Hi, welcome. Want"
	line "to know the secret"
	para "behind attracting"
	line "girls?"
	done

.defeat_text
	text "That's not what I"
	line "wanted to teach"
	cont "you!"
	done

.after_text
	text "I should have been"
	line "teaching you the"
	para "secret of"
	line "battling. Wahahah!"
	done

MtBattleTrainer84:
	trainer HIKER, MT_BATTLE_84, EVENT_BEAT_MT_BATTLE_84, .before_text, .defeat_text, 0, .script

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

MtBattleTrainer85:
	trainer SWIMMERM, MT_BATTLE_85, EVENT_BEAT_MT_BATTLE_85, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "I'm famous around"
	line "these parts. Call"
	para "me the Headband"
	line "Dude!"
	done

.defeat_text
	text "Mwooooooh!"
	done

.after_text
	text "Drat! I was"
	line "thinking about why"
	para "I couldn't get"
	line "anything to work."

	para "I'd forgotten my"
	line "headband!"
	done

MtBattleTrainer86:
	trainer SAGE, MT_BATTLE_86, EVENT_BEAT_MT_BATTLE_86, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "No light will"
	line "illuminate your"
	cont "path!"
	done

.defeat_text
	text "My path turned"
	line "dark!"
	done

.after_text
	text "Light your own way"
	line "with your"
	cont "brilliance!"
	done

MtBattleTrainer87:
	trainer LASS, MT_BATTLE_87, EVENT_BEAT_MT_BATTLE_87, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Oh? You're here"
	line "already?"
	cont "L-O-V-E-L-Y!"
	done

.defeat_text
	text "You battle lovely,"
	line "too!"
	done

.after_text
	text "You're so lovely!"
	done

MtBattleTrainer88:
	trainer BIKER, MT_BATTLE_88, EVENT_BEAT_MT_BATTLE_88, .before_text, .defeat_text, 0, .script

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

MtBattleTrainer89:
	trainer YOUNGSTER, MT_BATTLE_89, EVENT_BEAT_MT_BATTLE_89, .before_text, .defeat_text, 0, .script

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

MtBattleTrainer90:
	trainer GUITARIST, MT_BATTLE_90, EVENT_BEAT_MT_BATTLE_90, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text_far MtBattleTrainer90BeforeText
	text_end

.defeat_text
	text "You really are"
	line "bursting with"
	cont "energy!"
	done

.after_text
	text "What a fun battle"
	line "that was!"
	done

SilphCo10F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2,  0, SILPH_CO_ELEVATOR, 2
	warp_event  5,  0, SILPH_CO_11F, 3
	warp_event 19,  0, SILPH_CO_9F, 2

	db 1 ; coord events
	coord_event 19,  1, SCENE_ALWAYS, SilphCo10F_CheckForHeal

	db 0 ; bg events

	db 11 ; object events
	object_event 18,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtBattleNurseFinished, -1
	object_event 22, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, MtBattleTrainer81, -1
	object_event 16, 12, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, MtBattleTrainer82, -1
	object_event 16,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, MtBattleTrainer83, -1
	object_event 16,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, MtBattleTrainer84, -1
	object_event 11,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, MtBattleTrainer85, -1
	object_event  9,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, MtBattleTrainer86, -1
	object_event  9, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer87, -1
	object_event  5, 14, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, MtBattleTrainer88, -1
	object_event  0,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer89, -1
	object_event  0,  8, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, MtBattleTrainer90, -1
