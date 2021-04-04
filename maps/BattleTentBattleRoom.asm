BattleTentBattleRoom_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MapBattleTentBattleRoomDoorScript:
	jumptext MapBattleTentBattleRoomDoorText

MapBattleTentBattleRoomDoorText:
	text "It's locked<...>"

	para "<...>Or so it says,"
	line "but there's no lock"
	cont "on the door<...>"
	done

BattleTentTutor1Script:
	faceplayer
	checkevent EVENT_BATTLE_TENT_TUTOR_1_READY
	iftrue .ready
	opentext
	writetext .introduction_text
	yesorno
	iffalse .refused
	writetext BattleTentTutor_OkayLetsGoText
	waitbutton
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	loadtrainer HIKER, DARRELL
	winlosstext .win_text, .loss_text
	startbattle
	reloadmap
	special HealParty
	iftrue BattleTentTutor_BetterLuckNextTime
	setevent EVENT_BATTLE_TENT_TUTOR_1_READY
.ready
	opentext
	writetext BattleTentTutor_WhatMoveText
	movetutor SUPERPOWER, SIGNAL_BEAM, POISON_JAB
	iftrue BattleTentTutor_ComeAgainLater
	writetext .taught_move_text
	waitbutton
	closetext
	clearevent EVENT_BATTLE_TENT_TUTOR_1_READY
	end

.refused
	writetext .refused_text
	waitbutton
	closetext
	end

.introduction_text
	text "I've trained my"
	line "#MON to use the"
	para "strongest moves"
	line "they can!"

	para "Beat me and I'll"
	line "teach them to"
	para "your #MON. What"
	line "do you say?"
	done

.win_text
	text "Argggh!"
	done

.loss_text
	text "Standing strong!"
	done

.taught_move_text
	text "I'll beat you next"
	line "time! Come again!"
	done

.refused_text
	text "Hah! I bet you're"
	line "afraid of losing!"
	done

BattleTentTutor2Script:
	faceplayer
	checkevent EVENT_BATTLE_TENT_TUTOR_2_READY
	iftrue .ready
	opentext
	writetext .introduction_text
	yesorno
	iffalse .refused
	writetext BattleTentTutor_OkayLetsGoText
	waitbutton
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	loadtrainer BIRD_KEEPER, ADAM
	winlosstext .win_text, .loss_text
	startbattle
	reloadmap
	special HealParty
	iftrue BattleTentTutor_BetterLuckNextTime
	setevent EVENT_BATTLE_TENT_TUTOR_2_READY
.ready
	opentext
	writetext BattleTentTutor_WhatMoveText
	movetutor AERIAL_ACE, ROOST, HEAT_WAVE
	iftrue BattleTentTutor_ComeAgainLater
	writetext .taught_move_text
	waitbutton
	closetext
	clearevent EVENT_BATTLE_TENT_TUTOR_2_READY
	end

.refused
	writetext .refused_text
	waitbutton
	closetext
	end

.introduction_text
	text "My #MON can fly"
	line "over yours with"
	para "these new moves I"
	line "taught them!"

	para "If you beat me in"
	line "battle, I'll teach"
	para "your #MON one"
	line "of these moves."
	cont "What do you say?"
	done

.win_text
	text "Smashed into the"
	line "ground<...>"
	done

.loss_text
	text "Always fly high!"
	done

.taught_move_text
	text "Come again if you"
	line "want me to teach"
	cont "another move!"
	done

.refused_text
	text "Are you scared of"
	line "my birds?"
	done

BattleTentTutor3Script:
	faceplayer
	checkevent EVENT_BATTLE_TENT_TUTOR_3_READY
	iftrue .ready
	opentext
	writetext .introduction_text
	yesorno
	iffalse .refused
	writetext BattleTentTutor_OkayLetsGoText
	waitbutton
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	loadtrainer COOLTRAINERF, GLORIA
	winlosstext .win_text, .loss_text
	startbattle
	reloadmap
	special HealParty
	iftrue BattleTentTutor_BetterLuckNextTime
	setevent EVENT_BATTLE_TENT_TUTOR_3_READY
.ready
	opentext
	writetext BattleTentTutor_WhatMoveText
	movetutor THUNDER_WAVE, DRAGON_PULSE, IRON_HEAD
	iftrue BattleTentTutor_ComeAgainLater
	writetext .taught_move_text
	waitbutton
	closetext
	clearevent EVENT_BATTLE_TENT_TUTOR_3_READY
	end

.refused
	writetext .refused_text
	waitbutton
	closetext
	end

.introduction_text
	text "I've taught my"
	line "#MON some great"
	para "new moves. If you"
	line "beat me in battle,"
	para "I can teach them"
	line "to yours too."

	para "What do you say?"
	done

.win_text
	text "Not strong enough!"
	done

.loss_text
	text "That's too bad!"
	done

.taught_move_text
	text "Great! If you want"
	line "me to teach your"
	para "#MON another"
	line "move, you'll have"
	cont "to beat me again!"
	done

.refused_text
	text "And I was even"
	line "going to do it for"
	cont "free<...>"
	done

BattleTentTutor4Script:
	faceplayer
	checkevent EVENT_BATTLE_TENT_TUTOR_4_READY
	iftrue .ready
	opentext
	writetext .introduction_text
	yesorno
	iffalse .refused
	writetext BattleTentTutor_OkayLetsGoText
	waitbutton
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	loadtrainer BLACKBELT_T, RHETT
	winlosstext .win_text, .loss_text
	startbattle
	reloadmap
	special HealParty
	iftrue BattleTentTutor_BetterLuckNextTime
	setevent EVENT_BATTLE_TENT_TUTOR_4_READY
