BattleTentBattleRoom_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MapBattleTentBattleRoomDoorScript:
	jumptext MapBattleTentBattleRoomDoorText

MapBattleTentBattleRoomDoorText:
	text "It's locked<...>"
	done

BattleTentBattleRoom_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 5, 7, BATTLE_TENT_RUINS, 4
	warp_event 6, 7, BATTLE_TENT_RUINS, 4
	warp_event 6, 0, BATTLE_TENT_PC_ROOM, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 6, 0, BGEVENT_READ, MapBattleTentBattleRoomDoorScript

	db 0 ; object events
