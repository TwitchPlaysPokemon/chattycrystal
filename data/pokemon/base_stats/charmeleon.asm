:	db 0 ; species ID placeholder

	db  58,  64,  58,  80,  80,  65
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 142 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	INCBIN "gfx/pokemon/charmeleon/front.dimensions"
	db 20 ; step cycles to hatch
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, FRUSTRATION, IRON_TAIL, DRAGONBREATH, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, FIRE_BLAST, SWIFT, DEFENSE_CURL, THUNDERPUNCH, REST, ATTRACT, FIRE_PUNCH, FURY_CUTTER, CUT, STRENGTH, FLAMETHROWER, AERIAL_ACE, DRAGON_PULSE, HEAT_WAVE, OVERHEAT, ROCK_SLIDE, SWORDS_DANCE, WILL_O_WISP

	ds BASE_PADDING_SIZE ; padding
	assert (@ - :-) == BASE_DATA_SIZE ; end
