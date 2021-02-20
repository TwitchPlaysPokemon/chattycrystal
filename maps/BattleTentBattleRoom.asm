BattleTentBattleRoom_MapScripts:

	db 0

	db 0


MapBattleTentBattleRoom_Trigger2:
	end

MapBattleTentBattleRoomDoorScript:
;	dw EVENT_OAK_DEFEATED
	dw .Script
.Script
	jumptext MapBattleTentBattleRoomDoorText

MapBattleTentBattleRoomDoorText:
	text "It's locked<...>"
	done

BattleTentBattleRoom_MapEvents:

	db 0, 0

	db 3
	warp_def $7, $5, 4, BATTLE_TENT_RUINS
	warp_def $7, $6, 4, BATTLE_TENT_RUINS
	warp_def $0, $6, 1, BATTLE_TENT_PC_ROOM

	db 0

	db 1
	signpost $0, $6, $6, MapBattleTentBattleRoomDoorScript

	db 0
