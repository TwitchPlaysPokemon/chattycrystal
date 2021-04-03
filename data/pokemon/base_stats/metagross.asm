:	db 0 ; species ID placeholder

	db  80, 135, 130,  70,  95,  95
	;   hp  atk  def  spd  sat  sdf

	db STEEL, PSYCHIC ; type
	db 3 ; catch rate
	db 210 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	INCBIN "gfx/pokemon/metagross/front.dimensions"
	db 41 ; step cycles to hatch
	db GROWTH_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, ZAP_CANNON, ROCK_SMASH, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, SWIFT, DEFENSE_CURL, THUNDERPUNCH, REST, FURY_CUTTER, CUT, STRENGTH, FLASH, AERIAL_ACE, GRASS_KNOT, IRON_HEAD, ROCK_SLIDE, SIGNAL_BEAM

	ds BASE_PADDING_SIZE ; padding
	assert (@ - :-) == BASE_DATA_SIZE ; end
