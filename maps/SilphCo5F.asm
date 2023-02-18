 	object_const_def ; object_event constants
	const SILPHCO5F_NURSE
	const MTBATTLETRAINER31
	const MTBATTLETRAINER32
	const MTBATTLETRAINER33
	const MTBATTLETRAINER34
	const MTBATTLETRAINER35
	const MTBATTLETRAINER36
	const MTBATTLETRAINER37
	const MTBATTLETRAINER38
	const MTBATTLETRAINER39
	const MTBATTLETRAINER40

SilphCo5F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilphCo5F_CheckForHeal:
	checkevent EVENT_MT_BATTLE_HEALED_5F
	iftrue GenericDummyScript
	setevent EVENT_MT_BATTLE_HEALED_5F
	turnobject SILPHCO5F_NURSE, RIGHT
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

MtBattleTrainer31:
	trainer POKEFANF, MT_BATTLE_31, EVENT_BEAT_MT_BATTLE_31, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "It's 5F from here."
	line "Would you like to"
	para "battle with me,"
	line "sweetie?"
	done

.defeat_text
	text "Oh, how silly!"
	done

.after_text
	text "Oh, I so lost."
	line "Good luck,"
	cont "sweetie!"
	done

MtBattleTrainer32:
	trainer BOARDER, MT_BATTLE_32, EVENT_BEAT_MT_BATTLE_32, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "I became a trainer"
	line "when I was about"
	cont "your age, I'd say."
	done

.defeat_text
	text "You're too much!"
	done

.after_text
	text "You're already so"
	line "strong at your"
	para "age. I wonder how"
	line "much stronger"
	para "you'll be when you"
	line "reach my age."
	done

MtBattleTrainer33:
	trainer SCIENTIST, MT_BATTLE_33, EVENT_BEAT_MT_BATTLE_33, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text_far MtBattleTrainer33BeforeText
	text_end

.defeat_text
	text "I'm over and done"
	line "with!"
	done

.after_text
	text "Well, well. It's"
	line "time for me to get"
	para "on with my next"
	line "research project."
	done

MtBattleTrainer34:
	trainer SCHOOLBOY, MT_BATTLE_34, EVENT_BEAT_MT_BATTLE_34, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "I'm not very inter-"
	line "ested in training."

	para "I'm strong without"
	line "any training, you"
	cont "see."
	done

.defeat_text
	text "I really am"
	line "strong!"
	done

.after_text
	text "I'm telling on you"
	line "to my papa!"
	done

MtBattleTrainer35:
	trainer SWIMMERM, MT_BATTLE_35, EVENT_BEAT_MT_BATTLE_35, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Your complexion's"
	line "not good. You"
	para "should work out"
	line "with me and shed a"
	cont "little sweat!"
	done

.defeat_text
	text "I'm dripping with"
	line "perspiration!"
	done

.after_text
	text "Whew! I worked up"
	line "a great sweat!"
	done

MtBattleTrainer36:
	trainer SWIMMERF, MT_BATTLE_36, EVENT_BEAT_MT_BATTLE_36, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Do you feel like"
	line "training with me?"
	done

.defeat_text
	text "Isn't this a shock!"
	done

.after_text
	text "I'll redouble my"
	line "training!"
	done

MtBattleTrainer37:
	trainer COOLTRAINERM, MT_BATTLE_37, EVENT_BEAT_MT_BATTLE_37, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "I'm a graduate of"
	line "a famous TRAINER"
	cont "SCHOOL."

	para "My grades were"
	line "blemish-free!"
	done

.defeat_text
	text "My record's been"
	line "blemished!"
	done

.after_text
	text "I may redo my"
	line "studies at the"
	cont "SCHOOL."
	done

MtBattleTrainer38:
	trainer MEDIUM, MT_BATTLE_38, EVENT_BEAT_MT_BATTLE_38, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "Sorry to say you'll"
	line "go no farther,"
	cont "sonny."
	done

.defeat_text
	text "Trampled by the"
	line "march of time!"
	done

.after_text
	text "Show some compas-"
	line "sion for the"
	cont "elderly!"
	done

MtBattleTrainer39:
	trainer BIKER, MT_BATTLE_39, EVENT_BEAT_MT_BATTLE_39, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text_far MtBattleTrainer39BeforeText
	text_end

.defeat_text
	text "It's all about"
	line "guts!"
	done

.after_text
	text "Being too gutsy"
	line "left me tuckered"
	cont "out<...> Gasp, gasp<...>"
	done

MtBattleTrainer40:
	trainer SUPER_NERD, MT_BATTLE_40, EVENT_BEAT_MT_BATTLE_40, .before_text, .defeat_text, 0, .script

.script
	endifjustbattled
	jumptext .after_text

.before_text
	text "I'm SLEWIS. I'm the"
	line "last one on 5F."

	para "You should be"
	line "proud to have come"
	cont "this far."
	done

.defeat_text
	text "That's most"
	line "impressive!"
	done

.after_text
	text "You really are"
	line "impressive. Have"
	para "you considered"
	line "applying for a job"
	cont "at this building?"
	done

SilphCo5F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2,  0, SILPH_CO_ELEVATOR, 2
	warp_event  5,  0, SILPH_CO_6F, 3
	warp_event 19,  0, SILPH_CO_4F, 2

	db 1 ; coord events
	coord_event 19,  1, SCENE_ALWAYS, SilphCo5F_CheckForHeal

	db 0 ; bg events

	db 11 ; object events
	object_event 18,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtBattleNurseFinished, -1
	object_event 20, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, MtBattleTrainer33, -1
	object_event 17, 14, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer32, -1
	object_event 10, 12, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, MtBattleTrainer31, -1
	object_event 17,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer34, -1
	object_event 15,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, MtBattleTrainer35, -1
	object_event  9,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer36, -1
	object_event 15,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer37, -1
	object_event  8, 12, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, MtBattleTrainer38, -1
	object_event  5, 10, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, MtBattleTrainer39, -1
	object_event  1,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, MtBattleTrainer40, -1
