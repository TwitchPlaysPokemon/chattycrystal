:	db 0 ; species ID placeholder

	db  60, 115, 105,  80,  65,  70
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 201 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	INCBIN "gfx/pokemon/kabutops/front.dimensions"
	db 30 ; step cycles to hatch
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, ENDURE, FRUSTRATION, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, SURF, WHIRLPOOL, WATERFALL, ICE_BEAM, AERIAL_ACE, KNOCK_OFF, ROCK_SLIDE, SCALD, SUPERPOWER, SWORDS_DANCE

	ds BASE_PADDING_SIZE ; padding
	assert (@ - :-) == BASE_DATA_SIZE ; end
