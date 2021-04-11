AchievementChecker::
	checkevent EVENT_LEGITIMATE_VIRTUAL_BOY
	iftrue .got_virtual_boy
	checkevents /* 1 */ EVENT_BEAT_ELITE_FOUR_REMATCH, \
	            /* 2 */ EVENT_PRINTED_DIPLOMA_AT_LEAST_ONCE, \
	            /* 3 */ EVENT_UNOWN_PRINTER_AVAILABLE, \
	            /* 4 */ EVENT_DEFEATED_MIRROR_PC_AT_LEAST_ONCE, \
	            /* 5 */ EVENT_UNLOCKED_ALL_UNOWN_RESEARCHER_FILES, \
	            /* 6 */ EVENT_CLEARED_MT_BATTLE_AT_LEAST_ONCE, \
	            /* 7 */ EVENT_LARRY_IN_ROCKET_HIDEOUT
	ifequal 1, AchievementChecker_EliteFourTrack
	ifequal 2, AchievementChecker_DiplomaTrack
	ifequal 3, AchievementChecker_UnownDexTrack
	ifequal 4, AchievementChecker_MirrorBattleTrack
	ifequal 5, AchievementChecker_UnownResearchTrack
	ifequal 6, AchievementChecker_MtBattleTrack
	ifequal 7, AchievementChecker_RocketHideoutTrack
	opentext
	writetext .finished_everything_text
	closetext
	givedecoration DECO_VIRTUAL_BOY
	setevent EVENT_LEGITIMATE_VIRTUAL_BOY
.got_virtual_boy
	jumptext .got_virtual_boy_text

.finished_everything_text
	text "<PLAYER>, are you"
	line "unsure of where to"
	para "go next? Let me"
	line "think<...>"

	para "<...>I have nothing."
	line "This is truly"
	para "outstanding! You've"
	line "been everywhere"
	para "you could be and"
	line "done everything"
	cont "you could do!"

	para "That deserves a"
	line "reward! Here, take"
	para "this device. That"
	line "guy over there"
	para "brought it here"
	line "for us to test,"
	para "but we have no use"
	line "for it."
	prompt

.got_virtual_boy_text
	text "Plug that VIRTUAL"
	line "BOY in and give it"
	para "a try! That guy"
	line "over there wanted"
	cont "me to test it<...>"
	done

AchievementChecker_EliteFourTrack:
	checkflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	iffalse .never_reached_league
	checkevent EVENT_BEAT_ELITE_FOUR
	iffalse .not_champion
	checkevent EVENT_BEAT_MT_SILVER
	iffalse .no_silver
	checkevent EVENT_MARINA_DEFEATED
	iffalse .check_bed
	jumptext .rematch_ready_text

.never_reached_league
	jumptext .never_reached_league_text

.not_champion
	jumptext .not_champion_text

.no_silver
	jumptext .no_silver_text

.check_bed
	jumptext .check_bed_text

.never_reached_league_text
	text "A #MON trainer,"
	line "huh? So you want"
	para "to become the next"
	line "CHAMPION?"

	para "Once you have 16"
	line "GYM BADGES, head"
	para "northwest from"
	line "VIRIDIAN CITY and"
	para "you will find the"
	line "road that takes"
	para "you to the #MON"
	line "LEAGUE. Good luck!"
	done

.not_champion_text
	text "The ELITE FOUR is"
	line "tough, isn't it?"

	para "Keep your spirits"
	line "up. One day you'll"
	para "beat them and"
	line "become the next"
	cont "CHAMPION!"
	done

.no_silver_text
	text "There's a route"
	line "that goes west"
	para "from VIRIDIAN CITY"
	line "and all the way"
	cont "back into JOHTO."

	para "That route leads"
	line "to an isolated"
	para "place in JOHTO"
	line "called MT.SILVER."

	para "Have you checked"
	line "it out? The caves"
	para "there are a great"
	line "place to train."
	done

.check_bed_text
	text "There's a trainer"
	line "called RED who"
	para "used to live in"
	line "PALLET TOWN."

	para "Have you been to"
	line "his house? There"
	para "might be something"
	line "interesting there<...>"
	done

.rematch_ready_text
	text "The ELITE FOUR is"
	line "back and stronger"
	cont "than ever."

	para "They're waiting for"
	line "you. Give it your"
	cont "best!"
	done

AchievementChecker_DiplomaTrack:
	readvar VAR_DEXUNCAUGHT
	iftrue .dex_not_full
	checkevent EVENT_ENABLE_DIPLOMA_PRINTING
	iffalse .diploma_ready
	jumptext .not_printed_text

.dex_not_full
	jumptext .dex_not_full_text

.diploma_ready
	jumptext .diploma_ready_text

.dex_not_full_text
	text "You're working on a"
	line "#DEX? How is it"
	cont "coming along?"

	para "PROF.OAK might be"
	line "able to tell you"
	para "more. Keep working"
	line "to fill it up!"
	done

