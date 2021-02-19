	db 0 ; species ID placeholder

	db  50,  70, 100,  30,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db STEEL, ROCK ; type
	db 180 ; catch rate
	db 96 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 36 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/aron/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SANDSTORM, REST, ATTRACT, CUT, STRENGTH, ROCK_SMASH
	; end
