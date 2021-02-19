	db 0 ; species ID placeholder

	db  55,  55,  85,  35,  65,  85
	;   hp  atk  def  spd  sat  sdf

	db POISON, FIGHTING ; type
	db 140 ; catch rate
	db 83 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 11 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/croagunk/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, FRUSTRATION, EARTHQUAKE, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, SLUDGE_BOMB, REST, ATTRACT, THIEF, ENDURE, SLEEP_TALK, SWAGGER, STRENGTH, ROCK_SMASH
	; end