.ready
	opentext
	writetext BattleTentTutor_WhatMoveText
	movetutor SWORDS_DANCE, ROCK_SLIDE, DRAIN_PUNCH
	iftrue BattleTentTutor_ComeAgainLater
	writetext .taught_move_text
	waitbutton
	closetext
	clearevent EVENT_BATTLE_TENT_TUTOR_4_READY
	end

.refused
	writetext .refused_text
	waitbutton
	closetext
	end

.introduction_text
	text "I can teach your"
	line "#MON one of the"
	para "moves I use in"
	line "battle."

	para "But first, you'll"
	line "have to beat me!"

	para "What do you say?"
	done

.win_text
	text "Well done!"
	done

.taught_move_text
	text "Excellent. If you"
	line "want my services"
	para "again, you'll have"
	line "to beat me again."
	done

.loss_text
.refused_text
	text "Come back when you"
	line "are strong enough."
	done

BattleTentTutor5Script:
	faceplayer
	checkevent EVENT_BATTLE_TENT_TUTOR_5_READY
	iftrue .ready
	opentext
	writetext .introduction_text
	yesorno
	iffalse .refused
	writetext BattleTentTutor_OkayLetsGoText
	waitbutton
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	loadtrainer BURGLAR, JENSEN
	winlosstext .win_text, .loss_text
	startbattle
	reloadmap
	special HealParty
	iftrue BattleTentTutor_BetterLuckNextTime
	setevent EVENT_BATTLE_TENT_TUTOR_5_READY
.ready
	opentext
	writetext BattleTentTutor_WhatMoveText
	movetutor NASTY_PLOT, DAZZLINGLEAM, DARK_PULSE
	iftrue BattleTentTutor_ComeAgainLater
	writetext .taught_move_text
	waitbutton
	closetext
	clearevent EVENT_BATTLE_TENT_TUTOR_5_READY
	end

.refused
	writetext .refused_text
	waitbutton
	closetext
	end

.introduction_text
	text "I found these new"
	line "moves for my"
	cont "#MON to learn."

	para "Want one? Beat me"
	line "in battle and I'll"
	para "teach one to your"
	line "#MON."
	done

.win_text
	text "Fine, you win!"
	done

.loss_text
	text "Hah! I win!"
	done

.taught_move_text
	text "If you want your"
	line "#MON to learn"
	para "another move, you"
	line "will have to beat"
	cont "me again!"
	done

.refused_text
	text "Fine, I'll keep"
	line "them to myself,"
	cont "then!"
	done

BattleTentTutor6Script:
	faceplayer
	checkevent EVENT_BATTLE_TENT_TUTOR_6_READY
	iftrue .ready
	opentext
	writetext .introduction_text
	yesorno
	iffalse .refused
	writetext BattleTentTutor_OkayLetsGoText
	waitbutton
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	loadtrainer MEDIUM, HOLLY
	winlosstext .win_text, .loss_text
	startbattle
	reloadmap
	special HealParty
	iftrue BattleTentTutor_BetterLuckNextTime
	setevent EVENT_BATTLE_TENT_TUTOR_6_READY
.ready
	opentext
	writetext BattleTentTutor_WhatMoveText
	movetutor WILL_O_WISP, KNOCK_OFF, CALM_MIND
	iftrue BattleTentTutor_ComeAgainLater
	writetext .taught_move_text
	waitbutton
	closetext
	clearevent EVENT_BATTLE_TENT_TUTOR_6_READY
	end

.refused
	writetext .refused_text
	waitbutton
	closetext
	end

.introduction_text
	text "I foresee that you"
	line "will lose<...>"

	para "If my prediction"
	line "is wrong, I'll"
	para "teach one of your"
	line "#MON a new move"
	cont "for free."

	para "What do you say?"
	done

.win_text
	text "How is this even"
	line "possible?"
	done

.loss_text
	text "My predictions are"
	line "always correct."
	done

.taught_move_text
	text "That was a fluke!"
	line "Come back if you"
	cont "dare try again!"
	done

.refused_text
	text "That's smart of"
	line "you. I would have"
	cont "won."
	done

BattleTentTutor_BetterLuckNextTime:
	jumptext .text

.text
	text "Better luck next"
	line "time!"
	done

BattleTentTutor_ComeAgainLater:
	writetext .text
	waitbutton
	closetext
	end

.text
	text "Come again later."
	line "I'll be waiting."
	done

BattleTentTutor_OkayLetsGoText:
	text "Okay, let's go!"
	done

BattleTentTutor_WhatMoveText:
	text "You won! What move"
	line "should I teach?"
	done

BattleTentBattleRoom_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 5, 7, BATTLE_TENT_RUINS, 4
	warp_event 6, 7, BATTLE_TENT_RUINS, 4
	warp_event 6, 0, BATTLE_TENT_PC_ROOM, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 6, 0, BGEVENT_READ, MapBattleTentBattleRoomDoorScript

	db 6 ; object events
	object_event  2,  1, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BattleTentTutor1Script, -1
	object_event  9,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BattleTentTutor2Script, -1
	object_event  0,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BattleTentTutor3Script, -1
	object_event 11,  2, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BattleTentTutor4Script, -1
	object_event  0,  5, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BattleTentTutor5Script, -1
	object_event 11,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BattleTentTutor6Script, -1
