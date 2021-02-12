	db 0 ; species ID placeholder

	db  0, 	 0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL; type
	db 255 ; catch rate
	db 0 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 1 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/placeholder/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HIDDEN_POWER
	; end
