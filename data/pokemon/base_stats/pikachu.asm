:	db 0 ; species ID placeholder

	db  35,  55,  30,  90,  50,  40
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 82 ; base exp
	db NO_ITEM, BERRY ; items
	db GENDER_F50 ; gender ratio
	INCBIN "gfx/pokemon/pikachu/front.dimensions"
	db 10 ; step cycles to hatch
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SNORE, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DEFENSE_CURL, THUNDERPUNCH, DETECT, REST, ATTRACT, THIEF, SURF, STRENGTH, FLASH, THUNDERBOLT, CALM_MIND, CRYSTAL_BOLT, GRASS_KNOT, KNOCK_OFF, NASTY_PLOT, SIGNAL_BEAM, THUNDER_WAVE

	ds BASE_PADDING_SIZE ; padding
	assert (@ - :-) == BASE_DATA_SIZE ; end
