	object_const_def ; object_event constants
	const ROUTE42ECRUTEAKGATE_OFFICER
	const ROUTE42ECRUTEAKGATE_EVAN

Route42EcruteakGate_MapScripts:
	db 2 ; scene scripts
	scene_script GenericDummyScript ; SCENE_DEFAULT
	scene_script GenericDummyScript ; SCENE_FINISHED

	db 0 ; callbacks

Route42EcruteakGateEvanUp:
	applymovement ROUTE42ECRUTEAKGATE_EVAN, Route42EcruteakGateEvanMoveDown
Route42EcruteakGateEvanDown:
	playmusic MUSIC_RIVAL_ENCOUNTER
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement ROUTE42ECRUTEAKGATE_EVAN, Route42EcruteakGateEvanMoveLeft
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	winlosstext HostSilenceText, 0
	loadtrainer AC_CHRIS, EVAN2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	applymovement ROUTE42ECRUTEAKGATE_EVAN, Route42EcruteakGateEvanLeave
	special FadeOutMusic
	disappear ROUTE42ECRUTEAKGATE_EVAN
	playmapmusic
	end

Route42EcruteakGateOfficerScript:
	jumptextfaceplayer Route42EcruteakGateOfficerText

Route42EcruteakGateEvanMoveDown:
	step DOWN
	step_end

Route42EcruteakGateEvanMoveLeft:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

Route42EcruteakGateEvanLeave:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

Route42EcruteakGateOfficerText:
	text "MT.MORTAR is like"
	line "a maze inside."

	para "Be careful. Don't"
	line "get lost in there."
	done

Route42EcruteakGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  4, ECRUTEAK_CITY, 1
	warp_event  0,  5, ECRUTEAK_CITY, 2
	warp_event  9,  4, ROUTE_42, 1
	warp_event  9,  5, ROUTE_42, 2

	db 2 ; coord events
	coord_event 2, 4, SCENE_DEFAULT, Route42EcruteakGateEvanDown
	coord_event 2, 5, SCENE_DEFAULT, Route42EcruteakGateEvanUp

	db 0 ; bg events

	db 2 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route42EcruteakGateOfficerScript, -1
	object_event 7, 4, SPRITE_EVAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, EVENT_EVAN_AT_ROUTE_42
