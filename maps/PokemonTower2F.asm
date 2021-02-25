	object_const_def ; object_event constants
	const POKEMONTOWER2F_EVAN
	const POKEMONTOWER2F_CARLY
	const POKEMONTOWER2F_POKE_BALL1

PokemonTower2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerMediumCarly:
	trainer MEDIUM, CARLY, EVENT_BEAT_MEDIUM_CARLY, MediumCarlySeenText, MediumCarlyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumCarlyAfterBattleText
	waitbutton
	closetext
	end

PokemonTowerEvan:
	playmusic MUSIC_RIVAL_ENCOUNTER
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement POKEMONTOWER2F_EVAN, PokemonTower2fEvanMoveToPlayer
	opentext
	writetext PokemonTowerEvanText
	waitbutton
	closetext
	winlosstext PokemonTowerEvanText, PokemonTowerEvanText
	loadtrainer AC_CHRIS, EVAN4
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext PokemonTowerEvanText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	applymovement POKEMONTOWER2F_EVAN, PokemonTower2fEvanLeave
	special FadeOutMusic
	playsound SFX_EXIT_BUILDING
	disappear POKEMONTOWER2F_EVAN
	setflag EVENT_POKEMON_TOWER_2F_EVAN
	waitsfx
	playmapmusic
	end

PokemonTower2fEvanMoveToPlayer:
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step RIGHT
	step_end

PokemonTower2fEvanLeave:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step_end

PokemonTower2fEscapeRope:
	itemball ESCAPE_ROPE

MediumCarlySeenText:
MediumCarlyBeatenText:
MediumCarlyAfterBattleText:
PokemonTowerEvanText:
	text "<...>"
	done

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
	object_event  8, 7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower2fEscapeRope, EVENT_POKEMON_TOWER_2F_ESCAPE_ROPE
