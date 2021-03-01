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

	; signposts
	db 0
;	signpost 19, 24, $0, MapSilverCaveOutsideSignpost0Script
;	signpost 13, 17, $0, MapSilverCaveOutsideSignpost1Script
;	signpost 25, 9, $7, MapSilverCaveOutsideSignpostItem2

	; people-events
	db 0
