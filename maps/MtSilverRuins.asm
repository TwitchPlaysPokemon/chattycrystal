MtSilverRuins_MapScripts:
	; triggers
	db 0

	; callbacks
	db 0

; TODO: rewrite scripts

MtSilverRuins_MapEvents:
	; filler
	db 0, 0

	; warps
	db 16
	warp_def 47, 27, 2, SILVER_CAVE_ROOM_3
	warp_def 47, 28, 3, SILVER_CAVE_ROOM_3
	warp_def 43, 27, 1, MT_SILVER_RUINS_B1F
	warp_def 43, 28, 2, MT_SILVER_RUINS_B1F
	warp_def 44, 18, 3, MT_SILVER_RUINS_B1F
	warp_def 36, 16, 4, MT_SILVER_RUINS_B1F
	warp_def 32, 4, 5, MT_SILVER_RUINS_B1F
	warp_def 26, 4, 6, MT_SILVER_RUINS_B1F
	warp_def 24, 16, 7, MT_SILVER_RUINS_B1F
	warp_def 32, 20, 8, MT_SILVER_RUINS_B1F
	warp_def 26, 22, 9, MT_SILVER_RUINS_B1F
	warp_def 28, 28, 10, MT_SILVER_RUINS_B1F
	warp_def 16, 28, 11, MT_SILVER_RUINS_B1F
	warp_def 4, 4, 12, MT_SILVER_RUINS_B1F
	warp_def 1, 3, 13, MT_SILVER_RUINS_B1F
	warp_def 1, 4, 14, MT_SILVER_RUINS_B1F
	; coord events
	db 0

	; bg events
	db 0

	; object events
	db 0
