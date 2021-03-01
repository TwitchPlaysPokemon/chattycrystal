	; temporary event flags
	const_def
	const TRICKHOUSEEVENT_PUZZLE_READY
	const TRICKHOUSEEVENT_PUZZLE_FINISHED
	const TRICKHOUSEEVENT_TRICK_MASTER_HIDDEN

	object_const_def
	const TRICKHOUSEENTRANCE_TRICK_MASTER

TrickHouseEntrance_MapScripts:
	db 2 ; scene scripts
	scene_script TrickHouse_End ; SCENE_DEFAULT
	scene_script TrickHouse_End ; SCENE_TRICKHOUSEENTRANCE_WATCHED

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .check_ready

.check_ready
	checkevent EVENT_TRICK_HOUSE_SCROLL_ACTIVE
	iftrue .active
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_6
	iftrue .finished
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_5
	iftrue .six
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_4
	iftrue .five
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_3
	iftrue .four
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_2
	iftrue .three
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_1
	iftrue .two
.ready
	setscene SCENE_TRICKHOUSEENTRANCE_WATCHED
	setevent TRICKHOUSEEVENT_PUZZLE_READY
.active
	setevent TRICKHOUSEEVENT_TRICK_MASTER_HIDDEN
	return

.finished
	setevent TRICKHOUSEEVENT_PUZZLE_FINISHED
	setevent TRICKHOUSEEVENT_TRICK_MASTER_HIDDEN
	return

.two
	readvar VAR_BADGES
	ifgreater 12, .ready
	return

.three
	readvar VAR_BADGES
	ifgreater 13, .ready
	return

.four
	readvar VAR_BADGES
	ifgreater 14, .ready
	return

.five
	readvar VAR_BADGES
	ifgreater 15, .ready
	return

.six
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .ready
	return

TrickHouseEntrance_Watched:
	chattyoff
	opentext
	writetext .text
	waitbutton
	closetext
	chattyon
	setscene SCENE_DEFAULT
	end

.text
	text "You're being"
	line "watched<...>"
	done

TrickHouseEntrance_Scroll:
	checkevent TRICKHOUSEEVENT_PUZZLE_FINISHED
	iftrue .finished
	checkevent EVENT_TRICK_HOUSE_SCROLL_ACTIVE
	iffalse .not_active
	opentext
	writetext .big_hole_text
	yesorno
	closetext
	iffalse .end
	setmapscene TRICK_HOUSE_EXIT, SCENE_DEFAULT
	changeblock 4, 0, $41 ; open door
	reloadmappart
	pause 10
	applymovement PLAYER, .movement
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_5
	iftrue .six
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_4
	iftrue .five
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_3
	iftrue .four
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_2
	iftrue .three
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_1
	iftrue .two
	warp TRICK_HOUSE_PUZZLE_1, 0, 21
.end
	end

.two
	warp TRICK_HOUSE_PUZZLE_2, 0, 21
	end

.three
	warp TRICK_HOUSE_PUZZLE_3, 0, 21
	end

.four
	warp TRICK_HOUSE_PUZZLE_4, 0, 21
	end

.five
	warp TRICK_HOUSE_PUZZLE_5, 0, 21
	end

.six
	warp TRICK_HOUSE_PUZZLE_6, 0, 21
	end

.movement
	step UP
	remove_object
	step_end

.big_hole_text
	text "There's a big hole"
	line "behind the scroll!"

	para "Want to go in?"
	done

.not_active
	jumptext .not_active_text

.not_active_text
	text "It's a scroll."
	done

.finished
	jumptext .finished_text

.finished_text
	text "There's a note"
	line "affixed to the"
	cont "scroll<...>"

	para "I'm leaving on a"
	line "journey. Don't look"
	para "for me."
	line "TRICK MASTER"
	done

TrickHouseEntrance_TrickMaster:
	opentext
	writetext .before_spotting_player_text
	closetext
	faceobject TRICKHOUSEENTRANCE_TRICK_MASTER, PLAYER
	showemote EMOTE_SHOCK, TRICKHOUSEENTRANCE_TRICK_MASTER, 30
	pause 10
	opentext
	writetext .after_spotting_player_text
	waitbutton
	closetext
	turnobject TRICKHOUSEENTRANCE_TRICK_MASTER, UP
	end

.before_spotting_player_text
	text "For the next time,"
	line "I'll use this"
	para "trick, and that"
	line "scheme, and those"
	cont "ruses<...>"

	para "Mufufufu<...>"
	line "If I may say so,"
	para "it's brilliantly"
	line "difficult, even"
	cont "for me!"
	prompt

