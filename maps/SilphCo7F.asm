 	object_const_def ; object_event constants
	const SILPHCO7F_NURSE
	const MTBATTLETRAINER51
	const MTBATTLETRAINER52
	const MTBATTLETRAINER53
	const MTBATTLETRAINER54
	const MTBATTLETRAINER55
	const MTBATTLETRAINER56
	const MTBATTLETRAINER57
	const MTBATTLETRAINER58
	const MTBATTLETRAINER59
	const MTBATTLETRAINER60

SilphCo7F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilphCo7F_CheckForHeal:
	checkevent EVENT_MT_BATTLE_HEALED_7F
	iftrue GenericDummyScript
	setevent EVENT_MT_BATTLE_HEALED_7F
	turnobject SILPHCO7F_NURSE, RIGHT
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

MtBattleTrainer51:
	trainer SCIENTIST, MT_BATTLE_51, EVENT_BEAT_MT_BATTLE_51, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "You've got to be"
	line "good to reach 7F."

	para "You should be"
	line "proud of yourself."

	para "I'll check how well"
	line "you've raised your"
	cont "#MON."
	done

.defeat_text
	text "You've raised your"
	line "#MON perfectly!"
	done

.after_text
	text "I'll have to raise"
	line "my #MON some"
	cont "more, too."
	done

MtBattleTrainer52:
	trainer JUGGLER, MT_BATTLE_52, EVENT_BEAT_MT_BATTLE_52, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Are you okay? It's"
	line "okay if you want"
	cont "to give up."
	done

.defeat_text
	text "I give up!"
	done

.after_text
	text "You didn't even"
	line "need to think"
	para "about giving up,"
	line "did you?"
	done

MtBattleTrainer53:
	trainer HIKER, MT_BATTLE_53, EVENT_BEAT_MT_BATTLE_53, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "My #MON and I"
	line "have ample base"
	para "stamina. We won't"
	line "lose if we get"
	para "into an extended"
	line "battle."
	done

.defeat_text
	text "How'd we get whip-"
	line "ped so quickly?"
	done

.after_text
	text "It's imperative"
	line "that we train for"
	para "high-speed"
	line "battling next."
	done

MtBattleTrainer54:
	trainer BEAUTY, MT_BATTLE_54, EVENT_BEAT_MT_BATTLE_54, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Oh? Did you wish"
	line "to battle? I won't"
	para "rein in my"
	line "#MON."
	done

.defeat_text
	text "Oh, dear me<...>"
	done

.after_text
	text "How uncouth of you"
	line "to not show the"
	para "slightest regard"
	line "to the fact that I"
	cont "am a lady."
	done

MtBattleTrainer55:
	trainer SWIMMERM, MT_BATTLE_55, EVENT_BEAT_MT_BATTLE_55, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Trainers who love"
	line "their #MON"
	para "should pump their"
	line "physiques, too."
	done

.defeat_text
	text "Nothing doing!"
	done

.after_text
	text "Maybe it isn't"
	line "enough to get a"
	para "pumped-up"
	line "physique<...>"
	done

MtBattleTrainer56:
	trainer TEACHER, MT_BATTLE_56, EVENT_BEAT_MT_BATTLE_56, .before_text, .defeat_text, 0, .script

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

MtBattleTrainer57:
	trainer SKIER, MT_BATTLE_57, EVENT_BEAT_MT_BATTLE_57, .before_text, .defeat_text, 0, .script

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

MtBattleTrainer58:
	trainer BOARDER, MT_BATTLE_58, EVENT_BEAT_MT_BATTLE_58, .before_text, .defeat_text, 0, .script

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

MtBattleTrainer59:
	trainer SCIENTIST, MT_BATTLE_59, EVENT_BEAT_MT_BATTLE_59, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "I might not look"
	line "it, but I'm one for"
	para "gaining real"
	line "experience in"
	cont "battle."

	para "I toughened up my"
	line "party through"
	cont "fieldwork."
	done

.defeat_text
	text "I guess we were"
	line "lacking in field-"
	cont "work still."
	done

.after_text
	text "If we meet some-"
	line "where, can I get"
	para "you to help with"
	line "my fieldwork?"
	done

MtBattleTrainer60:
	trainer POKEFANF, MT_BATTLE_60, EVENT_BEAT_MT_BATTLE_60, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Welcome! I'm"
	line "GLYDIN. I'll be"
	para "providing the"
	line "finishing touch in"
	cont "7F."
	done

.defeat_text
	text "That's magnificent!"
	done

.after_text
	text "It makes sense."
	line "After all, you"
	para "were good enough"
	line "to reach here."
	done

SilphCo7F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2,  0, SILPH_CO_ELEVATOR, 2
	warp_event  5,  0, SILPH_CO_8F, 3
	warp_event 19,  0, SILPH_CO_6F, 2

	db 1 ; coord events
	coord_event 19,  1, SCENE_ALWAYS, SilphCo7F_CheckForHeal

	db 0 ; bg events

	db 11 ; object events
	object_event 18,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtBattleNurseFinished, -1
	object_event 22,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, MtBattleTrainer51, -1
	object_event 14,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, MtBattleTrainer52, -1
	object_event 12,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, MtBattleTrainer53, -1
	object_event  8,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtBattleTrainer54, -1
	object_event 15, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, MtBattleTrainer55, -1
	object_event 13, 15, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, MtBattleTrainer56, -1
	object_event  8, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer57, -1
	object_event  0,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, MtBattleTrainer58, -1
	object_event  5,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, MtBattleTrainer59, -1
	object_event  0,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, MtBattleTrainer60, -1
