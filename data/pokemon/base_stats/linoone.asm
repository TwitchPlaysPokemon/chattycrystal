:	db 0 ; species ID placeholder

	db  78,  70,  61, 100,  50,  61
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 128 ; base exp
	db BERRY, GOLD_BERRY ; items
	db GENDER_F50 ; gender ratio
	INCBIN "gfx/pokemon/linoone/front.dimensions"
	db 16 ; step cycles to hatch
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, DIG, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DEFENSE_CURL, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, SURF, STRENGTH, WHIRLPOOL, THUNDERBOLT, ICE_BEAM, GRASS_KNOT, THUNDER_WAVE

	ds BASE_PADDING_SIZE ; padding
	assert (@ - :-) == BASE_DATA_SIZE ; end
