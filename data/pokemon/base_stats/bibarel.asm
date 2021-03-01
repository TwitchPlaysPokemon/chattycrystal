	db 0 ; species ID placeholder

	db  79,  85,  60,  71,  55,  60
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, WATER ; type
	db 127 ; catch rate
	db 116 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 16 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/bibarel/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, REST, ATTRACT, THIEF, CUT, SURF, STRENGTH, WHIRLPOOL, WATERFALL, THUNDERBOLT, ICE_BEAM
	; end
