:	db 0 ; species ID placeholder

	db  90,  65,  65,  15,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC ; type
	db 190 ; catch rate
	db 99 ; base exp
	db NO_ITEM, KINGS_ROCK ; items
	db GENDER_F50 ; gender ratio
	INCBIN "gfx/pokemon/slowpoke/front.dimensions"
	db 20 ; step cycles to hatch
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ZAP_CANNON, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNORE, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, FIRE_BLAST, SWIFT, DREAM_EATER, REST, ATTRACT, NIGHTMARE, SURF, STRENGTH, FLASH, WHIRLPOOL, FLAMETHROWER, ICE_BEAM, CALM_MIND, GRASS_KNOT, SCALD, SIGNAL_BEAM, THUNDER_WAVE

	ds BASE_PADDING_SIZE ; padding
	assert (@ - :-) == BASE_DATA_SIZE ; end
