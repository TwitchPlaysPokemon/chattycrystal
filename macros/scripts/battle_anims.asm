MACRO anim_wait
if \1 >= $d0
	fail "anim_wait argument must be less than $d0."
endc
	db \1
ENDM

FIRST_ANIM_COMMAND EQU $d0

; BattleAnimCommands indexes (see engine/battle_anims/anim_commands.asm)
	enum_start FIRST_ANIM_COMMAND

	enum skip ; $d0

	enum anim_1gfx_command ; $d1
MACRO anim_1gfx
	db anim_1gfx_command
	db \1 ; gfx1
ENDM

	enum anim_2gfx_command ; $d2
MACRO anim_2gfx
	db anim_2gfx_command
	db \1 ; gfx1
	db \2 ; gfx2
ENDM

	enum anim_3gfx_command ; $d3
MACRO anim_3gfx
	db anim_3gfx_command
	db \1 ; gfx1
	db \2 ; gfx2
	db \3 ; gfx3
ENDM

	enum anim_4gfx_command ; $d4
MACRO anim_4gfx
	db anim_4gfx_command
	db \1 ; gfx1
	db \2 ; gfx2
	db \3 ; gfx3
	db \4 ; gfx4
ENDM

	enum anim_5gfx_command ; $d5
MACRO anim_5gfx
	db anim_5gfx_command
	db \1 ; gfx1
	db \2 ; gfx2
	db \3 ; gfx3
	db \4 ; gfx4
	db \5 ; gfx5
ENDM

	enum anim_incobj_command ; $d6
MACRO anim_incobj
	db anim_incobj_command
	db \1 ; object_id
ENDM

	enum anim_setobj_command ; $d7
MACRO anim_setobj
	db anim_setobj_command
	db \1 ; object_id
	db \2 ; value
ENDM

	enum anim_incbgeffect_command ; $d8
MACRO anim_incbgeffect
	db anim_incbgeffect_command
	db \1 ; effect
ENDM

	enum anim_battlergfx_2row_command ; $d9
MACRO anim_battlergfx_2row
	db anim_battlergfx_2row_command
ENDM

	enum anim_battlergfx_1row_command ; $da
MACRO anim_battlergfx_1row
	db anim_battlergfx_1row_command
ENDM

	enum anim_checkpokeball_command ; $db
MACRO anim_checkpokeball
	db anim_checkpokeball_command
ENDM

	enum anim_transform_command ; $dc
MACRO anim_transform
	db anim_transform_command
ENDM

	enum anim_raisesub_command ; $dd
MACRO anim_raisesub
	db anim_raisesub_command
ENDM

	enum anim_dropsub_command ; $de
MACRO anim_dropsub
	db anim_dropsub_command
ENDM

	enum anim_resetobp0_command ; $df
MACRO anim_resetobp0
	db anim_resetobp0_command
ENDM

	enum anim_sound_command ; $e0
MACRO anim_sound
	db anim_sound_command
	db (\1 << 2) | \2 ; duration, tracks
	db \3 ; sound_id
ENDM

	enum anim_cry_command ; $e1
MACRO anim_cry
	db anim_cry_command
	db \1 ; pitch
ENDM

	enum skip ; $e2

	enum anim_oamon_command ; $e3
MACRO anim_oamon
	db anim_oamon_command
ENDM

	enum anim_oamoff_command ; $e4
MACRO anim_oamoff
	db anim_oamoff_command
ENDM

	enum anim_clearobjs_command ; $e5
MACRO anim_clearobjs
	db anim_clearobjs_command
ENDM

	enum anim_beatup_command ; $e6
MACRO anim_beatup
	db anim_beatup_command
ENDM

	enum skip ; $e7

	enum anim_updateactorpic_command ; $e8
MACRO anim_updateactorpic
	db anim_updateactorpic_command
ENDM

	enum anim_minimize_command ; $e9
MACRO anim_minimize
	db anim_minimize_command
ENDM

	enum skip ; $ea
	enum skip ; $eb
	enum skip ; $ec
	enum skip ; $ed

	enum anim_if_param_and_command ; $ee
MACRO anim_if_param_and
	db anim_if_param_and_command
	assert (BANK(@) == BANK(\2)) || !BANK(\2), "Jumping to animation in another bank"
	db \1 ; value
	dw \2 ; address
ENDM

	enum anim_jumpuntil_command ; $ef
MACRO anim_jumpuntil
	db anim_jumpuntil_command
	dw \1 ; address
ENDM

	enum anim_bgeffect_command ; $f0
MACRO anim_bgeffect
	db anim_bgeffect_command
	db \1 ; effect
	db \2 ; jumptable index
	db \3 ; battle turn
	db \4 ; unknown
ENDM

	enum anim_bgp_command ; $f1
MACRO anim_bgp
	db anim_bgp_command
	db \1 ; colors
ENDM

	enum anim_obp0_command ; $f2
MACRO anim_obp0
	db anim_obp0_command
	db \1 ; colors
ENDM

	enum anim_obp1_command ; $f3
MACRO anim_obp1
	db anim_obp1_command
	db \1 ; colors
ENDM

	enum anim_keepsprites_command ; $f4
MACRO anim_keepsprites
	db anim_keepsprites_command
ENDM

	enum anim_clearenemyhud_command ; $f5
MACRO anim_clearenemyhud
	db anim_clearenemyhud_command
ENDM

	enum anim_obj_command ; $f6
	enum anim_obj_command_100 ; $f7
MACRO anim_obj
	assert _NARG <= 4, "6-argument anim_obj is no longer supported!"
	assert ((\1) >= 0) && ((\1) < $200), "ANIM_OBJ constant out of range"
	db anim_obj_command | HIGH(\1)
	db LOW(\1) ; object
	db \2 ; x
	db \3 ; y
	db \4 ; param
ENDM

	enum anim_if_param_equal_command ; $f8
MACRO anim_if_param_equal
	db anim_if_param_equal_command
	assert (BANK(@) == BANK(\2)) || !BANK(\2), "Jumping to animation in another bank"
	db \1 ; value
	dw \2 ; address
ENDM

	enum anim_setvar_command ; $f9
MACRO anim_setvar
	db anim_setvar_command
	db \1 ; value
ENDM

	enum anim_incvar_command ; $fa
MACRO anim_incvar
	db anim_incvar_command
ENDM

	enum anim_if_var_equal_command ; $fb
MACRO anim_if_var_equal
	db anim_if_var_equal_command
	assert (BANK(@) == BANK(\2)) || !BANK(\2), "Jumping to animation in another bank"
	db \1 ; value
	dw \2 ; address
ENDM

	enum anim_jump_command ; $fc
MACRO anim_jump
	db anim_jump_command
	assert (BANK(@) == BANK(\1)) || !BANK(\1), "Jumping to animation in another bank"
	dw \1 ; address
ENDM

	enum anim_loop_command ; $fd
MACRO anim_loop
	db anim_loop_command
	db \1 ; count
	dw \2 ; address
ENDM

	enum anim_call_command ; $fe
MACRO anim_call
	db anim_call_command
	assert (BANK(@) == BANK(\1)) || !BANK(\1), "Calling animation in another bank"
	dw \1 ; address
ENDM

	enum anim_ret_command ; $ff
MACRO anim_ret
	db anim_ret_command
ENDM
