TrickHousePuzzle2_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, TrickHouse_CheckDoor_Common

TrickHousePuzzle2_Switch1:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .done
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	playsound SFX_WALL_OPEN
	waitsfx
	changeblock  0,  4, $90 ; Switch 1 pressed
	changeblock  4,  6, $8D ; Trapdoor 1 closed
	reloadmappart
.done
	end

TrickHousePuzzle2_Switch2:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .done
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	playsound SFX_WALL_OPEN
	waitsfx
	changeblock 14,  4, $92 ; Switch 2 pressed
	changeblock  6, 14, $8C ; Trapdoor 2 closed
	reloadmappart
.done
	end

TrickHousePuzzle2_Switch3:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iftrue .done
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	playsound SFX_WALL_OPEN
	waitsfx
	changeblock  6, 10, $8F ; Switch 3 pressed
	changeblock 14, 12, $8E ; Trapdoor 3 closed
	reloadmappart
.done
	end

TrickHousePuzzle2_Switch4:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iftrue .done
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	playsound SFX_WALL_OPEN
	waitsfx
	changeblock 10, 12, $91 ; Switch 4 pressed
	changeblock  0, 12, $78 ; Trapdoor 4 closed
	reloadmappart
.done
	end

TrickHousePuzzle2_Door:
	scall TrickHouse_Door
	iffalse .end
	writetext .code
	sjump TrickHouse_UnlockDoor_Common
.end
	end

.code
	text "TRICK MASTER is"
	line "smart."
	prompt

TrickHouseLiteBlueMail:
	itemball LITEBLUEMAIL

TrickHousePortraitMail:
	itemball PORTRAITMAIL

TrickHousePuzzle2_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  0, 21, TRICK_HOUSE_ENTRANCE, 3
	warp_event  1, 21, TRICK_HOUSE_ENTRANCE, 3
	warp_event 13,  1, TRICK_HOUSE_EXIT, 2

	db 4 ; coord events
	coord_event  0,  4, SCENE_ALWAYS, TrickHousePuzzle2_Switch1
	coord_event 14,  5, SCENE_ALWAYS, TrickHousePuzzle2_Switch2
	coord_event  7, 11, SCENE_ALWAYS, TrickHousePuzzle2_Switch3
	coord_event 11, 12, SCENE_ALWAYS, TrickHousePuzzle2_Switch4

	db 1 ; bg events
	bg_event 13,  1, BGEVENT_SILENT, TrickHousePuzzle2_Door

	db 3 ; object events
	object_event 14, 14, SPRITE_SCROLL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrickHouse_FoundPuzzleScroll, -1
	object_event  8, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TrickHouseLiteBlueMail, EVENT_TRICK_HOUSE_GOT_LITEBLUEMAIL
	object_event  3, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TrickHousePortraitMail, EVENT_TRICK_HOUSE_GOT_PORTRAITMAIL
