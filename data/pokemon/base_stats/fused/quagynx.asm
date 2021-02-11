	db 0

	db  80,  68,  60,  65, 90,  80
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ICE
	db 64 ; catch rate
	db 137 ; base exp
	db ICE_BERRY ; item 1
	db ICE_BERRY ; item 2
	db 191 ; gender
	db 100 ; unknown
	db 22 ; step cycles to hatch
	db 5 ; unknown
	INCBIN "gfx/pokemon/fused/quagynx/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_HUMANSHAPE ; egg groups

	; tmhm
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, PSYCH_UP, HIDDEN_POWER, SWEET_SCENT, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, DEFENSE_CURL, DREAM_EATER, REST, ATTRACT, THIEF, NIGHTMARE, SURF, STRENGTH, FLASH, WHIRLPOOL, ICE_BEAM
	; end
