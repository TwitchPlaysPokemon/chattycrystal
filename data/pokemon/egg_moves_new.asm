SECTION "Egg Moves 3", ROMX

EggMovePointers3::
	dw PoochyenaEggMoves
	dw NoEggMoves3

PoochyenaEggMoves:
	dw ASTONISH
	dw COVET
	dw LEER
;	dw POISON_FANG ;TODO: add when poison fang is added
;	dw YAWN ;TODO: add when yawn is added
	dw -1 ; end

NoEggMoves3:
	dw -1 ; end
