RedsHouse2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

RedsHouse2FN64Script:
	jumptext RedsHouse2FN64Text

RedsHouse2FPCScript:
	jumptext RedsHouse2FPCText

RedsHouse2BedScript:
	checkevent EVENT_MARINA_AVAILABLE
	iffalse .done
	opentext
	writetext .comfy
	waitbutton
	closetext
	applymovement PLAYER, .enterBed
	special FadeOutMusic
	special FadeBlackQuickly
	playsound SFX_ENTER_DOOR
	waitsfx
	pause 10
	playsound SFX_SING
	waitsfx
	special HealParty
	pause 10
	playsound SFX_METRONOME
	waitsfx
	warp SEAFLOOR_CAVERN_ENTRANCE, 9, 7
.done
	end

.comfy
	text "It does look soft"
	line "and comfy<...>"

	para "and you are pretty"
	line "tired<...>"

	para "<...>"

	para "No one will know."
	done

.enterBed
	step LEFT
	step_end

RedsHouse2FN64Text:
	text "<PLAYER> played the"
	line "N64."

	para "Better get going--"
	line "no time to lose!"
	done

RedsHouse2FPCText:
	text "It looks like it"
	line "hasn't been used"
	cont "in a long time…"
	done

RedsHouse2F_RockSmashTM:
	itemball TM_ROCK_SMASH

RedsHouse2F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7,  0, REDS_HOUSE_1F, 3
	warp_event  0,  7, SEAFLOOR_CAVERN_ENTRANCE, 2

	db 0 ; coord events

	db 4 ; bg events
	bg_event  3,  5, BGEVENT_READ, RedsHouse2FN64Script
	bg_event  0,  1, BGEVENT_READ, RedsHouse2FPCScript
	bg_event  0,  6, BGEVENT_LEFT, RedsHouse2BedScript
	bg_event  0,  7, BGEVENT_LEFT, RedsHouse2BedScript

	db 1 ; object events
	object_event  3, 1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RedsHouse2F_RockSmashTM, EVENT_REDS_HOUSE_2F_TM_ROCK_SMASH
