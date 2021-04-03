:	db 0 ; species ID placeholder

	db  25,  20,  15,  90, 105,  55
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 200 ; catch rate
	db 73 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	INCBIN "gfx/pokemon/abra/front.dimensions"
	db 20 ; step cycles to hatch
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SWIFT, THUNDERPUNCH, DREAM_EATER, REST, ATTRACT, THIEF, FIRE_PUNCH, NIGHTMARE, FLASH, CALM_MIND, DAZZLINGLEAM, DRAIN_PUNCH, ENERGY_BALL, GRASS_KNOT, KNOCK_OFF, SIGNAL_BEAM, THUNDER_WAVE

	ds BASE_PADDING_SIZE ; padding
	assert (@ - :-) == BASE_DATA_SIZE ; end
