	object_const_def ; object_event constants
	const KANTORADIOTOWER1F_RECEPTIONIST
	const KANTORADIOTOWER1F_OFFICER
	const KANTORADIOTOWER1F_SUPER_NERD1
	const KANTORADIOTOWER1F_GENTLEMAN
	const KANTORADIOTOWER1F_SUPER_NERD2

KantoRadioTower1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

KantoRadioTower1FReceptionistScript:
	jumptextfaceplayer KantoRadioTower1FReceptionistText

KantoRadioTower1FOfficerScript:
	jumptextfaceplayer KantoRadioTower1FOfficerText

KantoRadioTower1FSuperNerd1Script:
	jumptextfaceplayer KantoRadioTower1FSuperNerd1Text

KantoRadioTower1FGentlemanScript:
	faceplayer
	opentext
	checkflag ENGINE_EXPN_CARD
	iftrue .GotExpnCard
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext KantoRadioTower1FGentlemanText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext KantoRadioTower1FGentlemanText_ReturnedMachinePart
	buttonsound
	getstring STRING_BUFFER_4, .expncardname
	scall .receiveitem
	setflag ENGINE_EXPN_CARD
.GotExpnCard:
	writetext KantoRadioTower1FGentlemanText_GotExpnCard
	waitbutton
	closetext
	end

.receiveitem:
	jumpstd receiveitem
	end

.expncardname
	db "EXPN CARD@"

KantoRadioTower1FSuperNerd2Script:
	faceplayer
	opentext
	checkflag ENGINE_EXPN_CARD
	iftrue .GotExpnCard
	writetext KantoRadioTower1FSuperNerd2Text
	waitbutton
	closetext
	end

.GotExpnCard:
	writetext KantoRadioTower1FSuperNerd2Text_GotExpnCard
	waitbutton
	closetext
	end

KantoRadioTower1FDirectory:
	jumptext KantoRadioTower1FDirectoryText

KantoRadioTower1FPokeFluteSign:
	jumptext KantoRadioTower1FPokeFluteSignText

KantoRadioTower1FReceptionistText:
	text "Welcome!"
	line "Feel free to look"

	para "around anywhere on"
	line "this floor."
	done

KantoRadioTower1FOfficerText:
	text "Sorry, but you can"
	line "only tour the"
	cont "ground floor."

	para "Ever since JOHTO's"
	line "RADIO TOWER was"

	para "taken over by a"
	line "criminal gang, we"

	para "have had to step"
	line "up our security."
	done

KantoRadioTower1FSuperNerd1Text:
	text "Many people are"
	line "hard at work here"

	para "in the RADIO"
	line "TOWER."

	para "They must be doing"
	line "their best to put"
	cont "on good shows."
	done

KantoRadioTower1FGentlemanText:
	text "Oh, no, no, no!"

	para "We've been off the"
	line "air ever since the"

	para "POWER PLANT shut"
	line "down."

	para "All my efforts to"
	line "start this station"

	para "would be wasted if"
	line "I can't broadcast."

	para "I'll be ruined!"
	done

KantoRadioTower1FGentlemanText_ReturnedMachinePart:
	text "Ah! So you're the"
	line "<PLAY_G> who solved"

	para "the POWER PLANT's"
	line "problem?"

	para "Thanks to you, I"
	line "never lost my job."

	para "I tell you, you're"
	line "a real lifesaver!"

	para "Please take this"
	line "as my thanks."
	done

KantoRadioTower1FGentlemanText_GotExpnCard:
	text "With that thing,"
	line "you can tune into"

	para "the radio programs"
	line "here in KANTO."

	para "Gahahahaha!"
	done

KantoRadioTower1FSuperNerd2Text:
	text "Hey there!"

	para "I am the super"
	line "MUSIC DIRECTOR!"

	para "Huh? Your #GEAR"
	line "can't tune into my"

	para "music programs."
	line "How unfortunate!"

	para "If you get an EXPN"
	line "CARD upgrade, you"

	para "can tune in. You'd"
	line "better get one!"
	done

KantoRadioTower1FSuperNerd2Text_GotExpnCard:
	text "Hey there!"

	para "I am the super"
	line "MUSIC DIRECTOR!"

	para "I'm responsible"
	line "for the gorgeous"

	para "melodies that go"
	line "out over the air."

	para "Don't be square."
	line "Grab your music"
	cont "off the air!"
	done

KantoRadioTower1FDirectoryText:
	text "1F RECEPTION"
	line "2F SALES"

	para "3F PERSONNEL"
	line "4F PRODUCTION"

	para "5F DIRECTOR'S"
	line "   OFFICE"
	done

KantoRadioTower1FPokeFluteSignText:
	text "Perk Up #MON"
	line "with Mellow Sounds"

	para "of the # FLUTE"
	line "on CHANNEL 20"
	done

KantoRadioTower1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, VERMILION_CITY, 11
	warp_event  3,  7, VERMILION_CITY, 11

	db 0 ; coord events

	db 2 ; bg events
	bg_event 11,  0, BGEVENT_READ, KantoRadioTower1FDirectory
	bg_event  5,  0, BGEVENT_READ, KantoRadioTower1FPokeFluteSign

	db 5 ; object events
	object_event  6,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, KantoRadioTower1FReceptionistScript, -1
	object_event 15,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, KantoRadioTower1FOfficerScript, -1
	object_event  1,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, KantoRadioTower1FSuperNerd1Script, -1
	object_event  9,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KantoRadioTower1FGentlemanScript, -1
	object_event 14,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KantoRadioTower1FSuperNerd2Script, -1
