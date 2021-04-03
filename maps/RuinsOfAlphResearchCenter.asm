	object_const_def ; object_event constants
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST1
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST2
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST3

RuinsOfAlphResearchCenter_MapScripts:
	db 2 ; scene scripts
	scene_script GenericDummyScript ; SCENE_RUINSOFALPHRESEARCHCENTER_NOTHING
	scene_script .GetUnownDex ; SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .ScientistCallback

.GetUnownDex:
	prioritysjump .GetUnownDexScript
	end

.ScientistCallback:
	checkscene
	ifequal SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX, .ShowScientist
	return

.ShowScientist:
	moveobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, 3, 7
	appear RUINSOFALPHRESEARCHCENTER_SCIENTIST3
	return

.GetUnownDexScript:
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenter_Movement_ScientistApproachPC
	playsound SFX_BOOT_PC
	pause 60
	playsound SFX_SWITCH_POKEMON
	pause 30
	playsound SFX_TALLY
	pause 30
	playsound SFX_TRANSACTION
	pause 30
	turnobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, DOWN
	opentext
	writetext RuinsOfAlphResearchCenterModifiedDexText
	waitbutton
	closetext
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenter_Movement_ScientistApproachPlayer
	opentext
	writetext RuinsOfAlphResearchCenterDexUpgradedText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_UNOWN_DEX
	writetext RuinsOfAlphResearchCenterScientist3Text
	waitbutton
	closetext
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenter_Movement_ScientistWalkBack
	setscene SCENE_RUINSOFALPHRESEARCHCENTER_NOTHING
	special RestartMapMusic
	end

RuinsOfAlphResearchCenterScientist3Script:
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .PrinterAvailable
	jumptextfaceplayer RuinsOfAlphResearchCenterScientist3Text

.PrinterAvailable:
	setevent EVENT_UNOWN_PRINTER_AVAILABLE
	jumptextfaceplayer RuinsOfAlphResearchCenterScientist3_PrinterAvailable

RuinsOfAlphResearchCenterScientist1Script:
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
	checkflag ENGINE_UNOWN_DEX
	iftrue .GotUnownDex
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .UnownAppeared
	jumptextfaceplayer RuinsOfAlphResearchCenterScientist1Text

.UnownAppeared:
	jumptextfaceplayer RuinsOfAlphResearchCenterScientist1Text_UnownAppeared

.GotUnownDex:
	jumptextfaceplayer RuinsOfAlphResearchCenterScientist1Text_GotUnownDex

.GotAllUnown:
	clearevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	jumptextfaceplayer RuinsOfAlphResearchCenterScientist1Text_GotAllUnown

RuinsOfAlphResearchCenterComputer:
	readmem wUnownInformationFilesCount
	iftrue .show_files
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iftrue .SkipChecking
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
.SkipChecking:
	jumptext RuinsOfAlphResearchCenterComputerText

.GotAllUnown:
	jumptext RuinsOfAlphResearchCenterComputerText_GotAllUnown

.show_files
	opentext
	writetext .which_file_text
	ifgreater 1, .load2
	loadmenu .header1
	sjump .loaded

.load2
	ifgreater 2, .load3
	loadmenu .header2
	sjump .loaded

.load3
	loadmenu .header3
.loaded
	verticalmenu
	closewindow
	iffalse .done
	callasm TextFileViewer
.done
	closetext
	end

.which_file_text
	text "Open which file?"
	done

.header1
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 14, 4
	dw .data1
	db 1 ; default option

.data1
	db STATICMENU_CURSOR ; flags
	db 1 ; items
	db "UNOWN.TXT@"

.header2
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 14, 6
	dw .data2
	db 1 ; default option

.data2
	db STATICMENU_CURSOR ; flags
	db 2 ; items
	db "UNOWN.TXT@"
	db "HIDNPWR1.TXT@"

.header3
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 14, 10
	dw .data3
	db 1 ; default option

.data3
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "UNOWN.TXT@"
	db "HIDNPWR1.TXT@"
	db "HIDNPWR2.TXT@"
	db "BUTTONS.TXT@"

RuinsOfAlphResearchCenterPrinter:
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iftrue .SkipChecking
	checkevent EVENT_UNOWN_PRINTER_AVAILABLE
	iftrue .PrinterAvailable
.SkipChecking:
	jumptext RuinsOfAlphResearchCenterPrinterText_DoesntWork

.PrinterAvailable:
	opentext
	writetext RuinsOfAlphResearchCenterUnownPrinterText
	waitbutton
	special UnownPrinter
	closetext
	end

RuinsOfAlphResearchCenterBookshelf:
	jumptext RuinsOfAlphResearchCenterAcademicBooksText

