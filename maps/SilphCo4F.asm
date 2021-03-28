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
	iftrue GenericDummyScript
	setevent EVENT_MT_BATTLE_HEALED_4F
	turnobject SILPHCO4F_NURSE, RIGHT
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

MtBattleTrainer21:
	trainer JUGGLER, MT_BATTLE_21, EVENT_BEAT_MT_BATTLE_21, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Hi, welcome to 4F!"
	line "Are you ready to"
	cont "go?"
	done

.defeat_text
	text "Not too shabby!"
	done

.after_text
	text "That was good. The"
	line "battle overflowed"
	para "with your youthful"
	line "power."

	para "There was a time"
	line "like that for me a"
	cont "long time ago."
	done

MtBattleTrainer22:
	trainer SWIMMERF, MT_BATTLE_22, EVENT_BEAT_MT_BATTLE_22, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "It's about time! I'm"
	line "going to give you"
	cont "an all-out battle!"

	para "Okay, hustle,"
	line "hustle!"
	done

.defeat_text
	text "Bleah!"
	done

.after_text
	text "Even though I"
	line "lost, I had lots"
	para "of fun in our"
	line "battle!"
	done

MtBattleTrainer23:
	trainer BOARDER, MT_BATTLE_23, EVENT_BEAT_MT_BATTLE_23, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "I'm all fired up"
	line "and ready to rock!"

	para "I'm playing this"
	line "totally seriously!"
	done

.defeat_text
	text "But I was serious!"
	done

.after_text
	text "I didn't do enough"
	line "warm-up exercises;"
	cont "that must be it."

	para "Yup! I'm convinced"
	line "of it!"
	done

MtBattleTrainer24:
	trainer COOLTRAINERF, MT_BATTLE_24, EVENT_BEAT_MT_BATTLE_24, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "In our battle, I'll"
	line "show you every-"
	cont "thing that I've"
	cont "ever learned."
	done

.defeat_text
	text "I haven't learned"
	line "a thing about"
	cont "losing!"
	done

.after_text
	text "Grrr<...> This burns"
	line "me up<...>"

	para "I'll have to battle"
	line "some more."
	done

MtBattleTrainer25:
	trainer FIREBREATHER, MT_BATTLE_25, EVENT_BEAT_MT_BATTLE_25, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "How are you"
	line "enjoying this"
	cont "battle facility?"
	done

.defeat_text
	text "You seem to be"
	line "enjoying yourself"
	cont "all right!"
	done

.after_text
	text "Battles should be"
	line "fun. That's"
	cont "important!"
	done

MtBattleTrainer26:
	trainer TEACHER, MT_BATTLE_26, EVENT_BEAT_MT_BATTLE_26, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Were you the"
	line "student who wanted"
	cont "a private lesson?"
	done

.defeat_text
	text "It's not much of a"
	line "lesson if the"
	cont "teacher loses!"
	done

.after_text
	text "Would you like to"
	line "become a teacher"
	cont "in my place?"
	done

MtBattleTrainer27:
	trainer GUITARIST, MT_BATTLE_27, EVENT_BEAT_MT_BATTLE_27, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Oh, now what have"
	line "we here?"

	para "Challenger, you're"
	line "looking mighty"
	cont "peppy!"
	done

.defeat_text
	text "Yep, peppy you"
	line "are!"
	done

.after_text
	text "Keep your spirits"
	line "peppy and plow"
	cont "ahead!"
	done

MtBattleTrainer28:
	trainer BEAUTY, MT_BATTLE_28, EVENT_BEAT_MT_BATTLE_28, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "I have never"
	line "lifted anything"
	para "heavier than a"
	line "# BALL."
	done

.defeat_text
	text "How frightful!"
	done

.after_text
	text "Losing feels far"
	line "heavier than a"
	para "# BALL, wouldn't"
	line "you say?"
	done

MtBattleTrainer29:
	trainer SCIENTIST, MT_BATTLE_29, EVENT_BEAT_MT_BATTLE_29, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Behold my elegant"
	line "battling! It is"
	para "backed by thorough"
	line "calculations!"
	done

.defeat_text
	text "This didn't go"
	line "according to my"
	cont "calculations!"
	done

.after_text
	text "Hmm<...> Weird."
	line "According to my"
	para "calculations, this"
	line "should have"
	para "happened, causing"
	line "that to happen<...>"
	done

MtBattleTrainer30:
	trainer HIKER, MT_BATTLE_30, EVENT_BEAT_MT_BATTLE_30, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Anchoring 4F is"
	line "me, LEVEN."

	para "Go, go, go!"
	done

.defeat_text
	text "Oh, yeah! That was"
	line "spectacular!"
	done

.after_text
	text "You battle tremen-"
	line "dously well. I'm"
	para "looking forward to"
	line "seeing how far you"
	cont "can go."

	para "Go on."
	done

SilphCo4F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2,  0, SILPH_CO_ELEVATOR, 2
	warp_event  5,  0, SILPH_CO_5F, 3
	warp_event 19,  0, SILPH_CO_3F, 2

	db 1 ; coord events
	coord_event 19,  1, SCENE_ALWAYS, SilphCo4F_CheckForHeal

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
	object_event  3, 11, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, MtBattleTrainer29, -1
	object_event  5,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, MtBattleTrainer30, -1
