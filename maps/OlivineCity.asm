	object_const_def ; object_event constants
	const OLIVINECITY_SAILOR1
	const OLIVINECITY_STANDING_YOUNGSTER
	const OLIVINECITY_SAILOR2
	const OLIVINECITY_OLIVINE_RIVAL

OlivineCity_MapScripts:
	db 2 ; scene scripts
	scene_script GenericDummyScript ; SCENE_DEFAULT
	scene_script GenericDummyScript ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_OLIVINE
	return

OlivineCityRivalSceneTop:
	scall OlivineCityRivalEnter
	applymovement OLIVINECITY_OLIVINE_RIVAL, OlivineCity_Movement_RivalApproachPlayerAbove
	scall OlivineCityRivalBattle
	applymovement PLAYER, OlivineCity_Movement_PlayerStepDown
	turnobject PLAYER, RIGHT
	applymovement OLIVINECITY_OLIVINE_RIVAL, OlivineCity_Movement_RivalLeaveTop
	sjump OlivineCityRivalExit

OlivineCityRivalSceneBottom:
	scall OlivineCityRivalEnter
	applymovement OLIVINECITY_OLIVINE_RIVAL, OlivineCity_Movement_RivalApproachPlayerBelow
	scall OlivineCityRivalBattle
	applymovement PLAYER, OlivineCity_Movement_RivalLeaveBottom
	turnobject PLAYER, RIGHT
	applymovement OLIVINECITY_OLIVINE_RIVAL, OlivineCity_Movement_PlayerStepUp
OlivineCityRivalExit:
	disappear OLIVINECITY_OLIVINE_RIVAL
	setscene SCENE_FINISHED
	special RestartMapMusic
	special LoadUsedSpritesGFX
	end

OlivineCityRivalBattle:
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	loadtrainer GSCHGSS_CHRIS_RIVAL, AJDNNW2
	winlosstext HostSilenceText, HostSilenceText
	startbattle
	reloadmapafterbattle
	playmusic MUSIC_RIVAL_AFTER
	end

OlivineCityRivalEnter:
	turnobject PLAYER, LEFT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	playsound SFX_ENTER_DOOR
	appear OLIVINECITY_OLIVINE_RIVAL
	waitsfx
	end

OlivineCitySailor1Script:
	jumptextfaceplayer OlivineCitySailor1Text

OlivineCityStandingYoungsterScript:
	random 2
	iffalse .FiftyFifty
	jumptextfaceplayer OlivineCityStandingYoungsterPokegearText

.FiftyFifty:
	jumptextfaceplayer OlivineCityStandingYoungsterPokedexText

OlivineCitySailor2Script:
	jumptextfaceplayer OlivineCitySailor2Text

OlivineCitySign:
	jumptext OlivineCitySignText

OlivineCityPortSign:
	jumptext OlivineCityPortSignText

OlivineGymSign:
	jumptext OlivineGymSignText

OlivineLighthouseSign:
	jumptext OlivineLighthouseSignText

OlivineCityBattleTowerSign:
	jumptext OlivineCityBattleTowerSignText

OlivineCityPokecenterSign:
	jumpstd pokecentersign

OlivineCityMartSign:
	jumpstd martsign

OlivineCity_Movement_RivalApproachPlayerBelow:
	step DOWN
OlivineCity_Movement_RivalApproachPlayerAbove:
	step DOWN
	step RIGHT
	step RIGHT
	step_end

OlivineCity_Movement_RivalLeaveTop:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

OlivineCity_Movement_PlayerStepUp:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

OlivineCity_Movement_PlayerStepDown:
	step DOWN
	turn_head UP
	step_end

OlivineCity_Movement_RivalLeaveBottom:
	step UP
	turn_head DOWN
	step_end

OlivineCitySailor1Text:
	text "Dark roads are"
	line "dangerous at"
	cont "night."

	para "But in the pitch-"
	line "black of night,"
	para "the sea is even"
	line "more treacherous!"

	para "Without the beacon"
	line "of the LIGHTHOUSE"
	para "to guide it, no"
	line "ship can sail."
	done

OlivineCityStandingYoungsterPokegearText:
	text "That thing you"
	line "have--it's a"
	para "#GEAR, right?"
	line "Wow, that's cool."
	done

OlivineCityStandingYoungsterPokedexText:
	text "Wow, you have a"
	line "#DEX!"

	para "That is just so"
	line "awesome."
	done

OlivineCitySailor2Text:
	text "The sea is sweet!"

	para "Sunsets on the sea"
	line "are marvelous!"

	para "Sing with me!"
	line "Yo-ho! Blow the"
	cont "man down!…"
	done

OlivineCitySignText:
	text "OLIVINE CITY"

	para "The Port Closest"
	line "to Foreign Lands"
	done

OlivineCityPortSignText:
	text "OLIVINE PORT"
	line "FAST SHIP PIER"
	done

OlivineGymSignText:
	text "OLIVINE CITY"
	line "#MON GYM"
	cont "LEADER: AIIIAAB"
	done

OlivineLighthouseSignText:
	text "OLIVINE LIGHTHOUSE"
	line "Also known as the"
	cont "GLITTER LIGHTHOUSE"
	done

OlivineCityBattleTowerSignText:
	text "BATTLE TOWER AHEAD"
	line "Opening Now!"
	done

OlivineCity_MapEvents:
	db 0, 0 ; filler

	db 10 ; warp events
	warp_event 13, 21, OLIVINE_POKECENTER_1F, 1
	warp_event 10, 11, OLIVINE_GYM, 1
	warp_event 25, 11, OLIVINE_TIMS_HOUSE, 1
	warp_event 29, 27, OLIVINE_LIGHTHOUSE_1F, 1
	warp_event 29, 11, OLIVINE_PUNISHMENT_SPEECH_HOUSE, 1
	warp_event 13, 15, OLIVINE_GOOD_ROD_HOUSE, 1
	warp_event  7, 21, OLIVINE_CAFE, 1
	warp_event 19, 17, OLIVINE_MART, 2
	warp_event 19, 27, OLIVINE_PORT_PASSAGE, 1
	warp_event 20, 27, OLIVINE_PORT_PASSAGE, 2

	db 2 ; coord events
	coord_event 13, 12, SCENE_DEFAULT, OlivineCityRivalSceneTop
	coord_event 13, 13, SCENE_DEFAULT, OlivineCityRivalSceneBottom

	db 7 ; bg events
	bg_event 17, 11, BGEVENT_READ, OlivineCitySign
	bg_event 20, 24, BGEVENT_READ, OlivineCityPortSign
	bg_event  7, 11, BGEVENT_READ, OlivineGymSign
	bg_event 30, 28, BGEVENT_READ, OlivineLighthouseSign
	bg_event  3, 23, BGEVENT_READ, OlivineCityBattleTowerSign
	bg_event 14, 21, BGEVENT_READ, OlivineCityPokecenterSign
	bg_event 20, 17, BGEVENT_READ, OlivineCityMartSign

	db 4 ; object events
	object_event 26, 27, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCitySailor1Script, -1
	object_event 20, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineCityStandingYoungsterScript, -1
	object_event 17, 21, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCitySailor2Script, -1
	object_event 10, 11, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INITIALIZED_EVENTS
