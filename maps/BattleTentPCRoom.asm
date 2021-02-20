BattleTentPCRoom_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

LeaguePCScript:
	loadfont
	writetext .off_text
	closetext
	end

.off_text
	text "It appears to be"
	line "broken…"
	done

BattleTentPCRoom_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 3, 7, BATTLE_TENT_BATTLE_ROOM, 3
	warp_event 4, 7, BATTLE_TENT_BATTLE_ROOM, 3

	db 0 ; coord events

	db 1 ; bg events
	bg_event 3, 2, BGEVENT_UP, LeaguePCScript

	db 0 ; object events
