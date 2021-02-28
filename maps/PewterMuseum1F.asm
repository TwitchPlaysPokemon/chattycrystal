	object_const_def ; object_event constants
	const PEWTERMUSEUM1F_RECEPTIONIST
	const PEWTERMUSEUM1F_GAMBLER
	const PEWTERMUSEUM1F_SCIENTIST1
	const PEWTERMUSEUM1F_SCIENTIST2

PewterMuseum1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PewterMuseum1FTicketScene1:
	applymovement PLAYER, .StepRightMovement
	jump PewterMuseum1FTicketSceneContinue

.StepRightMovement:
	step RIGHT
	step_end

PewterMuseum1FTicketScene2:
	turnobject PLAYER, RIGHT
	; fallthrough

PewterMuseum1FTicketSceneContinue:
	turnobject PEWTERMUSEUM1F_RECEPTIONIST, LEFT
	opentext
	writetext .Text1
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, 50
	ifequal HAVE_LESS, .NoMoney
	takemoney YOUR_MONEY, 50
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	writetext .Text3
	buttonsound
	closetext
	setscene SCENE_FINISHED
	end

.Text1:
	text "It's ¥50 for a"
	line "child's ticket."

	para "Would you like to"
	line "come in?"
	done

.Text3:
	text "Right, ¥50!"
	line "Thank you!"
	done

.Refused:
	writetext .RefusedText
	waitbutton
	closetext
	applymovement PLAYER, .StepDownMovement
	end

.RefusedText:
	text "Come again!"
	done

.NoMoney:
	writetext .NoMoneyText

.NoMoneyText:
	text "You don't have"
	line "enough money."
	prompt

.StepDownMovement:
	step DOWN
	step_end

PewterMuseum1FReceptionistScript:
	readvar VAR_FACING
	ifequal RIGHT, .Right
	ifequal UP, .Up
	jumptextfaceplayer .BackText

.BackText:
	text "You can't sneak"
	line "in the back way!"
	done

.Right:
	jumptextfaceplayer .RightText

.RightText:
	text "Take plenty of"
	line "time to look!"
	done

.Up:
	jumptextfaceplayer .UpText

.UpText:
	text "Please go to the"
	line "other side!"
	done

PewterMuseum1FGamblerScript:
	jumptextfaceplayer .Text

.Text:
	text "That is one"
	line "magnificent"
	cont "fossil!"
	done

PewterMuseum1FScientist1Script:
	jumptextfaceplayer .Text

.Text:
	text "#MON can be"
	line "resurrected from"
	cont "fossils with"
	cont "technology!"
	done

PewterMuseum1FScientist2Script:
	jumptextfaceplayer .Text

.Text:
	text "We are proud of 2"
	line "fossils of very"
	cont "rare, prehistoric"
	cont "#MON!"
	done

PewterMuseum1FAerodactylFossilScript:
	refreshscreen
	pokepic AERODACTYL
	waitbutton
	closepokepic
	jumptext .Text

.Text:
	text "AERODACTYL Fossil"
	line "A primitive and"
	cont "rare #MON."
	done

PewterMuseum1FKabutopsFossilScript:
	refreshscreen
	pokepic KABUTOPS
	waitbutton
	closepokepic
	jumptext .Text

.Text:
	text "KABUTOPS Fossil"
	line "A primitive and"
	cont "rare #MON."
	done

PewterMuseum1F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 10,  7, PEWTER_CITY, 6
	warp_event 11,  7, PEWTER_CITY, 6
	warp_event 16,  7, PEWTER_CITY, 7
	warp_event 17,  7, PEWTER_CITY, 7
	warp_event  7,  7, PEWTER_MUSEUM_2F, 1

	db 2 ; coord events
	coord_event  9,  4, SCENE_DEFAULT, PewterMuseum1FTicketScene1
	coord_event 10,  4, SCENE_DEFAULT, PewterMuseum1FTicketScene2

	db 2 ; bg events
	bg_event  2,  3, BGEVENT_READ, PewterMuseum1FAerodactylFossilScript
	bg_event  2,  6, BGEVENT_READ, PewterMuseum1FKabutopsFossilScript

	db 4 ; object events
	object_event 12,  4, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum1FReceptionistScript, -1
	object_event  1,  4, SPRITE_TRICK_MASTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterMuseum1FGamblerScript, -1
	object_event 15,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum1FScientist1Script, -1
	object_event 17,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum1FScientist2Script, -1
