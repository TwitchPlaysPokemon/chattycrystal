SECTION "Egg Moves 3", ROMX

EggMovePointers3::
	dw ChatotEggMoves
	dw PoochyenaEggMoves
	dw NoEggMoves3
	dw NoEggMoves3
	dw NoEggMoves3
	dw NoEggMoves3
	dw NoEggMoves3
	dw NoEggMoves3
	dw NoEggMoves3
	dw ZigzagoonEggMoves
	dw NoEggMoves3

ChatotEggMoves:
	dw AGILITY
	dw ENCORE
	dw NASTY_PLOT
	dw NIGHT_SHADE
	dw SUPERSONIC
	dw -1 ; end

PoochyenaEggMoves:
	dw ASTONISH
	dw COVET
	dw LEER
;	dw POISON_FANG ;TODO: add when poison fang is added
	dw HYPNOSIS
	dw -1 ; end

ZigzagoonEggMoves:
	dw CHARM
	dw PURSUIT
	dw SUBSTITUTE
;	dw TICKLE ;TODO: add when tickle is added
	dw THIEF
	dw -1 ; end

NoEggMoves3:
	dw -1 ; end
