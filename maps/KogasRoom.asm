	object_const_def ; object_event constants
	const KOGASROOM_KOGA

KogasRoom_MapScripts:
	db 2 ; scene scripts
	scene_script .LockDoor ; SCENE_DEFAULT
	scene_script GenericDummyScript ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .KogasRoomDoors

.LockDoor:
	prioritysjump .KogasDoorLocksBehindYou
	end

.KogasRoomDoors:
	checkevent EVENT_KOGAS_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 14, $2a ; wall
.KeepEntranceOpen:
	checkevent EVENT_KOGAS_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 2, $16 ; open door
.KeepExitClosed:
	return

.KogasDoorLocksBehindYou:
	applymovement PLAYER, KogasRoom_EnterMovement
	refreshscreen
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 14, $2a ; wall
	reloadmappart
	closetext
	setscene SCENE_FINISHED
	setevent EVENT_KOGAS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

KogaScript_Battle:
	checkevent EVENT_BEAT_ELITE_4_KOGA
	iftrue .battled
	faceplayer
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	winlosstext HostSilenceText, 0
	loadtrainer NATE_ELITE_4, R_BLACK22
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ELITE_4_KOGA
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $16 ; open door
	reloadmappart
	closetext
	setevent EVENT_KOGAS_ROOM_EXIT_OPEN
	waitsfx
	end

.battled
	jumptextfaceplayer HostSilenceText

KogasRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

KogasRoom_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4, 17, WILLS_ROOM, 2
	warp_event  5, 17, WILLS_ROOM, 3
	warp_event  4,  2, BRUNOS_ROOM, 1
	warp_event  5,  2, BRUNOS_ROOM, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  7, SPRITE_NATE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KogaScript_Battle, -1
