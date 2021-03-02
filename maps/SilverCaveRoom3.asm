	object_const_def ; object_event constants
	const SILVERCAVEROOM3_RED

SilverCaveRoom3_MapScripts:
	db 0 ; scene scripts

	; callback count
	db 1
	callback MAPCALLBACK_TILES, .RuinWall

.RuinWall:
	checkevent EVENT_RED_IN_MT_SILVER
	iffalse .CloseWall
	changeblock 9, 7, 98
	changeblock 10, 7, 99
.CloseWall
	return

Red:
	special FadeOutMusic
	faceplayer
	opentext
	writetext RedSeenText
	waitbutton
	closetext
	winlosstext RedWinLossText, RedWinLossText
	loadtrainer RED, GF_RED
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special FadeOutMusic
	opentext
	writetext RedLeavesText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear SILVERCAVEROOM3_RED
	setevent EVENT_RED_IN_MT_SILVER
	pause 15
	special FadeInQuickly
	pause 30
	earthquake 50
	playsound SFX_STRENGTH
	changeblock 9, 7, 98
	changeblock 10, 7, 99
	reloadmappart
	waitsfx
	special PlayMapMusic
	end

RuinsEntranceSignScript:
	jumptext RuinsEntranceSignText

RedSeenText:
	text "<……>"
	line "<……>"
	done

RuinsEntranceSignText:
RedWinLossText:
	text "…"
	done

RedLeavesText:
	text "<……>"
	line "<……>"
	done

SilverCaveRoom3_MapEvents:
	; filler
	db 0, 0

	db 3 ; warp events
	warp_event  9, 33, SILVER_CAVE_ROOM_2, 2
	warp_event  9,  7, MT_SILVER_RUINS, 1
	warp_event 10,  7, MT_SILVER_RUINS, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  8,  8, BGEVENT_READ, RuinsEntranceSignScript
	bg_event 11,  8, BGEVENT_READ, RuinsEntranceSignScript

	db 1 ; object events
	object_event  9, 10, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Red, EVENT_RED_IN_MT_SILVER
