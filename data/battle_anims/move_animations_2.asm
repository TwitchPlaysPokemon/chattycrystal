MoveAnimations2:
	dw BattleAnim_Nuzzle       ; 15c
	dw BattleAnim_IceHammer
	dw BattleAnim_PollenPuff
	dw BattleAnim_PowerTrip

BattleAnim_Nuzzle:
	anim_1gfx ANIM_GFX_LIGHTNING
	anim_call BattleAnim_TargetObj_2Row
	anim_sound 0, 0, SFX_ZAP_CANNON
	anim_obj ANIM_OBJ_31, 44, 88, $0
	anim_wait 16
	anim_bgeffect ANIM_BG_26, $0, $1, $0
	anim_wait 24
	anim_incbgeffect ANIM_BG_26
	anim_call BattleAnim_ShowMon_0
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $3
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_obj ANIM_OBJ_THUNDER_WAVE, 136, 56, $0
	anim_wait 16
	anim_incobj 3
	anim_wait 32
	anim_ret

BattleAnim_IceHammer:
	anim_2gfx ANIM_GFX_HIT, ANIM_GFX_ICE
	anim_obj ANIM_OBJ_HAMMER_ARM, 136, 68, $30
	anim_wait 18
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_bgeffect ANIM_BG_1F, $60, $4, $10
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_wait 12
	anim_call BattleAnimSub_Ice
	anim_wait 32
	anim_ret

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
