	db 0 ; species ID placeholder

	db 100, 150, 140,  90, 100,  90
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 3 ; catch rate
	db 218 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 121 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/groudon/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset TODO: proper learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, REST, ATTRACT, CUT, STRENGTH, FLASH, ROCK_SMASH
	; end
