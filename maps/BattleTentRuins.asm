BattleTentRuins_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

BattleTentRuinsPC:
	jumptext .status_text

.status_text
	text "BATTLE PC status:"

	para "Mirror match"
	line "module loaded."
	done

BattleTentRuins_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  1,  7, CELADON_CITY, 10
	warp_event  2,  7, CELADON_CITY, 10
	warp_event 10,  7, BATTLE_TENT_GENERATOR, 1
	warp_event  5,  0, BATTLE_TENT_BATTLE_ROOM, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 4, 4, BGEVENT_UP, BattleTentRuinsPC

	db 0 ; object events
