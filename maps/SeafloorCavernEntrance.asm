SeafloorCavernEntrance_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SeafloorCavernBoulder:
	jumpstd strengthboulder

SeafloorCavernRock:
	jumpstd smashrock

SeafloorCavernEntrance_Leave:
	special FadeOutMusic
	special FadeBlackQuickly
	playsound SFX_ENTER_DOOR
	waitsfx
	pause 10
	playsound SFX_METRONOME
	waitsfx
	warp REDS_HOUSE_2F, 0, 7
	end

SeafloorCavernEntrance_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  9,  1, SEAFLOOR_CAVERN_ROOM_1, 1

	db 1 ; coord events
	coord_event  3, 13, SCENE_ALWAYS, SeafloorCavernEntrance_Leave

	db 0 ; bg events

	db 0 ; object events
