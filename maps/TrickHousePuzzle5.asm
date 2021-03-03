TrickHousePuzzle5_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, TrickHouse_CheckDoor_Common

TrickHousePuzzle5_Switch1:
	playsound SFX_WALL_OPEN
	waitsfx
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .turnoff
.turnon
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	changeblock  6,  6, $CD ; Conveyor 1 turned
	changeblock  4,  4, $CC ; Switch 1 on
	sjump TrickHouse_Finish_ChangeBlock
.turnoff
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	changeblock  6,  6, $B9 ; Conveyor 1 reset
	changeblock  4,  4, $BE ; Switch 1 off
	sjump TrickHouse_Finish_ChangeBlock

TrickHousePuzzle5_Switch2:
	playsound SFX_WALL_OPEN
	waitsfx
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .turnoff
.turnon
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	changeblock  8,  4, $CF ; Conveyor 2 turned
	changeblock  6,  4, $CE ; Switch 2 on
	sjump TrickHouse_Finish_ChangeBlock
.turnoff
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	changeblock  8,  4, $C0 ; Conveyor 2 reset
	changeblock  6,  4, $BF ; Switch 2 off
	sjump TrickHouse_Finish_ChangeBlock

TrickHousePuzzle5_Switch3:
	playsound SFX_WALL_OPEN
	waitsfx
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iftrue .turnoff
.turnon
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	changeblock  6, 12, $C9 ; Conveyor 3 turned
	changeblock  4, 10, $C8 ; Switch 3 on
	sjump TrickHouse_Finish_ChangeBlock
.turnoff
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	changeblock  6, 12, $A9 ; Conveyor 3 reset
	changeblock  4, 10, $AD ; Switch 3 off
	sjump TrickHouse_Finish_ChangeBlock

TrickHousePuzzle5_Switch4:
	playsound SFX_WALL_OPEN
	waitsfx
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iftrue .turnoff
.turnon
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	changeblock 12, 12, $CB ; Conveyor 4 turned
	changeblock 12, 10, $CA ; Switch 4 on
	sjump TrickHouse_Finish_ChangeBlock
.turnoff
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	changeblock 12, 12, $AA ; Conveyor 4 reset
	changeblock 12, 10, $B0 ; Switch 4 off
	sjump TrickHouse_Finish_ChangeBlock

TrickHousePuzzle5_Switch5:
	playsound SFX_WALL_OPEN
	waitsfx
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	iftrue .turnoff
.turnon
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	changeblock 12, 16, $C7 ; Switch 5 on and Conveyor 5 turned
	sjump TrickHouse_Finish_ChangeBlock
.turnoff
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	changeblock 12, 16, $A0 ; Switch 5 off and Conveyor 5 reset
	sjump TrickHouse_Finish_ChangeBlock

TrickHousePuzzle5_Door:
	scall TrickHouse_Door
	iffalse .end
	writetext .code
	sjump TrickHouse_UnlockDoor_Common
.end
	end

.code
	text "TRICK MASTER is"
	line "huggable."
	prompt

TrickHouseBlueSkyMail:
	hiddenitem BLUESKY_MAIL, EVENT_TRICK_HOUSE_GOT_BLUESKY_MAIL

TrickHouseMusicMail:
	itemball MUSIC_MAIL

TrickHousePuzzle5_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  0, 21, TRICK_HOUSE_ENTRANCE, 3
	warp_event  1, 21, TRICK_HOUSE_ENTRANCE, 3
	warp_event 13,  1, TRICK_HOUSE_EXIT, 2

	db 0 ; coord events

	db 7 ; bg events
	bg_event 13,  1, BGEVENT_SILENT, TrickHousePuzzle5_Door
	bg_event  4,  4, BGEVENT_SILENT, TrickHousePuzzle5_Switch1
	bg_event  7,  5, BGEVENT_SILENT, TrickHousePuzzle5_Switch2
	bg_event  5, 10, BGEVENT_SILENT, TrickHousePuzzle5_Switch3
	bg_event 12, 11, BGEVENT_SILENT, TrickHousePuzzle5_Switch4
	bg_event 12, 16, BGEVENT_SILENT, TrickHousePuzzle5_Switch5
	bg_event  5,  7, BGEVENT_ITEM, TrickHouseBlueSkyMail

	db 2 ; object events
	object_event  7,  2, SPRITE_SCROLL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrickHouse_FoundPuzzleScroll, -1
	object_event 10, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TrickHouseMusicMail, EVENT_TRICK_HOUSE_GOT_MUSIC_MAIL
