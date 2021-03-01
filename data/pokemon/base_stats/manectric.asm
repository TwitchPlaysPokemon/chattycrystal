	db 0 ; species ID placeholder

	db  70,  75,  60, 105, 105,  60
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC; type
	db 45 ; catch rate
	db 168 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 21 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/manectric/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, HIDDEN_POWER, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, DOUBLE_TEAM, REST, ATTRACT, THIEF, STRENGTH, FLASH, THUNDERBOLT
	; end
