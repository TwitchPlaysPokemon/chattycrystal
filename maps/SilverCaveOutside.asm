SilverCaveOutside_MapScripts:
	db 2 ; scene scripts
	scene_script GenericDummyScript ; SCENE_DEFAULT
	scene_script GenericDummyScript ; SCENE_FINISHED

	db 0 ; callbacks

SilverCaveSetFlypoint:
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	setscene SCENE_FINISHED
	end

SilverCaveOutside_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 23, 19, SILVER_CAVE_POKECENTER_1F, 1
	warp_event 18, 11, SILVER_CAVE_ROOM_1, 1

	db 8 ; coord events
	coord_event 25, 20, SCENE_DEFAULT, SilverCaveSetFlypoint
	coord_event 25, 21, SCENE_DEFAULT, SilverCaveSetFlypoint
	coord_event 25, 22, SCENE_DEFAULT, SilverCaveSetFlypoint
	coord_event 25, 24, SCENE_DEFAULT, SilverCaveSetFlypoint
	coord_event 25, 25, SCENE_DEFAULT, SilverCaveSetFlypoint
	coord_event 25, 26, SCENE_DEFAULT, SilverCaveSetFlypoint
	coord_event 25, 28, SCENE_DEFAULT, SilverCaveSetFlypoint
	coord_event 25, 29, SCENE_DEFAULT, SilverCaveSetFlypoint

	db 0 ; bg events

	db 0 ; object events
