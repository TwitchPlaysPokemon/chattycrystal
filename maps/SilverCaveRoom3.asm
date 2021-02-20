SilverCaveRoom3_MapScripts: ; 0x18c601
	; trigger count
	db 0

	; callback count
	db 0

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
	db 0
;	signpost 8, 8, $0, RuinsEntranceSignScript
;	signpost 8, 11, $0, RuinsEntranceSignScript

	; people-events
	db 0
;	person_event SPRITE_RED, 14, 13, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, RedScript_0x18c603, EVENT_RED_IN_SILVER_CAVE
; 0x18c65c

