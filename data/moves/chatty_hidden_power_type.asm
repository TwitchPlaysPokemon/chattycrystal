ChattyHiddenPowerType:
	; Every three-button combination has a type assigned to it. All combinations involving solely D-Pad directions
	; map to the same type, as picking three specific directions out of four is hard. Other combinations are
	; mapped to unique types. This exhausts both all three-button combinations not involving Start or Select as
	; well as all available types. As the list is exhaustive, no terminator is needed.

	db A_BUTTON + B_BUTTON + D_UP,     ELECTRIC
	db A_BUTTON + B_BUTTON + D_DOWN,   FIRE
	db A_BUTTON + B_BUTTON + D_LEFT,   GRASS
	db A_BUTTON + B_BUTTON + D_RIGHT,  WATER
	db A_BUTTON + D_UP     + D_LEFT,   PSYCHIC
	db A_BUTTON + D_UP     + D_RIGHT,  FAIRY
	db A_BUTTON + D_DOWN   + D_LEFT,   ICE
	db A_BUTTON + D_DOWN   + D_RIGHT,  DARK
	db A_BUTTON + D_UP     + D_DOWN,   FLYING
	db A_BUTTON + D_LEFT   + D_RIGHT,  FIGHTING
	db B_BUTTON + D_UP     + D_LEFT,   BUG
	db B_BUTTON + D_UP     + D_RIGHT,  GHOST
	db B_BUTTON + D_DOWN   + D_LEFT,   ROCK
	db B_BUTTON + D_DOWN   + D_RIGHT,  GROUND
	db B_BUTTON + D_UP     + D_DOWN,   POISON
	db B_BUTTON + D_LEFT   + D_RIGHT,  STEEL
	db D_UP     + D_DOWN   + D_LEFT,   DRAGON
	db D_UP     + D_DOWN   + D_RIGHT,  DRAGON
	db D_UP     + D_LEFT   + D_RIGHT,  DRAGON
	db D_DOWN   + D_LEFT   + D_RIGHT,  DRAGON
