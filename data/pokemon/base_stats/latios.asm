	db 0 ; species ID placeholder

	db  80,  90,  80, 110, 130, 110
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, PSYCHIC ; type
	db 3 ; catch rate
	db 211 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 100 ; unknown 1
	db 121 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/latios/front.dimensions"
	ds BASE_PADDING_SIZE ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC, ZAP_CANNON, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, SOLARBEAM, DRAGONBREATH, THUNDER, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, SWIFT, DREAM_EATER, DETECT, REST, ATTRACT, STEEL_WING, FURY_CUTTER, CUT, FLY, SURF, FLASH, WHIRLPOOL, WATERFALL, THUNDERBOLT, ICE_BEAM
	; end
