SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw PoochyenaEvosAttacks
	dw MightyenaEvosAttacks

PoochyenaEvosAttacks:
	db EVOLVE_LEVEL, 18, MIGHTYENA
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

