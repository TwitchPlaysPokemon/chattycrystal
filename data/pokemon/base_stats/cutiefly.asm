	db 0 ; species ID placeholder

	db  40,  45,  40,  84,  55,  40
	;   hp  atk  def  spd  sat  sdf

	db BUG, FAIRY ; type
	db 190 ; catch rate
	db 61 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 21 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/cutiefly/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, PROTECT, FRUSTRATION, RETURN, PSYCHIC_M, DOUBLE_TEAM, REST, ATTRACT, THIEF, PSYCH_UP, DREAM_EATER, SWAGGER, SLEEP_TALK, CUT, FLASH
	; end
