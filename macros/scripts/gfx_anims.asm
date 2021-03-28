; pic + oam animations

frame: MACRO
	db \1
x = \2
if _NARG > 2
rept _NARG + -2
x = x | (1 << (\3 + 1))
	shift
endr
endc
	db x
ENDM

NUM_VALID_OAM_SETS EQU $fc

battleframe: MACRO
___set = \1
___duration = \2 ; already one less than it should be
___flags = 0
	rept _NARG - 2
		assert ((\3) == OAM_X_FLIP) || ((\3) == OAM_Y_FLIP)
___flags = ___flags ^ (1 << (\3))
	shift
	endr
	if ___set >= NUM_VALID_OAM_SETS
___flags = ___flags | $80
___set = ___set - NUM_VALID_OAM_SETS
	endc
	assert (___set >= 0) && (___set < NUM_VALID_OAM_SETS), "invalid OAM set"
	rept ___duration >> 5
		db ___set, $1f | ___flags
	endr
	db ___set, (___duration & $1f) | ___flags
ENDM

	enum_start NUM_VALID_OAM_SETS

	enum delanim_command ; $fc
delanim: MACRO
; Removes the object from the screen, as opposed to `endanim` which just stops all motion
	db delanim_command
ENDM

	enum dowait_command ; $fd
dowait: MACRO
	db dowait_command
	db \1 ; frames
ENDM

	enum dorestart_command ; $fe
dorestart: MACRO
	db dorestart_command
ENDM

	enum endanim_command ; $ff
endanim: MACRO
	db endanim_command
ENDM


; Used for pic animations
__enum__ = $fd

	enum dorepeat_command ; $fd
dorepeat: MACRO
	db dorepeat_command
	db \1 ; command offset to jump to
ENDM

	enum setrepeat_command ; $fe
setrepeat: MACRO
	db setrepeat_command
	db \1 ; amount of times to repeat
ENDM
