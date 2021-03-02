SilphCoElevator_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilphCoElevatorScript:

	checkevent EVENT_BEAT_MT_BATTLE_99
	iftrue .open11f
	checkevent EVENT_BEAT_MT_BATTLE_90
	iftrue .open10f
	checkevent EVENT_BEAT_MT_BATTLE_80
	iftrue .open9f
	checkevent EVENT_BEAT_MT_BATTLE_70
	iftrue .open8f
	checkevent EVENT_BEAT_MT_BATTLE_60
	iftrue .open7f
	checkevent EVENT_BEAT_MT_BATTLE_50
	iftrue .open6f
	checkevent EVENT_BEAT_MT_BATTLE_40
	iftrue .open5f
	checkevent EVENT_BEAT_MT_BATTLE_30
	iftrue .open4f
	checkevent EVENT_BEAT_MT_BATTLE_20
	iftrue .open3f
	checkevent EVENT_BEAT_MT_BATTLE_10
	iftrue .open2f
	callasm .open1fasm
	; fallthrough

.elevatorMenu
	opentext
	elevator wOTPartyMons
	closetext
	iffalse .Done
	pause 5
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
.Done
	end

.open11f
	callasm .open11fasm
	sjump .elevatorMenu

.open10f
	callasm .open10fasm
	sjump .elevatorMenu

.open9f
	callasm .open9fasm
	sjump .elevatorMenu

.open8f
	callasm .open8fasm
	sjump .elevatorMenu

.open7f
	callasm .open7fasm
	sjump .elevatorMenu

.open6f
	callasm .open6fasm
	sjump .elevatorMenu

.open5f
	callasm .open5fasm
	sjump .elevatorMenu

.open4f
	callasm .open4fasm
	sjump .elevatorMenu

.open3f
	callasm .open3fasm
	sjump .elevatorMenu

.open2f
	callasm .open2fasm
	sjump .elevatorMenu

.open11fasm
	ld a, 11
	jr .loadElevator

.open10fasm
	ld a, 10
	jr .loadElevator

.open9fasm
	ld a, 9
	jr .loadElevator

.open8fasm
	ld a, 8
	jr .loadElevator

.open7fasm
	ld a, 7
	jr .loadElevator

.open6fasm
	ld a, 6
	jr .loadElevator

.open5fasm
	ld a, 5
	jr .loadElevator

.open4fasm
	ld a, 4
	jr .loadElevator

.open3fasm
	ld a, 3
	jr .loadElevator

.open2fasm
	ld a, 2
	jr .loadElevator

.open1fasm
	ld a, 1
	; fallthrough

.loadElevator:
	ld hl, SilphCoElevatorData + 1
	ld de, wOTPartyMons
	ld [de], a ; Write number of floors
	inc de
	add a 
	add a ; multiply a by 4 (size of elevfloor entry)
	ld b, 0
	ld c, a 
	call CopyBytes
	ld a, -1
	ld [de], a ; write end value
	ret

SilphCoElevatorData:
	db 11 ; floors
	elevfloor FLOOR_1F,  3, SILPH_CO_1F
	elevfloor FLOOR_2F,  1, SILPH_CO_2F
	elevfloor FLOOR_3F,  1, SILPH_CO_3F
	elevfloor FLOOR_4F,  1, SILPH_CO_4F
	elevfloor FLOOR_5F,  1, SILPH_CO_5F
	elevfloor FLOOR_6F,  1, SILPH_CO_6F
	elevfloor FLOOR_7F,  1, SILPH_CO_7F
	elevfloor FLOOR_8F,  1, SILPH_CO_8F
	elevfloor FLOOR_9F,  1, SILPH_CO_9F
	elevfloor FLOOR_10F, 1, SILPH_CO_10F
	elevfloor FLOOR_11F, 1, SILPH_CO_11F
	db -1 ; end

SilphCoElevator_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  1,  3, SILPH_CO_1F, -1
	warp_event  2,  3, SILPH_CO_1F, -1

	db 0 ; coord events

	db 1 ; bg events
	bg_event  3,  0, BGEVENT_READ, SilphCoElevatorScript

	db 0 ; object events
