 	object_const_def ; object_event constants
	const SILPHCO6F_NURSE
	const MTBATTLETRAINER41
	const MTBATTLETRAINER42
	const MTBATTLETRAINER43
	const MTBATTLETRAINER44
	const MTBATTLETRAINER45
	const MTBATTLETRAINER46
	const MTBATTLETRAINER47
	const MTBATTLETRAINER48
	const MTBATTLETRAINER49
	const MTBATTLETRAINER50

SilphCo6F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilphCo6F_CheckForHeal:
	checkevent EVENT_MT_BATTLE_HEALED_6F
	iftrue GenericDummyScript
	setevent EVENT_MT_BATTLE_HEALED_6F
	turnobject SILPHCO6F_NURSE, RIGHT
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

MtBattleTrainer41:
	trainer SAGE, MT_BATTLE_41, EVENT_BEAT_MT_BATTLE_41, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Welcome to 6F. It's"
	line "so good of you to"
	para "come so far for"
	line "this."
	done

.defeat_text
	text "Aaaahhh. I'm tired."
	done

.after_text
	text "A hard battle is"
	line "rough on my lower"
	cont "back."
	done

MtBattleTrainer42:
	trainer POKEFANM, MT_BATTLE_42, EVENT_BEAT_MT_BATTLE_42, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Even more than"
	line "eating or napping,"
	cont "I love #MON!"
	done

.defeat_text
	text "Even though I"
	line "lost, I still love"
	cont "#MON!"
	done

.after_text
	text "You must love"
	line "#MON too."
	done

MtBattleTrainer43:
	trainer GUITARIST, MT_BATTLE_43, EVENT_BEAT_MT_BATTLE_43, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Ba-ba-battle!"

	para "Hubba, hubba,"
	line "battle!"

	para "We're here for a"
	line "good time!"
	done

.defeat_text
	text "Hey, hey!"
	done

.after_text
	text "We had us a good"
	line "time!"
	done

MtBattleTrainer44:
	trainer TEACHER, MT_BATTLE_44, EVENT_BEAT_MT_BATTLE_44, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Oh, what a darling"
	line "boy! I will teach"
	para "you in a way even"
	line "you will under-"
	cont "stand!"
	done

.defeat_text
	text "It's not very"
	line "darling of you to"
	cont "win."
	done

.after_text
	text "You should teach"
	line "me nicely next"
	cont "time."
	done

MtBattleTrainer45:
	trainer SUPER_NERD, MT_BATTLE_45, EVENT_BEAT_MT_BATTLE_45, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "You're going to"
	line "battle me? Really?"
	done

.defeat_text
	text "Sigh<...>"
	line "I lost<...>"
	done

.after_text
	text "I like to battle,"
	line "but I dislike"
	cont "losing."
	done

MtBattleTrainer46:
	trainer SKIER, MT_BATTLE_46, EVENT_BEAT_MT_BATTLE_46, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "I want to"
	line "demonstrate some"
	para "techniques I've"
	line "learned."
	done

.defeat_text
	text "My techniques were"
	line "worthless!"
	done

.after_text
	text "There's something"
	line "wrong. I don't get"
	cont "how I lost."
	done

MtBattleTrainer47:
	trainer BLACKBELT_T, MT_BATTLE_47, EVENT_BEAT_MT_BATTLE_47, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "I'll show you the"
	line "fruits of my daily"
	cont "training!"
	done

.defeat_text
	text "Arrrgh! My trai-"
	line "ning still fell"
	cont "short!"
	done

.after_text
	text "Where did you do"
	line "your training?"
	done

MtBattleTrainer48:
	trainer COOLTRAINERF, MT_BATTLE_48, EVENT_BEAT_MT_BATTLE_48, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text_far MtBattleTrainer48BeforeText
	text_end

.defeat_text
	text "Even losing is"
	line "exhilarating!"
	done

.after_text
	text "Battling #MON's"
	line "so exhilarating!"
	done

MtBattleTrainer49:
	trainer BOARDER, MT_BATTLE_49, EVENT_BEAT_MT_BATTLE_49, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Now here comes a"
	line "perky youngster!"
	done

.defeat_text
	text "I miss being"
	line "young!"
	done

.after_text
	text "Share your youth"
	line "with me!"
	done

MtBattleTrainer50:
	trainer COOLTRAINERM, MT_BATTLE_50, EVENT_BEAT_MT_BATTLE_50, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text_far MtBattleTrainer50BeforeText
	text_end

.defeat_text
	text "Yeah, great job!"
	done

.after_text
	text "With 7F starts the"
	line "top half of this"
	para "building. Keep"
	line "your drive alive."
	done

SilphCo6F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2,  0, SILPH_CO_ELEVATOR, 2
	warp_event  5,  0, SILPH_CO_7F, 3
	warp_event 19,  0, SILPH_CO_5F, 2

	db 1 ; coord events
	coord_event 19,  1, SCENE_ALWAYS, SilphCo6F_CheckForHeal

	db 0 ; bg events

	db 11 ; object events
	object_event 18,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtBattleNurseFinished, -1
	object_event 12,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer41, -1
	object_event 17, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, MtBattleTrainer42, -1
	object_event 20,  6, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, MtBattleTrainer43, -1
	object_event 23, 11, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer44, -1
	object_event 17, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer45, -1
	object_event 15, 12, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, MtBattleTrainer46, -1
	object_event 13, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer47, -1
	object_event  9, 12, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer48, -1
	object_event  4,  9, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer49, -1
	object_event  0,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, MtBattleTrainer50, -1
