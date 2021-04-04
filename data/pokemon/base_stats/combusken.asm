:	db 0 ; species ID placeholder

	db  60,  85,  60,  55,  85,  60
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIGHTING ; type
	db 45 ; catch rate
	db 142 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	INCBIN "gfx/pokemon/combusken/front.dimensions"
	db 21 ; step cycles to hatch
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, FRUSTRATION, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, FIRE_BLAST, SWIFT, THUNDERPUNCH, DETECT, REST, ATTRACT, FIRE_PUNCH, FURY_CUTTER, CUT, STRENGTH, FLAMETHROWER, AERIAL_ACE, FOCUS_BLAST, HEAT_WAVE, OVERHEAT, POISON_JAB, ROCK_SLIDE, SHADOW_CLAW, SWORDS_DANCE, WILL_O_WISP

	ds BASE_PADDING_SIZE ; padding
	assert (@ - :-) == BASE_DATA_SIZE ; end
