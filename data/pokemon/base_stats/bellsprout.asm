:	db 0 ; species ID placeholder

	db  50,  75,  35,  40,  70,  30
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 255 ; catch rate
	db 84 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	INCBIN "gfx/pokemon/bellsprout/front.dimensions"
	db 20 ; step cycles to hatch
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, PROTECT, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, THIEF, CUT, FLASH, ENERGY_BALL, GRASS_KNOT, KNOCK_OFF, POISON_JAB, SWORDS_DANCE

	ds BASE_PADDING_SIZE ; padding
	assert (@ - :-) == BASE_DATA_SIZE ; end
