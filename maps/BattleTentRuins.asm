BattleTentRuins_MapScripts: ; -- Required
	; trigger count
	db 0

	; callback count
	db 0

MapBattleTentRuinsDoorScript:
	loadfont
	writetext MapBattleTentRuinsDoorText
	closetext
	end

MapBattleTentRuinsDoorText:
	text "It's locked<...>"
	done

BattleTentRuins_MapEvents:
	db 0, 0 ; Filler

	; warps
	db 4
	warp_def $7, $1, 10, CELADON_CITY
	warp_def $7, $2, 10, CELADON_CITY
	warp_def $7, $a, 1, BATTLE_TENT_GENERATOR
	warp_def $0, $5, 1, BATTLE_TENT_BATTLE_ROOM

	; coord events
	db 0

	; bg events
	db 1
	signpost $0, $5, $6, MapBattleTentRuinsDoorScript

	; object events
	db 0

