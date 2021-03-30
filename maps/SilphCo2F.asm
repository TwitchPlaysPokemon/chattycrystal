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
	farjumptext MtBattleTrainer1AfterText

.before_text
	text_far MtBattleTrainer1BeforeText
	text_end

.defeat_text
	text "You're a worthy"
	line "challenger!"
	done

MtBattleTrainer2:
	trainer SWIMMERF, MT_BATTLE_2, EVENT_BEAT_MT_BATTLE_2, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Okay, let's work up"
	line "a little sweat"
	para "with our #MON"
	line "battle!"
	done

.defeat_text
	text "Refreshed and"
	line "sweaty!"
	done

.after_text
	text "Battling is the"
	line "best way to work"
	cont "up a good sweat!"
	done

MtBattleTrainer3:
	trainer BIKER, MT_BATTLE_3, EVENT_BEAT_MT_BATTLE_3, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Well! You seem to"
	line "be cruising right"
	para "along. But can you"
	line "sustain the drive?"
	done

.defeat_text
	text "He found another"
	line "groove!"
	done

.after_text
	text "How much farther"
	line "can you go?"

	para "I'll be rooting for"
	line "you!"
	done

MtBattleTrainer4:
	trainer BEAUTY, MT_BATTLE_4, EVENT_BEAT_MT_BATTLE_4, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "#MON are living"
	line "beings of charming"
	para "elegance. They are"
	line "worthy of the"
	cont "sophisticated moi!"
	done

.defeat_text
	text "My elegant charm!"
	done

.after_text
	text "Now, you must"
	line "admit, was not my"
	para "defeat a marvel of"
	line "pure elegance,"
	cont "non?"
	done

MtBattleTrainer5:
	trainer TEACHER, MT_BATTLE_5, EVENT_BEAT_MT_BATTLE_5, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Let's start our"
	line "lesson on #MON"
	cont "battling!"
	done

.defeat_text
	text "My! You're surpri-"
	line "singly good!"
	done

.after_text
	text "I'll have to redo"
	line "my studies."
	done

MtBattleTrainer6:
	trainer SAGE, MT_BATTLE_6, EVENT_BEAT_MT_BATTLE_6, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Hi-yah! We shall"
	line "battle with"
	para "nobility and"
	line "honor!"

	para "Expect no mercy"
	line "for your youth!"
	done

.defeat_text
	text "Oof!"
	done

.after_text
	text "I lost with"
	line "nobility and"
	para "honor! I am"
	line "impressed by your"
	para "skill beyond your"
	line "youthful age!"
	done

MtBattleTrainer7:
	trainer BOARDER, MT_BATTLE_7, EVENT_BEAT_MT_BATTLE_7, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Big guy. You don't"
	line "look very strong."
	done

.defeat_text
	text "But you are"
	line "strong!"
	done

.after_text
	text "But you don't look"
	line "very strong."
	done

MtBattleTrainer8:
	trainer POKEFANF, MT_BATTLE_8, EVENT_BEAT_MT_BATTLE_8, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "May I ask if your"
	line "#MON are"
	cont "strong?"
	done

.defeat_text
	text "Oh, yes, they are"
	line "strong!"
	done

.after_text
	text "You have handed me"
	line "a loss. Though I"
	para "hate to accept it,"
	line "take it I must."
	done

MtBattleTrainer9:
	trainer BLACKBELT_T, MT_BATTLE_9, EVENT_BEAT_MT_BATTLE_9, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "You there! Are you"
	line "working out your"
	cont "bod every day?"
	done

.defeat_text
	text "Explosive energy!"
	done

.after_text
	text "I should've been"
	line "working on my"
	para "#MON rather"
	line "than my bod!"

	para "Hahahah!"
	done

MtBattleTrainer10:
	trainer BIRD_KEEPER, MT_BATTLE_10, EVENT_BEAT_MT_BATTLE_10, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Are you ready for"
	line "some serious"
	para "training? Let's not"
	line "waste any time!"
	done

.defeat_text
	text "Fantastic!"
	done

.after_text
	text "You've cleared 2F."
	line "Congratulations!"
	para "You really are"
	line "talented."
	cont "Now, go on."
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
