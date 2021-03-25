	object_const_def ; object_event constants
	const PEWTERMUSEUM2F_YOUNGSTER
	const PEWTERMUSEUM2F_GRAMPS
	const PEWTERMUSEUM2F_SCIENTIST
	const PEWTERMUSEUM2F_LASS
	const PEWTERMUSEUM2F_POKEFANM

PewterMuseum2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PewterMuseum2FYoungsterScript:
	jumptextfaceplayer .Text

.Text:
	text "MOON STONE?"

	para "What's so special"
	line "about it?"
	done

PewterMuseum2FGrampsScript:
	jumptextfaceplayer .Text

.Text:
	text "July 20, 1969!"

	para "The first lunar"
	line "landing!"

	para "I bought a color"
	line "TV to watch it!"
	done

PewterMuseum2FScientistScript:
	jumptextfaceplayer .Text

.Text:
	text "We have a space"
	line "exhibit now."
	done

PewterMuseum2FLassScript:
	jumptextfaceplayer .Text

.Text:
	text "I want a PIKACHU!"
	line "It's so cute!"

	para "I asked my Daddy"
	line "to catch me one!"
	done

PewterMuseum2FPokefanMScript:
	jumptextfaceplayer .Text

.Text:
	text "Yeah, a PIKACHU"
	line "soon, I promise!"
	done

PewterMuseum2FSpaceShuttleScript:
	jumptext .Text

.Text:
	text "SPACE SHUTTLE"
	line "COLUMBIA"
	done

PewterMuseum2FMeteoriteScript:
	jumptext .Text

.Text:
	text "Meteorite that"
	line "fell on MT.MOON."
	cont "(MOON STONE?)"
	done

PewterMuseum2F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  7,  7, PEWTER_MUSEUM_1F, 5

	db 0 ; coord events

	db 2 ; bg events
	bg_event 11,  2, BGEVENT_READ, PewterMuseum2FSpaceShuttleScript
	bg_event  2,  5, BGEVENT_READ, PewterMuseum2FMeteoriteScript

	db 5 ; object events
	object_event  1,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterMuseum2FYoungsterScript, -1
	object_event  0,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum2FGrampsScript, -1
	object_event  7,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum2FScientistScript, -1
	object_event 11,  5, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum2FLassScript, -1
	object_event 12,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum2FPokefanMScript, -1
