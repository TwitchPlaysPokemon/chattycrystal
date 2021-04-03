:	db 0 ; species ID placeholder

	db  35,  46,  34,  20,  35,  45
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 57 ; base exp
	db NO_ITEM, BERRY ; items
	db GENDER_F50 ; gender ratio
	INCBIN "gfx/pokemon/sentret/front.dimensions"
	db 15 ; step cycles to hatch
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, SOLARBEAM, IRON_TAIL, RETURN, DIG, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SWIFT, DEFENSE_CURL, THUNDERPUNCH, DETECT, REST, ATTRACT, THIEF, FIRE_PUNCH, FURY_CUTTER, CUT, SURF, WHIRLPOOL, FLAMETHROWER, THUNDERBOLT, ICE_BEAM, GRASS_KNOT, KNOCK_OFF

	ds BASE_PADDING_SIZE ; padding
	assert (@ - :-) == BASE_DATA_SIZE ; end
