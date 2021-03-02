	db 0 ; species ID placeholder

	db  70, 140, 230,  50,  60,  80
	;   hp  atk  def  spd  sat  sdf

	db STEEL, ROCK ; type
	db 45 ; catch rate
	db 205 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 36 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/aggron/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, ROAR, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, PROTECT, RAIN_DANCE, FRUSTRATION, SOLARBEAM, IRON_TAIL, THUNDER, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SANDSTORM, FIRE_BLAST, REST, ATTRACT, CUT, SURF, STRENGTH, WHIRLPOOL, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end
