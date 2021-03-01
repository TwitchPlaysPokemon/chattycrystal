NUM_SILPH_FLAGS EQU 110

	object_const_def ; object_event constants
	const SILPHCO1F_RECEPTIONIST
	const SILPHCO1F_OFFICER

SilphCo1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilphCoReceptionistScript:
	jumptextfaceplayer SilphCoReceptionistText

SilphCoOfficerScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_UP_GRADE
	iftrue .GotUpGrade
	writetext SilphCoOfficerText
	buttonsound
	verbosegiveitem UP_GRADE
	iffalse .NoRoom
	setevent EVENT_GOT_UP_GRADE
.GotUpGrade:
	writetext SilphCoOfficerText_GotUpGrade
	waitbutton
.NoRoom:
	closetext
	end

SilphCoReceptionistText:
	text "Welcome. This is"
	line "SILPH CO.'s HEAD"
	cont "OFFICE BUILDING."
	done

SilphCoOfficerText:
	text "Welcome. This is"
	line "SILPH CO.'s HEAD"
	cont "OFFICE BUILDING."

	para "Since you came"
	line "such a long way,"

	para "have this neat"
	line "little souvenir!"
	done

SilphCoOfficerText_GotUpGrade:
	text "It's SILPH CO.'s"
	line "latest product."

	para "It's not for sale"
	line "anywhere yet."
	done

MtBattleFinishBattle:
	endifjustbattled
	opentext
	writetext MtBattleAfterBattleText
	waitbutton
	closetext
	end

MtBattleNurseHeal:
	faceplayer
	opentext
	writetext MtBattleNurseText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	; fallthrough

MtBattleNurseFinished:
	faceplayer
	opentext
	writetext MtBattleAfterHealText
	waitbutton
	closetext
	end

MtBattleGotReward:
	callasm .resetTrainers
	warp SILPH_CO_1F, 2, 0 	; Warp to the 1F Elevator door
	end

.resetTrainers
	ld b, NUM_SILPH_FLAGS / 8
	ld hl, wEventFlags + EVENT_BEAT_MT_BATTLE_1 / 8
	xor a
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	if NUM_SILPH_FLAGS % 8
		ld a, [hl]
		and $100 - (1 << (NUM_SILPH_FLAGS % 8))
		ld [hl], a
	endc
	ret

MtBattleDefaultScene:
	end

MtBattleSeenText:
	text "Will you battle"
	line "with me?"
	done

MtBattleBeatenText:
	text "Zoinks!"
	done

MtBattleAfterBattleText:
	text "I did my best but"
	line "came up short."

	para "No excuses--I"
	line "admit I lost."
	done

MtBattleNurseText:
	text "Here, let me heal"
	line "your team."
	done

MtBattleAfterHealText:
	text "We hope you excel!"
	done

SilphCo1F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  6, 15, SAFFRON_CITY, 7
	warp_event  7, 15, SAFFRON_CITY, 7
	warp_event  2,  0, SILPH_CO_ELEVATOR, 2
	warp_event 19,  0, SILPH_CO_2F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  7,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoReceptionistScript, -1
	object_event 17,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoOfficerScript, -1
