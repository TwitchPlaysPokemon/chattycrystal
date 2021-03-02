	db 0 ; species ID placeholder

	db  68,  65,  65,  80, 125, 115
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, FAIRY ; type
	db 45 ; catch rate
	db 208 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 21 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gardevoir/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ZAP_CANNON, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, FRUSTRATION, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REST, ATTRACT, THIEF, FLASH, THUNDERBOLT
	; end
