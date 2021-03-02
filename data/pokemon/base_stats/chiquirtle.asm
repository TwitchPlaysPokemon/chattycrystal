	db 0 ; species ID placeholder

	db  45,  49,  65,  44,  50,  65
	;   hp  atk  def  spd  sat  sdf

	db GRASS, WATER
	db 45 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	INCBIN "gfx/pokemon/chiquirtle/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, IRON_TAIL, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, DEFENSE_CURL, DETECT, REST, ATTRACT, CUT, SURF, STRENGTH, FLASH, WHIRLPOOL, WATERFALL, ICE_BEAM
	; end
