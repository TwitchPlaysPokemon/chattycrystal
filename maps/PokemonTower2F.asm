	object_const_def ; object_event constants
	const POKEMONTOWER2F_EVAN
	const POKEMONTOWER2F_CARLY
	const POKEMONTOWER2F_POKE_BALL1

PokemonTower2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerMediumCarly:
	trainer MEDIUM, CARLY, EVENT_BEAT_MEDIUM_CARLY, .before_text, .defeat_text, 0, .Script

.Script:
	endifjustbattled
	jumptext .after_text

.before_text
	text "Kekeke<...>"
	line "Kwaaah!"
	done

.defeat_text
	text "Hmm? What am I"
	line "doing?"
	done

.after_text
	text "Sorry! I was"
	line "possessed!"
	done

PokemonTowerEvan:
	playmusic MUSIC_RIVAL_ENCOUNTER
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement POKEMONTOWER2F_EVAN, PokemonTower2FEvanMoveToPlayer
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	winlosstext HostSilenceText, HostSilenceText
	loadtrainer AC_CHRIS, EVAN4
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	applymovement POKEMONTOWER2F_EVAN, PokemonTower2FEvanLeave
	special FadeOutMusic
	playsound SFX_EXIT_BUILDING
	disappear POKEMONTOWER2F_EVAN
	setflag EVENT_POKEMON_TOWER_2F_EVAN
	waitsfx
	playmapmusic
	end

PokemonTower2FEvanMoveToPlayer:
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step RIGHT
	step_end

PokemonTower2FEvanLeave:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step_end

PokemonTower2FEscapeRope:
	itemball ESCAPE_ROPE

PokemonTower2F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 16,  9, POKEMON_TOWER_1F, 3
	warp_event  1,  9, POKEMON_TOWER_3F, 1

	db 1 ; coord events
	coord_event 5, 5, SCENE_DEFAULT, PokemonTowerEvan

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  8, SPRITE_EVAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, ObjectEvent, EVENT_POKEMON_TOWER_2F_EVAN
	object_event  9, 11, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerMediumCarly, -1
	object_event  8, 7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower2FEscapeRope, EVENT_POKEMON_TOWER_2F_ESCAPE_ROPE
