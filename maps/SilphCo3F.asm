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
	iftrue GenericDummyScript
	setevent EVENT_MT_BATTLE_HEALED_3F
	turnobject SILPHCO3F_NURSE, RIGHT
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

MtBattleTrainer11:
	trainer POKEFANM, MT_BATTLE_11, EVENT_BEAT_MT_BATTLE_11, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "I'm your first"
	line "opponent in 3F."
	cont "Prepare to lose!"
	done

.defeat_text
	text "You weren't"
	line "prepared to lose"
	cont "at all, were you?"
	done

.after_text
	text "Well done. You"
	line "keep that up for"
	para "the rest of this"
	line "floor."
	done

MtBattleTrainer12:
	trainer CAMPER, MT_BATTLE_12, EVENT_BEAT_MT_BATTLE_12, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "I'm an upbeat"
	line "#MON kid! I'm a"
	cont "wiz at battling!"
	done

.defeat_text
	text "I might be a wiz"
	line "at losing, too!"
	done

.after_text
	text "Being a wiz at"
	line "battling doesn't"
	para "make me a wiz at"
	line "winning!"
	done

MtBattleTrainer13:
	trainer MEDIUM, MT_BATTLE_13, EVENT_BEAT_MT_BATTLE_13, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Fufufu<...> do you"
	line "think you can take"
	cont "this old woman?"
	done

.defeat_text
	text "But<...> how?!"
	done

.after_text
	text "Perhaps it's high"
	line "time that this old"
	cont "woman retire."

	para "It will be a"
	line "relief."
	done

MtBattleTrainer14:
	trainer BLACKBELT_T, MT_BATTLE_14, EVENT_BEAT_MT_BATTLE_14, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Wroooooaaaar!"
	line "Battling is about"
	cont "physical strength!"
	done

.defeat_text
	text "Wroooooaaaar!"
	done

.after_text
	text "I won't lose when"
	line "it comes to"
	para "strength. I'll show"
	line "you! Let's do"
	cont "squats together!"
	done

MtBattleTrainer15:
	trainer GUITARIST, MT_BATTLE_15, EVENT_BEAT_MT_BATTLE_15, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Willpower!"
	line "Willpower makes"
	para "the difference!"
	line "Bring it on!"
	done

.defeat_text
	text "Willpower!"
	done

.after_text
	text "I think I was a"
	line "little lacking in"
	para "the willpower"
	line "department."
	done

MtBattleTrainer16:
	trainer TEACHER, MT_BATTLE_16, EVENT_BEAT_MT_BATTLE_16, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Are you my pupil"
	line "today? I believe"
	para "in aggressive"
	line "teaching!"
	done

.defeat_text
	text "I was aggressively"
	line "schooled!"
	done

.after_text
	text "Aggressive! That's"
	line "how I teach!"
	done

MtBattleTrainer17:
	trainer PICNICKER, MT_BATTLE_17, EVENT_BEAT_MT_BATTLE_17, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Okeydoke, let's get"
	line "this over with"
	cont "quickly."
	done

.defeat_text
	text "Oh, that's not"
	line "right."
	done

.after_text
	text "Way to go, guy!"
	done

MtBattleTrainer18:
	trainer SCIENTIST, MT_BATTLE_18, EVENT_BEAT_MT_BATTLE_18, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "There isn't a thing"
	line "that I don't know"
	para "about #MON. I"
	line "know it all."
	done

.defeat_text
	text "Knowledge on its"
	line "own couldn't"
	cont "overcome!"
	done

.after_text
	text "I have studied"
	line "#MON exhaust-"
	para "ively. I must"
	line "focus on the study"
	cont "of battling!"
	done

MtBattleTrainer19:
	trainer COOLTRAINERM, MT_BATTLE_19, EVENT_BEAT_MT_BATTLE_19, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Let me teach you"
	line "what an authentic"
	para "#MON battle is"
	line "like."
	done

.defeat_text
	text "Taken down!"
	done

.after_text
	text "Getting taught"
	line "what an authentic"
	para "battle is like<...>"
	line "I didn't expect"
	cont "that."
	done

MtBattleTrainer20:
	trainer YOUNGSTER, MT_BATTLE_20, EVENT_BEAT_MT_BATTLE_20, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text_far MtBattleTrainer20BeforeText
	text_end

.defeat_text
	text "Gyaaaaah!"
	done

.after_text
	text "I haven't battled"
	line "this hard for a"
	cont "long time."

	para "Oh, it was fun,"
	line "all right!"
	done

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
