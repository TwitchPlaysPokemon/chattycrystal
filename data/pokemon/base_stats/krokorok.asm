:	db 0 ; species ID placeholder

	db  60,  82,  45,  74,  45,  45
	;   hp  atk  def  spd  sat  sdf

	db GROUND, DARK ; type
	db 90 ; catch rate
	db 123 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	INCBIN "gfx/pokemon/krokorok/front.dimensions"
	db 21 ; step cycles to hatch
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SNORE, PROTECT, ENDURE, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, STRENGTH, DARK_PULSE, GRASS_KNOT, KNOCK_OFF, ROCK_SLIDE, SHADOW_CLAW

	ds BASE_PADDING_SIZE ; padding
	assert (@ - :-) == BASE_DATA_SIZE ; end
