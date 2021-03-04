ChattyMonData:

	; odd egg data
	db 0 ; Species, will be filled on load
	db NO_ITEM
	db 0, 0, 0, 0 ; Moves, will be filled on load
	dw 00000 ; OT ID, will be filled on load
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 13, 15, 15, 15 ; DVs
	db 24 | (3 * PP_UP_ONE), 0, 0, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 21 ; Max HP
	bigdw 13 ; Atk
	bigdw 11 ; Def
	bigdw 11 ; Spd
	bigdw 13 ; SAtk
	bigdw 11 ; SDef
	db "EGG@@@@@@@@"

	; species
	dw UNOWN

	; moves
	dw CHATTY_HP, NO_MOVE, NO_MOVE, NO_MOVE
