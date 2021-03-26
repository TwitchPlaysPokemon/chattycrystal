	object_const_def ; object_event constants
	const ROUTE24_ROCKET

Route24_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route24RocketScript:
	faceplayer
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	winlosstext HostSilenceText, HostSilenceText
	loadtrainer COLO_WES, AAAAAAA2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext HostSilenceText
	buttonsound
	special FadeOutMusic
	writetext HostSilenceText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear ROUTE24_ROCKET
	pause 25
	special FadeInQuickly
	playmapmusic
	end

Route24_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  8,  7, SPRITE_WES, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24RocketScript, EVENT_ROUTE_24_ROCKET
