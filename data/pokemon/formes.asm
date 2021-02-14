forme: MACRO
	dba \1 ; frontpic
	dba \2 ; backpic
	assert BANK(PokemonPalettes) == BANK(\3)
	dw \3 ; palettes
	dba \4 ; frames
	assert BANK(BitmasksPointers) == BANK(\5)
	dw \5 ; bitmask
	assert BANK(AnimationPointers) == BANK(\6)
	dw \6 ; animation
	assert BANK(AnimationPointers) == BANK(\7)
	dw \7 ; idle animation
ENDM

; MUST have 6 formes per species; duplicate as needed!

Formes::
	dw BURMY, BurmyFormes
	dw SHELLOS, ShellosFormes
	dw GASTRODON, GastrodonFormes
	dw -1

FormeTypeOverrides:
	dw -1


BurmyFormes:
	; plant cloak - animation is PLACEHOLDER
	forme BurmyFrontpic, BurmyBackpic, BurmyPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; PLACEHOLDER - sandy cloak
	forme PlaceholderFrontpic, PlaceholderBackpic, PlaceholderPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; PLACEHOLDER - trash cloak
	forme PlaceholderFrontpic, PlaceholderBackpic, PlaceholderPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; plant cloak - animation is PLACEHOLDER
	forme BurmyFrontpic, BurmyBackpic, BurmyPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; PLACEHOLDER - sandy cloak
	forme PlaceholderFrontpic, PlaceholderBackpic, PlaceholderPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; PLACEHOLDER - trash cloak
	forme PlaceholderFrontpic, PlaceholderBackpic, PlaceholderPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle

ShellosFormes:
	; west sea - animation is PLACEHOLDER
	forme ShellosFrontpic, ShellosBackpic, ShellosPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; PLACEHOLDER - east sea
	forme PlaceholderFrontpic, PlaceholderBackpic, PlaceholderPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; west sea - animation is PLACEHOLDER
	forme ShellosFrontpic, ShellosBackpic, ShellosPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; PLACEHOLDER - east sea
	forme PlaceholderFrontpic, PlaceholderBackpic, PlaceholderPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; west sea - animation is PLACEHOLDER
	forme ShellosFrontpic, ShellosBackpic, ShellosPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; PLACEHOLDER - east sea
	forme PlaceholderFrontpic, PlaceholderBackpic, PlaceholderPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle

GastrodonFormes:
	; west sea - animation is PLACEHOLDER
	forme GastrodonFrontpic, GastrodonBackpic, GastrodonPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; PLACEHOLDER - east sea
	forme PlaceholderFrontpic, PlaceholderBackpic, PlaceholderPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; west sea - animation is PLACEHOLDER
	forme GastrodonFrontpic, GastrodonBackpic, GastrodonPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; PLACEHOLDER - east sea
	forme PlaceholderFrontpic, PlaceholderBackpic, PlaceholderPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; west sea - animation is PLACEHOLDER
	forme GastrodonFrontpic, GastrodonBackpic, GastrodonPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; PLACEHOLDER - east sea
	forme PlaceholderFrontpic, PlaceholderBackpic, PlaceholderPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
