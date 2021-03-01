	object_const_def ; object_event constants
	const SILVERCAVEROOM3_RED

SilverCaveRoom3_MapScripts: ; 0x18c601
	db 2 ; scene scripts
	scene_script .DummyScene ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

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
	
.DummyScene
	end
	
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

SilverCaveRoom3_MapEvents: ; 0x18c644
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $21, $9, 2, SILVER_CAVE_ROOM_2
	warp_def 7, 9, 1, MT_SILVER_RUINS
	warp_def 7, 10, 2, MT_SILVER_RUINS

	; xy triggers
	db 0

	; signposts
	db 2
	bg_event 8, 8, BGEVENT_READ, RuinsEntranceSignScript
	bg_event 11, 8, BGEVENT_READ, RuinsEntranceSignScript

	; object_event
	db 1
	object_event  9, 10, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Red, EVENT_RED_IN_MT_SILVER

