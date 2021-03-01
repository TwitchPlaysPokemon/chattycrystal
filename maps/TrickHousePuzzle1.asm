TrickHousePuzzle1_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrickHousePuzzle1_Door:
	scall TrickHouse_Door
	iffalse .end
	writetext .code
	writetext TrickHouse_DoorUnlockText
	playsound SFX_ITEM
	changeblock 12, 0, $43 ; stairs going up
	reloadmappart
	waitsfx
	waitbutton
	closetext
.end
	end

.code
	text "TRICK MASTER is"
	line "fabulous."
	prompt

TrickHousePuzzle1_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  0, 21, TRICK_HOUSE_ENTRANCE, 3
	warp_event  1, 21, TRICK_HOUSE_ENTRANCE, 3
	warp_event 13,  1, TRICK_HOUSE_EXIT, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event 13,  1, BGEVENT_SILENT, TrickHousePuzzle1_Door

	db 1 ; object events
	object_event  3, 16, SPRITE_SCROLL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrickHouse_FoundPuzzleScroll, -1
