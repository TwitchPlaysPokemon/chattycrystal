	db 0 ; species ID placeholder

	db  40,  30,  30,  30,  40,  50
	;   hp  atk  def  spd  sat  sdf

	db WATER, GRASS
	db 255 ;catch rate
	db 74 ;exp rate
	db NO_ITEM
	db LEAF_STONE
	db 127 ;gender
	db 100 ;unknown
	db 16 ;egg cycles
	db 5 ;unknown
	INCBIN "gfx/pokemon/lotad/front.dimensions"
	db 0, 0, 0, 0 ;padding
	db MEDIUM_SLOW ;growth rate
	dn PLANT, AMPHIBIAN ;egg groups

	; tm/hm learnset TODO add real learns
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, PROTECT, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, DEFENSE_CURL, REST, ATTRACT, STRENGTH
	; end
