:	db 0 ; species ID placeholder

	db  95,  60,  79,  81, 100, 125
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 60 ; catch rate
	db 213 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	INCBIN "gfx/pokemon/milotic/front.dimensions"
	db 21 ; step cycles to hatch
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, PSYCH_UP, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, DRAGONBREATH, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, SURF, WHIRLPOOL, WATERFALL, ICE_BEAM, DRAGON_PULSE, IRON_HEAD, SCALD

	ds BASE_PADDING_SIZE ; padding
	assert (@ - :-) == BASE_DATA_SIZE ; end
