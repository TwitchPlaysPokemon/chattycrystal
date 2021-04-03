:	db 0 ; species ID placeholder

	db  97, 132,  77,  43,  62,  67
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, ICE ; type
	db 60 ; catch rate
	db 167 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	INCBIN "gfx/pokemon/crabominable/front.dimensions"
	db 21 ; step cycles to hatch
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, EARTHQUAKE, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SWIFT, DEFENSE_CURL, THUNDERPUNCH, DETECT, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, STRENGTH, ICE_BEAM, DRAIN_PUNCH, FOCUS_BLAST, IRON_HEAD, ROCK_SLIDE, SCALD, SUPERPOWER

	ds BASE_PADDING_SIZE ; padding
	assert (@ - :-) == BASE_DATA_SIZE ; end
