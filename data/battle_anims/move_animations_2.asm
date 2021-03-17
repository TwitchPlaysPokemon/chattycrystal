MoveAnimations2:
	dw BattleAnim_PollenPuff   ; 15e
	dw BattleAnim_PowerTrip

BattleAnim_PollenPuff:
	anim_2gfx ANIM_GFX_SMOKE, ANIM_GFX_MISC
	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $2, $0
	anim_sound 0, 0, SFX_SWEET_SCENT
	anim_obj ANIM_OBJ_POLLEN_PUFF, 64, 92, $10
	anim_wait 32
	anim_sound 0, 1, SFX_JUMP_OVER_LEDGE
	anim_obj ANIM_OBJ_BALL_POOF_YELLOW, 132, 56, $10
	anim_wait 24
	anim_ret

BattleAnim_PowerTrip:
	anim_1gfx ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_1Row
	anim_sound 0, 0, SFX_WARP_TO
	anim_bgeffect ANIM_BG_19, $0, $1, $40
	anim_wait 64
	anim_incbgeffect ANIM_BG_19
	anim_bgeffect ANIM_BG_TACKLE, $0, $1, $0
	anim_wait 4
	anim_sound 0, 1, SFX_BEAT_UP
	anim_obj ANIM_OBJ_01, 128, 48, $0
	anim_wait 8
	anim_obj ANIM_OBJ_01, 144, 56, $0
	anim_wait 8
	anim_jump BattleAnim_ShowMon_0