.diploma_ready_text
	text "Is that a complete"
	line "#DEX? One of my"
	para "coworkers upstairs"
	line "might have a"
	cont "reward for you."
	done

.not_printed_text
	text "I heard you earned"
	line "a DIPLOMA for your"
	cont "#DEX work!"

	para "Have you tried to"
	line "print it?"
	done

AchievementChecker_UnownDexTrack:
	scall AchievementChecker_Unown_Common
	iffalse GenericDummyScript
	readvar VAR_UNOWNCOUNT
	ifless NUM_UNOWN, .dex_not_full
	jumptext .printer_not_available_text

.dex_not_full
	jumptext .dex_not_full_text

.dex_not_full_text
	text "You've been catch-"
	line "ing many different"
	para "kinds of UNOWN, I"
	line "see. How's your"
	para "UNOWN DEX coming"
	line "along?"
	done

.printer_not_available_text
	text "You filled up your"
	line "UNOWN DEX? I'm sure"
	para "the scientists at"
	line "the RUINS OF ALPH"
	para "would love to see"
	line "that."
	done

AchievementChecker_MirrorBattleTrack:
	jumptext .text

.text
	text "The BATTLE TENT to"
	line "the south is being"
	para "rebuilt. I heard"
	line "they already set"
	para "up a PC where you"
	line "can battle against"
	cont "your own team."

	para "Have you checked"
	line "it out?"
	done

AchievementChecker_UnownResearchTrack:
	scall AchievementChecker_Unown_Common
	iffalse GenericDummyScript
	readmem wUnownInformationFilesCount
	iffalse .never_researched
	jumptext .researched_some_text

.never_researched
	jumptext .never_researched_text

.never_researched_text
	text "That special UNOWN"
	line "that you have<...>"

	para "The researchers"
	line "working at the"
	para "RUINS OF ALPH will"
	line "probably want to"
	cont "study it."

	para "Have you thought"
	line "of leaving it with"
	para "them for a short"
	line "while?"
	done

.researched_some_text
	text "I see your special"
	line "UNOWN has already"
	para "been the subject"
	line "of some research."

	para "I don't think they"
	line "are done, though."
	para "Maybe you should"
	line "let them study it"
	cont "a bit longer."
	done

AchievementChecker_MtBattleTrack:
	checkevent EVENT_MT_BATTLE_HEALED_2F
	iffalse .never_started
	jumptext .ongoing_text

.never_started
	jumptext .never_started_text

.never_started_text
	text "Have you visited"
	line "SILPH CO.'s main"
	para "offices? They are"
	line "in SAFFRON CITY,"
	para "a short trip from"
	line "here."

	para "They are open to"
	line "the public again,"
	para "it seems. But it's"
	line "not just a regular"
	para "office building"
	line "anymore."

	para "Apparently, they're"
	line "doing something"
	cont "new in there<...>"
	done

.ongoing_text
	text "SILPH CO.'s battle"
	line "facility is tough,"
	cont "isn't it?"

	para "But making it to"
	line "the top is worth"
	cont "it."
	done

AchievementChecker_RocketHideoutTrack:
	checkevent EVENT_OPENED_ROCKET_HIDEOUT
	iffalse .closed
	jumptext .open_text

.closed
	jumptext .closed_text

.closed_text
	text "I've heard that"
	line "TEAM ROCKET has a"
	para "secret base here"
	line "in this city<...>"

	para "Maybe you should"
	line "look for it?"
	done

.open_text
	text "So you've found"
	line "TEAM ROCKET's"
	cont "secret hideout?"

	para "Behind a hidden"
	line "wall in the GAME"
	cont "CORNER?"

	para "With your help, we"
	line "could drive them"
	cont "out of town!"
	done

AchievementChecker_Unown_Common:
	checkflag ENGINE_UNLOCKED_UNOWNS_A_TO_K
	iftrue .unlocked
	checkflag ENGINE_UNLOCKED_UNOWNS_L_TO_R
	iftrue .unlocked
	checkflag ENGINE_UNLOCKED_UNOWNS_S_TO_W
	iftrue .unlocked
	checkflag ENGINE_UNLOCKED_UNOWNS_X_TO_Z
	iffalse .no_unown
.unlocked
	checkflag ENGINE_UNOWN_DEX
	iffalse .no_dex
	end

.no_unown
	jumptext .no_unown_text

.no_dex
	jumptext .no_dex_text

.no_unown_text
	text "Have you been to"
	line "the RUINS OF ALPH?"

	para "There's something"
	line "strange about that"
	cont "huge cave<...>"
	done

.no_dex_text
	text "There's many kinds"
	line "of UNOWN out there"
	para "just like the one"
	line "you have."

	para "Maybe you should"
	line "try catching some."
	done
