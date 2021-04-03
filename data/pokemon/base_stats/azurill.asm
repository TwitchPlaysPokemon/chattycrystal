:	db 0 ; species ID placeholder

	db  50,  20,  40,  20,  20,  40
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FAIRY ; type
	db 150 ; catch rate
	db 33 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	INCBIN "gfx/pokemon/azurill/front.dimensions"
	db 11 ; step cycles to hatch
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, HIDDEN_POWER, SNORE, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DEFENSE_CURL, REST, ATTRACT, SURF, WHIRLPOOL, WATERFALL, ICE_BEAM, KNOCK_OFF, SCALD

	ds BASE_PADDING_SIZE ; padding
	assert (@ - :-) == BASE_DATA_SIZE ; end