RuinsOfAlphResearchCenter_Movement_ScientistApproachPC:
	step UP
	step UP
	step LEFT
	turn_head UP
	step_end

RuinsOfAlphResearchCenter_Movement_ScientistApproachPlayer:
	step DOWN
	step_end

RuinsOfAlphResearchCenter_Movement_ScientistWalkBack:
	step UP
	step_end

RuinsOfAlphResearchCenterModifiedDexText:
	text "Done!"

	para "I modified your"
	line "#DEX."

	para "I added an"
	line "optional #DEX"
	para "to store UNOWN"
	line "data."

	para "It records them in"
	line "the sequence that"
	cont "they were caught."
	done

RuinsOfAlphResearchCenterDexUpgradedText:
	text "<PLAYER>'s #DEX"
	line "was upgraded."
	done

RuinsOfAlphResearchCenterScientist3Text:
	text "The UNOWN you"
	line "catch will all be"
	cont "recorded."

	para "Check to see how"
	line "many kinds exist."
	done

RuinsOfAlphResearchCenterScientist3_PrinterAvailable:
	text "You caught all the"
	line "UNOWN variations?"

	para "That's a great"
	line "achievement!"

	para "I've set up the"
	line "printer here for"
	cont "handling UNOWN."

	para "Feel free to use"
	line "it anytime."
	done

RuinsOfAlphResearchCenterScientist1Text:
	text "The RUINS are"
	line "about 1500 years"
	cont "old."

	para "But it's not known"
	line "why they were"
	cont "built--or by whom."
	done

RuinsOfAlphResearchCenterScientist1Text_GotUnownDex:
	text "I wonder how many"
	line "kinds of #MON"
	cont "are in the RUINS?"
	done

RuinsOfAlphResearchCenterScientist1Text_UnownAppeared:
	text "#MON appeared"
	line "in the RUINS?"

	para "That's incredible"
	line "news!"

	para "We'll need to"
	line "investigate this."
	done

RuinsOfAlphResearchCenterScientist1Text_GotAllUnown:
	text "Our investigation,"
	line "with your help, is"
	para "giving us insight"
	line "into the RUINS."

	para "The RUINS appear"
	line "to have been built"
	para "as a habitat for"
	line "#MON."
	done

RuinsOfAlphResearchCenterScientist2Text:
	text "There are odd"
	line "patterns drawn on"
	para "the walls of the"
	line "RUINS."

	para "They must be the"
	line "keys for unravel-"
	cont "ing the mystery"
	cont "of the RUINS."
	done

RuinsOfAlphResearchCenterScientist2Text_UnownAppeared:
	text "The strange"
	line "#MON you saw in"
	cont "the RUINS?"

	para "They appear to be"
	line "very much like the"
	para "drawings on the"
	line "walls there."

	para "Hmm…"

	para "That must mean"
	line "there are many"
	cont "kinds of them…"
	done

RuinsOfAlphResearchCenterComputerText:
	text "RUINS OF ALPH"

	para "Exploration"
	line "Year 10"
	done

RuinsOfAlphResearchCenterComputerText_GotAllUnown:
	text "Mystery #MON"
	line "Name: UNOWN"

	para "A total of 26"
	line "kinds found."
	done

RuinsOfAlphResearchCenterPrinterText_DoesntWork:
	text "This doesn't seem"
	line "to work yet."
	done

RuinsOfAlphResearchCenterUnownPrinterText:
	text "UNOWN may be"
	line "printed out."
	done

RuinsOfAlphResearchCenterAcademicBooksText:
	text "There are many"
	line "academic books."

	para "Ancient Ruins…"
	line "Mysteries of the"
	cont "Ancients…"
	done

RuinsOfAlphResearchCenterScientist2Script:
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .UnownAppeared
	jumptextfaceplayer RuinsOfAlphResearchCenterScientist2Text

.no_storage
	jumptextfaceplayer RuinsOfAlphResearchCenterScientist2Text_UnownAppeared

.UnownAppeared:
	readmem wTPPFeatureLock
	ifequal TPP_FEATURE_LOCK_VALUE, .no_storage
	faceplayer
	opentext
	checkspecialstorage SPECIALSTORAGE_UNOWN
	iftrue ScientistWithdrawUnown
	writetext RuinsOfAlphResearchCenterScientist2Text_UnownAppeared
	waitbutton
	closetext
	pause 5
	showemote EMOTE_SHOCK, RUINSOFALPHRESEARCHCENTER_SCIENTIST2, 15
	pause 5
	opentext
	; fallthrough

