SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw PoochyenaEvosAttacks

PoochyenaEvosAttacks:
	db 0 ; TODO: evo
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
