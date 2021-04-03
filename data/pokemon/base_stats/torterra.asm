:	db 0 ; species ID placeholder

	db  95, 109, 105,  56,  75,  85
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GROUND ; type
	db 45 ; catch rate
	db 208 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	INCBIN "gfx/pokemon/torterra/front.dimensions"
	db 21 ; step cycles to hatch
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, PROTECT, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, IRON_TAIL, EARTHQUAKE, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, REST, ATTRACT, CUT, STRENGTH, FLASH, ENERGY_BALL, GRASS_KNOT, IRON_HEAD, ROCK_SLIDE, SUPERPOWER, SWORDS_DANCE

	ds BASE_PADDING_SIZE ; padding
	assert (@ - :-) == BASE_DATA_SIZE ; end
