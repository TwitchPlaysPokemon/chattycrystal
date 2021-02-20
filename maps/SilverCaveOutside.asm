SilverCaveOutside_MapScripts: ; 0x1b2042
	; trigger count
	db 0

	; callback count
	db 0

	; callbacks

SilverCaveOutside_MapEvents: ; 0x1b205f
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $13, $17, 1, SILVER_CAVE_POKECENTER_1F
	warp_def $b, $12, 1, SILVER_CAVE_ROOM_1

	; xy triggers
	db 0
;	xy_trigger 0, 12, 18, 0, MtSilverRedScript, 0, 0

	; signposts
	db 0
;	signpost 19, 24, $0, MapSilverCaveOutsideSignpost0Script
;	signpost 13, 17, $0, MapSilverCaveOutsideSignpost1Script
;	signpost 25, 9, $7, MapSilverCaveOutsideSignpostItem2

	; people-events
	db 0
;	person_event SPRITE_COOLTRAINER_M, 16, 22, $6, 0, 0, -1, -1, 0, 0, 0, SilverCaveOutsideCooltrainerMScript, EVENT_ENABLE_DIPLOMA_PRINTING
;	person_event SPRITE_RED, 15, 22, $6, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_RED_IN_FRONT_OF_MT_SILVER
; 0x1b207e

