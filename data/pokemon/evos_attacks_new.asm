SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw PoochyenaEvosAttacks
	dw MightyenaEvosAttacks
	dw ZigzagoonEvosAttacks
	dw LinooneEvosAttacks
	dw ChatotEvosAttacks
	dw DummyEvosAttacks ; TODO: learnset
	dw DummyEvosAttacks ; TODO: learnset
	dw DummyEvosAttacks ; TODO: learnset
	dw DummyEvosAttacks ; TODO: learnset
	dw DummyEvosAttacks ; TODO: learnset
	dw DummyEvosAttacks ; TODO: learnset

DummyEvosAttacks:
	; remove when no longer in used
	db 0
	dbw 1, POUND ; usual filler move
	db 0 ; no more level-up moves

ChatotEvosAttacks:
	db 0
	dbw 1, PECK
	dbw 5, GROWL
	dbw 9, MIRROR_MOVE
	dbw 13, SING
	dbw 17, FURY_ATTACK
	dbw 20, CHATTER
;	dbw 25, TAUNT ; TODO: add when taunt has been added
	dbw 29, MIMIC
	dbw 33, ROOST
	dbw 37, BRAVE_BIRD
	dbw 41, CHARM
	dbw 45, RETURN
	db 0 ; no more level-up moves

PoochyenaEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, MIGHTYENA
	db 0
	dbw 1, TACKLE
	dbw 5, HOWL
	dbw 9, SAND_ATTACK
	dbw 13, BITE
	dbw 19, FORESIGHT
	dbw 21, ROAR
	dbw 25, SWAGGER
	dbw 29, SCARY_FACE
	dbw 33, TAKE_DOWN
;	dbw 37, TAUNT ; TODO: add when taunt has been added
	dbw 41, CRUNCH
	dbw 45, THIEF
	db 0 ; no more level-up moves

MightyenaEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 1, HOWL
	dbw 1, SAND_ATTACK
	dbw 1, BITE
	dbw 5, HOWL
	dbw 9, SAND_ATTACK
	dbw 13, BITE
	dbw 17, FORESIGHT
	dbw 22, ROAR
	dbw 27, SWAGGER
	dbw 32, SCARY_FACE
	dbw 37, TAKE_DOWN
;	dbw 42, TAUNT ; TODO: add when taunt has been added
	dbw 47, CRUNCH
	dbw 52, THIEF
	db 0 ; no more level-up moves

ZigzagoonEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, LINOONE
	db 0
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 5, TAIL_WHIP
	dbw 9, HEADBUTT
	dbw 13, SAND_ATTACK
	dbw 19, ODOR_SLEUTH
	dbw 21, MUD_SLAP
	dbw 25, PIN_MISSILE
	dbw 29, COVET
	dbw 33, FLAIL
	dbw 37, REST
	dbw 41, BELLY_DRUM
	db 0 ; no more level-up moves

LinooneEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 1, HEADBUTT
	dbw 5, TAIL_WHIP
	dbw 9, HEADBUTT
	dbw 13, SAND_ATTACK
	dbw 17, ODOR_SLEUTH
	dbw 22, MUD_SLAP
	dbw 29, FURY_SWIPES
	dbw 35, COVET
	dbw 41, SLASH
	dbw 47, REST
	dbw 53, BELLY_DRUM
	db 0 ; no more level-up moves