.after_spotting_player_text
	text "Hah? What!?"
	line "Oh, it's you!"

	para "I'm in the midst of"
	line "devising new"
	cont "tricky challenges!"

	para "It's not too much"
	line "to ask for a bit"
	para "more time for me"
	line "to think, is it"
	cont "now?"

	para "You wouldn't"
	line "begrudge me that?"

	para "Come back in a"
	line "little while!"
	done

TrickHouseEntrance_PrepareTrickMasterReveal:
	playsound SFX_READ_TEXT_2
	waitsfx
	showemote EMOTE_SHOCK, PLAYER, 30
	pause 5
	opentext
	end

TrickHouseEntrance_HidingSpot_1:
	checkevent TRICKHOUSEEVENT_PUZZLE_READY
	iffalse TrickHouse_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_1
	iftrue TrickHouse_End
	scall TrickHouseEntrance_PrepareTrickMasterReveal
	writetext .text
	sjump TrickHouseEntrance_DoTrickMasterReveal

.text
	text "Hah? Grrr<...>"

	para "How did you know I"
	line "concealed myself"
	para "beneath this desk?"
	line "You're sharp!"
	prompt

TrickHouseEntrance_HidingSpot_2:
	checkevent TRICKHOUSEEVENT_PUZZLE_READY
	iffalse TrickHouse_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_1
	iffalse TrickHouse_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_2
	iftrue TrickHouse_End
	scall TrickHouseEntrance_PrepareTrickMasterReveal
	writetext .text
	sjump TrickHouseEntrance_DoTrickMasterReveal

.text
	text "Hah? Grrr<...>"

	para "How did you know I"
	line "concealed myself"
	para "behind this tree?"
	line "You're sharp!"
	prompt

TrickHouseEntrance_HidingSpot_3:
	checkevent TRICKHOUSEEVENT_PUZZLE_READY
	iffalse TrickHouse_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_2
	iffalse TrickHouse_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_3
	iftrue TrickHouse_End
	scall TrickHouseEntrance_PrepareTrickMasterReveal
	writetext .text
	sjump TrickHouseEntrance_DoTrickMasterReveal

.text
	text "Hah? Grrr<...>"

	para "How did you know I"
	line "concealed myself"
	para "in this dresser?"
	line "You're sharp!"
	prompt

TrickHouseEntrance_HidingSpot_4:
	checkevent TRICKHOUSEEVENT_PUZZLE_READY
	iffalse TrickHouse_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_3
	iffalse TrickHouse_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_4
	iftrue TrickHouse_End
	scall TrickHouseEntrance_PrepareTrickMasterReveal
	writetext .text
	sjump TrickHouseEntrance_DoTrickMasterReveal

.text
	text "Hah? Grrr<...>"

	para "How did you know I"
	line "concealed myself"
	para "beyond this"
	line "window?"
	cont "You're sharp!"
	prompt

TrickHouseEntrance_HidingSpot_5:
	checkevent TRICKHOUSEEVENT_PUZZLE_READY
	iffalse TrickHouse_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_4
	iffalse TrickHouse_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_5
	iftrue TrickHouse_End
	scall TrickHouseEntrance_PrepareTrickMasterReveal
	writetext .text
	sjump TrickHouseEntrance_DoTrickMasterReveal

.text
	text "Hah? Grrr<...>"

	para "How did you know I"
	line "concealed myself"
	para "in this cupboard?"
	line "You're sharp!"
	prompt

TrickHouseEntrance_HidingSpot_6:
	checkevent TRICKHOUSEEVENT_PUZZLE_READY
	iffalse TrickHouse_End
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_5
	iffalse TrickHouse_End
	scall TrickHouseEntrance_PrepareTrickMasterReveal
	writetext TrickHouseEntrance_HidingSpot_6_Text
TrickHouseEntrance_DoTrickMasterReveal:
	closetext
	callasm FadeToBlack
	callasm TrickHouseEntrance_CalculateMovement
	applymovement PLAYER, wStringBuffer1
	appear TRICKHOUSEENTRANCE_TRICK_MASTER
	faceobject TRICKHOUSEENTRANCE_TRICK_MASTER, PLAYER
	turnobject PLAYER, LEFT
	callasm FadeFromBlack
	pause 3
	opentext
	checkevent EVENT_TRICK_HOUSE_FINISHED_PUZZLE_1
	iftrue .no_intro
	writetext TrickHouseEntrance_TrickMasterIntroductionText
