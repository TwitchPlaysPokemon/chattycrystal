BattleTentPCRoom_MapScripts:
	db 0

	db 0

LeaguePCScript:
	loadfont
	writetext tppPcOffText
	closetext
	end

tppPcOffText:
	text "It appears to be"
	line "broken…"
	done

BattleTentPCRoom_MapEvents:
	db 0, 0

	db 2
	warp_def 7, 3, 3, BATTLE_TENT_BATTLE_ROOM
	warp_def 7, 4, 3, BATTLE_TENT_BATTLE_ROOM

	db 0

	db 1
	signpost 2, 3, 1, LeaguePCScript

	db 0