:	db 0 ; species ID placeholder

	db  84,  86,  88,  60, 111, 101
	;   hp  atk  def  spd  sat  sdf

	db WATER, STEEL ; type
	db 45 ; catch rate
	db 210 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	INCBIN "gfx/pokemon/empoleon/front.dimensions"
	db 21 ; step cycles to hatch
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, EARTHQUAKE, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, REST, ATTRACT, STEEL_WING, FURY_CUTTER, CUT, SURF, STRENGTH, WHIRLPOOL, WATERFALL, ICE_BEAM, AERIAL_ACE, GRASS_KNOT, KNOCK_OFF, ROCK_SLIDE, SCALD, SIGNAL_BEAM, SWORDS_DANCE

	ds BASE_PADDING_SIZE ; padding
	assert (@ - :-) == BASE_DATA_SIZE ; end
