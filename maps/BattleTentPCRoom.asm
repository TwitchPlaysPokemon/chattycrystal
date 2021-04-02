BattleTentPCRoom_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

LeaguePCScript:
	opentext
	writetext .mirror_battle_text
	yesorno
	iffalse .log_off
	writetext .loading_text
	special HealParty
	special BackupHeldItems
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	winlosstext .win_text, .lose_text
	loadtrainer BATTLE_PC, MIRROR_PC
	startbattle
	iftrue .lost
	setevent EVENT_DEFEATED_MIRROR_PC_AT_LEAST_ONCE
.lost
	reloadmap
	special RestoreHeldItems
	special HealParty
	end

.log_off
	writetext .logging_off_text
	waitbutton
	closetext
	end

.mirror_battle_text
	text "Welcome to the"
	line "BATTLE PC system."

	para "Do you want to"
	line "challenge the PC"
	cont "to a mirror match?"
	done

.logging_off_text
	text "Logging off<...>"
	done

.loading_text
	text "Loading team<...>"
	prompt

.win_text
	text "Battle results:"
	line "Player wins."
	done

.lose_text
	text "Battle results:"
	line "Player loses."
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