.no_intro
	writetext TrickHouseEntrance_TrickMasterChallengeText
	waitbutton
	closetext
	pause 10
	playsound SFX_WARP_TO
	applymovement TRICKHOUSEENTRANCE_TRICK_MASTER, TrickHouse_DisappearingMovement
	disappear TRICKHOUSEENTRANCE_TRICK_MASTER
	clearevent TRICKHOUSEEVENT_PUZZLE_READY
	setevent EVENT_TRICK_HOUSE_SCROLL_ACTIVE
TrickHouse_End:
	end

TrickHouseEntrance_HidingSpot_6_Text:
	text "Hah? Grrr<...>"

	para "How did you know I"
	line "concealed myself"
	para "beneath this"
	line "cushion?"
	cont "You're sharp!"
	prompt

TrickHouseEntrance_TrickMasterIntroductionText:
	text "Behold!"

	para "For I am the"
	line "greatest living"
	para "mystery of a man"
	line "in all of KANTO!"

	para "They call me<...>"

	para "The TRICK MASTER!"

	para "Wahahaha! Glad to"
	line "meet you!"
	prompt

TrickHouseEntrance_TrickMasterChallengeText:
	text "You, you've come to"
	line "challenge my TRICK"
	cont "HOUSE, haven't you?"

	para "That's why you're"
	line "here, isn't it?"

	para "Yes, it is!"

	para "Consider your cha-"
	line "llenge accepted!"

	para "Enter through the"
	line "scroll there, and"
	para "let your challenge"
	line "commence!"

	para "I shall be waiting"
	line "in the back!"
	done

TrickHouse_DisappearingMovement:
	teleport_from
	step_end

TrickHouseEntrance_CalculateMovement:
	; generates a movement script that will land you in (6, 1) and writes it to wStringBuffer1
	ld hl, wYCoord
	ld a, [hli]
	ld b, [hl]
	ld hl, wStringBuffer1
	and a
	jr nz, .not_down
	ld a, movement_fast_slide_step | DOWN
	ld [hli], a
	jr .handled_vertical

.not_down
	dec a
	jr z, .handled_vertical
	ld c, a
	ld a, movement_fast_slide_step | UP
.up
	ld [hli], a
	dec c
	jr nz, .up
.handled_vertical

	ld a, b
	sub 6
	ld b, a
	ld a, movement_fast_slide_step | RIGHT
	jr c, .right
	jr z, .done
	assert LEFT == (RIGHT - 1)
	dec a
.left
	ld [hli], a
	dec b
	jr nz, .left
	jr .done

.right
	ld [hli], a
	inc b
	jr nz, .right

.done
	ld [hl], movement_step_end
	; delay to complete 60 frames, so the movement isn't visible to the player
	ld a, LOW(wStringBuffer1 + 15)
	sub l
	ret z
	cp 16
	ret nc ; overflow
	add a, a
	add a, a
	ld c, a
	jp DelayFrames

TrickHouseEntrance_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  5,  7, VIRIDIAN_CITY, 3
	warp_event  6,  7, VIRIDIAN_CITY, 3
	warp_event  5,  1, TRICK_HOUSE_ENTRANCE, 3

	db 4 ; coord events
	coord_event  4,  7, SCENE_TRICKHOUSEENTRANCE_WATCHED, TrickHouseEntrance_Watched
	coord_event  5,  6, SCENE_TRICKHOUSEENTRANCE_WATCHED, TrickHouseEntrance_Watched
	coord_event  6,  6, SCENE_TRICKHOUSEENTRANCE_WATCHED, TrickHouseEntrance_Watched
	coord_event  7,  7, SCENE_TRICKHOUSEENTRANCE_WATCHED, TrickHouseEntrance_Watched

	db 7 ; bg events
	bg_event  5,  0, BGEVENT_UP, TrickHouseEntrance_Scroll
	bg_event  6,  3, BGEVENT_SILENT, TrickHouseEntrance_HidingSpot_1
	bg_event 11,  5, BGEVENT_SILENT, TrickHouseEntrance_HidingSpot_2
	bg_event 10,  1, BGEVENT_SILENT, TrickHouseEntrance_HidingSpot_3
	bg_event  3,  0, BGEVENT_SILENT, TrickHouseEntrance_HidingSpot_4
	bg_event  9,  1, BGEVENT_SILENT, TrickHouseEntrance_HidingSpot_5
	bg_event  4,  4, BGEVENT_SILENT, TrickHouseEntrance_HidingSpot_6

	db 1 ; object events
	object_event  5,  1, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TrickHouseEntrance_TrickMaster, TRICKHOUSEEVENT_TRICK_MASTER_HIDDEN
