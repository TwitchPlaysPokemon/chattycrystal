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
	db 0 ; scene scripts

	db 0 ; callbacks

SilphCo9F_CheckForHeal:
	checkevent EVENT_MT_BATTLE_HEALED_9F
	iftrue GenericDummyScript
	setevent EVENT_MT_BATTLE_HEALED_9F
	turnobject SILPHCO9F_NURSE, RIGHT
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

MtBattleTrainer71:
	trainer TEACHER, MT_BATTLE_71, EVENT_BEAT_MT_BATTLE_71, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Oh, are you a new"
	line "student? Welcome"
	cont "to 9F!"

	para "Let's begin with"
	line "our battle lesson!"
	done

.defeat_text
	text "Lesson's over!"
	done

.after_text
	text "You're the type of"
	line "student that gets"
	para "better through"
	line "real battling"
	para "rather than from"
	line "your studies."
	done

MtBattleTrainer72:
	trainer BOARDER, MT_BATTLE_72, EVENT_BEAT_MT_BATTLE_72, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Wow. You beat my"
	line "teacher LISOT."

	para "That's pretty"
	line "decent!"
	done

.defeat_text
	text "That's pretty"
	line "awesome!"
	done

.after_text
	text "You're doing great."
	line "Keep it up!"
	done

MtBattleTrainer73:
	trainer COOLTRAINERF, MT_BATTLE_73, EVENT_BEAT_MT_BATTLE_73, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Awesome, that's"
	line "you! It's an"
	para "accomplishment"
	line "just getting here."
	done

.defeat_text
	text "Whoa-ho-hoy!"
	done

.after_text
	text "Wow, oh wow, you"
	line "really are"
	para "awesome. Maybe"
	line "you'll be able to"
	para "keep things"
	line "rolling all the"
	cont "way to the end!"
	done

MtBattleTrainer74:
	trainer BLACKBELT_T, MT_BATTLE_74, EVENT_BEAT_MT_BATTLE_74, .before_text, .defeat_text, 0, .script

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

MtBattleTrainer75:
	trainer OFFICER, MT_BATTLE_75, EVENT_BEAT_MT_BATTLE_75, .before_text, .defeat_text, 0, .script

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

MtBattleTrainer76:
	trainer JUGGLER, MT_BATTLE_76, EVENT_BEAT_MT_BATTLE_76, .before_text, .defeat_text, 0, .script

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

MtBattleTrainer77:
	trainer SKIER, MT_BATTLE_77, EVENT_BEAT_MT_BATTLE_77, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Hi! I've heard"
	line "rumors about how"
	cont "strong you are."

	para "Let's see if those"
	line "rumors are true!"
	done

.defeat_text
	text "D-Devastating!"
	done

.after_text
	text "The rumors about"
	line "you were true, it"
	cont "seems."
	done

MtBattleTrainer78:
	trainer SCIENTIST, MT_BATTLE_78, EVENT_BEAT_MT_BATTLE_78, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "I constantly run"
	line "simulations of"
	cont "#MON battles."

	para "I'll be perfect in"
	line "a real battle!"
	done

.defeat_text
	text "You were perfect!"
	done

.after_text
	text "I can't figure it"
	line "out. If things had"
	para "gone exactly as"
	line "per my simulation,"
	para "things would have"
	line "been perfect."
	done

MtBattleTrainer79:
	trainer TEACHER, MT_BATTLE_79, EVENT_BEAT_MT_BATTLE_79, .before_text, .defeat_text, 0, .script

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

MtBattleTrainer80:
	trainer KIMONO_GIRL, MT_BATTLE_80, EVENT_BEAT_MT_BATTLE_80, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Hmm. You have a"
	line "unique air about"
	para "you that sets you"
	line "apart from the"
	para "challengers I've"
	line "seen."

	para "But, who cares?"
	line "First, we battle!"
	done

.defeat_text
	text "Hmm<...> I knew you"
	line "were different!"
	done

.after_text
	text "You battle"
	line "differently, too."

	para "Like, somehow,"
	line "hmm<...> I can't find"
	cont "the words for it!"
	done

SilphCo9F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2,  0, SILPH_CO_ELEVATOR, 2
	warp_event  5,  0, SILPH_CO_10F, 3
	warp_event 19,  0, SILPH_CO_8F, 2

	db 1 ; coord events
	coord_event 19,  1, SCENE_ALWAYS, SilphCo9F_CheckForHeal

	db 0 ; bg events

	db 11 ; object events
	object_event 18,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtBattleNurseFinished, -1
	object_event 12,  5, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, MtBattleTrainer71, -1
	object_event 18,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer72, -1
	object_event 18,  9, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, MtBattleTrainer73, -1
	object_event 15, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer74, -1
	object_event 14, 12, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer75, -1
	object_event 10, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, MtBattleTrainer76, -1
	object_event  5, 10, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer77, -1
	object_event  0,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer78, -1
	object_event  3,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer79, -1
	object_event  2,  3, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, MtBattleTrainer80, -1
