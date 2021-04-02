:	db 0 ; species ID placeholder

	db  71,  73,  88,  59, 120,  89
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 55 ; catch rate
	db 100 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	INCBIN "gfx/pokemon/clawitzer/front.dimensions"
	db 16 ; step cycles to hatch
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SNORE, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, RETURN, SHADOW_BALL, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, FURY_CUTTER, CUT, SURF, WATERFALL, ICE_BEAM, DARK_PULSE, DRAGON_PULSE, FOCUS_BLAST, ROCK_SLIDE, SWORDS_DANCE

	ds BASE_PADDING_SIZE ; padding
	assert (@ - :-) == BASE_DATA_SIZE ; end
