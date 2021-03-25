	object_const_def ; object_event constants
	const POKEMONTOWER1F_MRFUJI
	const POKEMONTOWER1F_RECEPTIONIST
	const POKEMONTOWER1F_TEACHER
	const POKEMONTOWER1F_LASS
	const POKEMONTOWER1F_GRANNY

PokemonTower1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MrFuji:
	jumptextfaceplayer MrFujiText

PokemonTower1FReceptionistScript:
	jumptextfaceplayer PokemonTower1FReceptionistText

PokemonTower1FTeacherScript:
	jumptextfaceplayer PokemonTower1FTeacherText

PokemonTower1FLassScript:
	jumptextfaceplayer PokemonTower1FLassText

PokemonTower1FGrannyScript:
	jumptextfaceplayer PokemonTower1FGrannyText

MrFujiText:
	text "MR.FUJI: Welcome."

	para "Hmm… You appear to"
	line "be raising your"
	para "#MON in a kind"
	line "and loving manner."

	para "#MON lovers"
	line "come here to pay"
	para "their respects to"
	line "departed #MON."

	para "Please offer"
	line "condolences for"
	para "the souls of the"
	line "departed #MON."

	para "I'm sure that will"
	line "make them happy."
	done

PokemonTower1FReceptionistText:
	text "#MON TOWER was"
	line "erected in the"
	para "memory of #MON"
	line "that had died."
	done

PokemonTower1FTeacherText:
	text "There are other"
	line "graves of #MON"
	cont "here, I think."

	para "There are some"
	line "chambers that only"
	cont "MR.FUJI may enter."
	done

PokemonTower1FLassText:
	text "I came with my mom"
	line "to visit #MON"
	cont "graves…"
	done

PokemonTower1FGrannyText:
	text "The #MON that"
	line "lived with me…"

	para "I loved them like"
	line "my grandchildren…"
	done

PokemonTower1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  8, 17, LAVENDER_TOWN, 6
	warp_event  9, 17, LAVENDER_TOWN, 6
	warp_event 16,  9, POKEMON_TOWER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  8,  8, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MrFuji, -1
	object_event 13, 13, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTower1FReceptionistScript, -1
	object_event 11,  4, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PokemonTower1FTeacherScript, -1
	object_event  5, 13, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PokemonTower1FLassScript, -1
	object_event  3,  9, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PokemonTower1FGrannyScript, -1