ScientistHoldUnown:
	writetext .request_hold_text
	yesorno
	iffalse .refused_deposit
	partyselect
	iffalse .refused_deposit
	depositspecial SPECIALSTORAGE_UNOWN, UNOWN, CHATTY_HP
	ifequal SPECIALDEPOSIT_HOLDING_MAIL, .mail
	ifequal SPECIALDEPOSIT_LAST_MON, .last_mon
	ifequal SPECIALDEPOSIT_WRONG_SPECIES, .wrong_mon
	ifequal SPECIALDEPOSIT_WRONG_MOVES, .wrong_move
	ifequal SPECIALDEPOSIT_EGG, .egg
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	writetext .deposited_text
	waitbutton
	closetext
	end

.request_hold_text
	text "Oh, is that a"
	line "special UNOWN you"
	cont "have with you?"

	para "We need to study"
	line "it! Could you"
	para "please leave it"
	line "with us for a"
	cont "little while?"
	done

.deposited_text
	text "Thank you! Please"
	line "come back whenever"
	para "you want your"
	line "UNOWN back."
	done

.refused_deposit
	writetext .refused_hold_text
	waitbutton
	closetext
	end

.refused_hold_text
	text "That's too bad."
	line "Please come back"
	para "and tell me if you"
	line "change your mind!"
	done

.mail
	writetext .mail_text
	waitbutton
	closetext
	end

.mail_text
	text "I can't accept this"
	line "MAIL. It's not for"
	cont "me, after all."

	para "Please take the"
	line "MAIL away before"
	para "leaving your UNOWN"
	line "with us."
	done

.last_mon
	writetext .last_mon_text
	waitbutton
	closetext
	end

.last_mon_text
	text "Unfortunately, you"
	line "currently have no"
	para "other #MON that"
	line "can battle."

	para "Please come back"
	line "when you have more"
	para "healthy #MON"
	line "with you so that"
	para "you can continue"
	line "battling."
	done

.wrong_mon
	writetext .wrong_mon_text
	waitbutton
	closetext
	end

.wrong_mon_text
	text "That doesn't seem"
	line "to be an UNOWN at"
	cont "all."

	para "Are you sure this"
	line "is the #MON I'm"
	cont "looking for?"
	done

.wrong_move
	writetext .wrong_move_text
	waitbutton
	closetext
	end

.wrong_move_text
	text "I'm afraid this is"
	line "just an ordinary"
	cont "UNOWN."

	para "All UNOWN are"
	line "interesting, but I"
	para "cannot accept this"
	line "one."
	done

.egg
	writetext .egg_text
	waitbutton
	closetext
	end

.egg_text
	text "This is just an"
	line "EGG, though."

	para "I don't think"
	line "there is an UNOWN"
	cont "inside, is there?"
	done

ScientistWithdrawUnown:
	writetext .request_withdraw_text
	yesorno
	iffalse .refused_withdraw
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .party_full
	withdrawspecial SPECIALSTORAGE_UNOWN, UNOWN, wPlayerName
	iffalse .party_full
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .no_new_data
	readmem wUnownInformationFilesCount
	ifequal UNOWN_INFORMATION_FILE_COUNT_MAX, .no_new_data
	addval 1
	writemem wUnownInformationFilesCount
	writetext .new_data_text
	waitbutton
.no_new_data
	closetext
	end

.request_withdraw_text
	text "We have discovered"
	line "some great things"
	cont "about your UNOWN!"

	para "It seems to know"
	line "a strange version"
	para "of a common move,"
	line "HIDDEN POWER."

	para "Do you want it"
	line "back now?"
	done

.new_data_text
	text "I just loaded our"
	line "new discoveries"
	para "into that PC over"
	line "there."

	para "Feel free to check"
	line "it out!"
	done

.refused_withdraw
	writetext .refused_withdraw_text
	waitbutton
	closetext
	end

.refused_withdraw_text
	text "We'll continue our"
	line "studies, then."

	para "Please come back"
	line "whenever you"
	cont "change your mind."
	done

.party_full
	writetext .party_full_text
	waitbutton
	closetext
	end

.party_full_text
	text "You can't carry any"
	line "more #MON right"
	cont "now, though."

	para "It would be a"
	line "shame to send such"
	para "a special #MON"
	line "to a PC BOX, don't"
	cont "you think?"
	done

RuinsOfAlphResearchCenter_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, RUINS_OF_ALPH_OUTSIDE, 6
	warp_event  3,  7, RUINS_OF_ALPH_OUTSIDE, 6

	db 0 ; coord events

	db 3 ; bg events
	bg_event  6,  5, BGEVENT_READ, RuinsOfAlphResearchCenterBookshelf
	bg_event  3,  4, BGEVENT_READ, RuinsOfAlphResearchCenterComputer
	bg_event  7,  1, BGEVENT_READ, RuinsOfAlphResearchCenterPrinter

	db 3 ; object events
	object_event  4,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist1Script, -1
	object_event  5,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist2Script, -1
	object_event  2,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist3Script, EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
