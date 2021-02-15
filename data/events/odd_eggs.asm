OddEggProbabilities:
	db $40 ; Azurill
	db $40 ; Turtwig
	db $40 ; Chimchar
	db $40 ; Piplup
	db 0 ; end

OddEggSpecies:
	dw AZURILL
	dw TURTWIG
	dw CHIMCHAR
	dw PIPLUP

OddEggMoves:
	dw WATER_GUN, DEFENSE_CURL, IRON_TAIL, NO_MOVE ; Azurill
	dw TACKLE, WITHDRAW, ABSORB, DIZZY_PUNCH ; Turtwig
	dw SCRATCH, LEER, EMBER, DIZZY_PUNCH ; Chimchar
	dw POUND, GROWL, BUBBLE, DIZZY_PUNCH ; Piplup

OddEggs:
; Azurill
	db 0 ; Species, will be filled on load
	db NO_ITEM
	db 0, 0, 0, 0 ; Moves, will be filled on load
	dw 0 ; OT ID
	dt 100 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 25, 40, 15, 0 ; PP
	db 11 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 20 ; Max HP
	bigdw 8 ; Atk
	bigdw 10 ; Def
	bigdw 8 ; Spd
	bigdw 8 ; SAtk
	bigdw 8 ; SDef
	db "EGG@@@@@@@@"

; Turtwig
	db 0 ; Species, will be filled on load
	db NO_ITEM
	db 0, 0, 0, 0 ; Moves, will be filled on load
	dw 1 ; OT ID
	dt 135 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 35, 40, 20, 10 ; PP
	db 21 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 21 ; Max HP
	bigdw 13 ; Atk
	bigdw 12 ; Def
	bigdw 9 ; Spd
	bigdw 10 ; SAtk
	bigdw 11 ; SDef
	db "EGG@@@@@@@@"

; Chimchar
	db 0 ; Species, will be filled on load
	db NO_ITEM
	db 0, 0, 0, 0 ; Moves, will be filled on load
	dw 2 ; OT ID
	dt 135 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 35, 30, 25, 10 ; PP
	db 21 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 20 ; Max HP
	bigdw 12 ; Atk
	bigdw 10 ; Def
	bigdw 12 ; Spd
	bigdw 11 ; SAtk
	bigdw 10 ; SDef
	db "EGG@@@@@@@@"

; Piplup
	db 0 ; Species, will be filled on load
	db NO_ITEM
	db 0, 0, 0, 0 ; Moves, will be filled on load
	dw 3 ; OT ID
	dt 135 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 35, 40, 20, 10 ; PP
	db 21 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 21 ; Max HP
	bigdw 11 ; Atk
	bigdw 11 ; Def
	bigdw 10 ; Spd
	bigdw 12 ; SAtk
	bigdw 11 ; SDef
	db "EGG@@@@@@@@"
