SpecialAnimations:
	dw BattleAnim_ThrowPokeBall  ; -16
	dw BattleAnim_SendOutMon
	dw BattleAnim_ReturnMon
	dw BattleAnim_Confused
	dw BattleAnim_Slp
	dw BattleAnim_Brn
	dw BattleAnim_Psn            ; -10
	dw BattleAnim_Sap
	dw BattleAnim_Frz
	dw BattleAnim_Par
	dw BattleAnim_InLove
	dw BattleAnim_InSandstorm
	dw BattleAnim_InNightmare
	dw BattleAnim_InWhirlpool
	dw BattleAnim_Dummy          ;  -8
	dw BattleAnim_EnemyDamage
	dw BattleAnim_EnemyStatDown
	dw BattleAnim_PlayerStatDown
	dw BattleAnim_PlayerDamage
	dw BattleAnim_Wobble
	dw BattleAnim_Shake
	dw BattleAnim_HitConfusion

BattleAnim_ThrowPokeBall:
	anim_if_param_equal NO_ITEM, .TheTrainerBlockedTheBall
	anim_if_param_equal MASTER_BALL, .MasterBall
	anim_if_param_equal ULTRA_BALL, .UltraBall
	anim_if_param_equal GREAT_BALL, .GreatBall
	; any other ball
	anim_2gfx ANIM_GFX_POKE_BALL, ANIM_GFX_SMOKE
	anim_sound 6, 2, SFX_THROW_BALL
	anim_obj ANIM_OBJ_POKE_BALL, 68, 92, $40
	anim_wait 36
	anim_obj ANIM_OBJ_POKE_BALL, 136, 65, $0
	anim_setobj $2, $7
	anim_wait 16
	anim_sound 0, 1, SFX_BALL_POOF
	anim_obj ANIM_OBJ_BALL_POOF, 136, 64, $10
	anim_wait 16
	anim_jump .Shake

.TheTrainerBlockedTheBall:
	anim_2gfx ANIM_GFX_POKE_BALL, ANIM_GFX_HIT
	anim_sound 6, 2, SFX_THROW_BALL
	anim_obj ANIM_OBJ_POKE_BALL_BLOCKED, 64, 92, $20
	anim_wait 20
	anim_obj ANIM_OBJ_01, 112, 40, $0
	anim_wait 32
	anim_ret

.UltraBall:
	anim_2gfx ANIM_GFX_POKE_BALL, ANIM_GFX_SMOKE
	anim_sound 6, 2, SFX_THROW_BALL
	anim_obj ANIM_OBJ_POKE_BALL, 68, 92, $40
	anim_wait 36
	anim_obj ANIM_OBJ_POKE_BALL, 136, 65, $0
	anim_setobj $2, $7
	anim_wait 16
	anim_sound 0, 1, SFX_BALL_POOF
	anim_obj ANIM_OBJ_BALL_POOF, 136, 64, $10
	anim_wait 16
	anim_jump .Shake

.GreatBall:
	anim_2gfx ANIM_GFX_POKE_BALL, ANIM_GFX_SMOKE
	anim_sound 6, 2, SFX_THROW_BALL
	anim_obj ANIM_OBJ_POKE_BALL, 68, 92, $40
	anim_wait 36
	anim_obj ANIM_OBJ_POKE_BALL, 136, 65, $0
	anim_setobj $2, $7
	anim_wait 16
	anim_sound 0, 1, SFX_BALL_POOF
	anim_obj ANIM_OBJ_BALL_POOF, 136, 64, $10
	anim_wait 16
	anim_jump .Shake

.MasterBall:
	anim_3gfx ANIM_GFX_POKE_BALL, ANIM_GFX_SMOKE, ANIM_GFX_SPEED
	anim_sound 6, 2, SFX_THROW_BALL
	anim_obj ANIM_OBJ_POKE_BALL, 64, 92, $20
	anim_wait 36
	anim_obj ANIM_OBJ_POKE_BALL, 136, 65, $0
	anim_setobj $2, $7
	anim_wait 16
	anim_sound 0, 1, SFX_BALL_POOF
	anim_obj ANIM_OBJ_BALL_POOF, 136, 64, $10
	anim_wait 24
	anim_sound 0, 1, SFX_MASTER_BALL
	anim_obj ANIM_OBJ_MASTER_BALL_SPARKLE, 136, 56, $30
	anim_obj ANIM_OBJ_MASTER_BALL_SPARKLE, 136, 56, $31
	anim_obj ANIM_OBJ_MASTER_BALL_SPARKLE, 136, 56, $32
	anim_obj ANIM_OBJ_MASTER_BALL_SPARKLE, 136, 56, $33
	anim_obj ANIM_OBJ_MASTER_BALL_SPARKLE, 136, 56, $34
	anim_obj ANIM_OBJ_MASTER_BALL_SPARKLE, 136, 56, $35
	anim_obj ANIM_OBJ_MASTER_BALL_SPARKLE, 136, 56, $36
	anim_obj ANIM_OBJ_MASTER_BALL_SPARKLE, 136, 56, $37
	anim_wait 64
.Shake:
	anim_bgeffect ANIM_BG_RETURN_MON, $0, $0, $0
	anim_wait 8
	anim_incobj 2
	anim_wait 16
	anim_sound 0, 1, SFX_CHANGE_DEX_MODE
	anim_incobj 1
	anim_wait 32
	anim_sound 0, 1, SFX_BALL_BOUNCE
	anim_wait 32
	anim_wait 32
	anim_wait 32
	anim_wait 8
	anim_setvar $0
.Loop:
	anim_wait 48
	anim_checkpokeball
	anim_if_var_equal $1, .Click
	anim_if_var_equal $2, .BreakFree
	anim_incobj 1
	anim_sound 0, 1, SFX_BALL_WOBBLE
	anim_jump .Loop

.Click:
	anim_keepsprites
	anim_ret

.BreakFree:
	anim_setobj $1, $b
	anim_sound 0, 1, SFX_BALL_POOF
	anim_obj ANIM_OBJ_BALL_POOF, 136, 64, $10
	anim_wait 2
	anim_bgeffect ANIM_BG_ENTER_MON, $0, $0, $0
	anim_wait 32
	anim_ret

BattleAnim_SendOutMon:
	anim_if_param_equal $0, .Normal
	anim_if_param_equal $1, .Shiny
	anim_if_param_equal $2, .Unknown
	anim_1gfx ANIM_GFX_SMOKE
	anim_call .TargetObj_1Row
	anim_bgeffect ANIM_BG_2B, $0, $1, $0
	anim_sound 0, 0, SFX_BALL_POOF
	anim_obj ANIM_OBJ_1B, 48, 96, $0
	anim_bgeffect ANIM_BG_ENTER_MON, $0, $1, $0
	anim_wait 132
	anim_jump .show_mon
	anim_ret

.Unknown:
	anim_1gfx ANIM_GFX_SMOKE
	anim_call .TargetObj_1Row
	anim_bgeffect ANIM_BG_2A, $0, $1, $0
	anim_wait 1
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_wait 4
	anim_sound 0, 0, SFX_BALL_POOF
	anim_obj ANIM_OBJ_1B, 48, 96, $0
	anim_incbgeffect ANIM_BG_2A
	anim_wait 96
	anim_incbgeffect ANIM_BG_2A
.show_mon
	anim_wait 1
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_wait 5
	anim_incobj 1
	anim_wait 1
	anim_ret

.Shiny:
	anim_1gfx ANIM_GFX_SPEED
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $3
	anim_bgeffect ANIM_BG_06, $0, $2, $0
	anim_sound 0, 0, SFX_SHINE
	anim_obj ANIM_OBJ_SHINY, 48, 96, $0
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj ANIM_OBJ_SHINY, 48, 96, $8
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj ANIM_OBJ_SHINY, 48, 96, $10
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj ANIM_OBJ_SHINY, 48, 96, $18
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj ANIM_OBJ_SHINY, 48, 96, $20
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj ANIM_OBJ_SHINY, 48, 96, $28
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj ANIM_OBJ_SHINY, 48, 96, $30
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj ANIM_OBJ_SHINY, 48, 96, $38
	anim_wait 32
	anim_ret

.Normal:
	anim_1gfx ANIM_GFX_SMOKE
	anim_sound 0, 0, SFX_BALL_POOF
	anim_obj ANIM_OBJ_BALL_POOF, 44, 96, $0
	anim_wait 4
	anim_bgeffect ANIM_BG_ENTER_MON, $0, $1, $0
	anim_wait 32
	anim_ret

.TargetObj_1Row
	anim_battlergfx_2row
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $0, $0
	anim_wait 6
	anim_ret

BattleAnim_ReturnMon:
	anim_sound 0, 0, SFX_BALL_POOF
	anim_bgeffect ANIM_BG_RETURN_MON, $0, $1, $0
	anim_wait 32
	anim_ret

BattleAnim_Confused:
	anim_1gfx ANIM_GFX_STATUS
	anim_sound 0, 0, SFX_KINESIS
	anim_obj ANIM_OBJ_CHICK, 44, 56, $15
	anim_obj ANIM_OBJ_CHICK, 44, 56, $aa
	anim_obj ANIM_OBJ_CHICK, 44, 56, $bf
	anim_wait 96
	anim_ret

BattleAnim_Slp:
	anim_1gfx ANIM_GFX_STATUS
	anim_sound 0, 0, SFX_TAIL_WHIP
.loop
	anim_obj ANIM_OBJ_ASLEEP, 64, 80, $0
	anim_wait 40
	anim_loop 3, .loop
	anim_wait 32
	anim_ret

BattleAnim_Brn:
	anim_1gfx ANIM_GFX_FIRE
.loop
	anim_sound 0, 0, SFX_BURN
	anim_obj ANIM_OBJ_BURNED, 56, 88, $10
	anim_wait 4
	anim_loop 3, .loop
	anim_wait 6
	anim_ret

BattleAnim_Psn:
	anim_1gfx ANIM_GFX_POISON
	anim_sound 0, 0, SFX_POISON
	anim_obj ANIM_OBJ_SKULL, 64, 56, $0
	anim_wait 8
	anim_sound 0, 0, SFX_POISON
	anim_obj ANIM_OBJ_SKULL, 48, 56, $0
	anim_wait 8
	anim_ret

BattleAnim_Sap:
	anim_1gfx ANIM_GFX_CHARGE
	anim_sound 6, 3, SFX_WATER_GUN
	anim_obj ANIM_OBJ_ABSORB, 128, 48, $2
	anim_wait 6
	anim_sound 6, 3, SFX_WATER_GUN
	anim_obj ANIM_OBJ_ABSORB, 136, 64, $3
	anim_wait 6
	anim_sound 6, 3, SFX_WATER_GUN
	anim_obj ANIM_OBJ_ABSORB, 136, 32, $4
	anim_wait 16
	anim_ret

BattleAnim_Frz:
	anim_1gfx ANIM_GFX_ICE
	anim_obj ANIM_OBJ_FROZEN, 44, 110, $0
	anim_sound 0, 0, SFX_SHINE
	anim_wait 16
	anim_sound 0, 0, SFX_SHINE
	anim_wait 16
	anim_ret

BattleAnim_Par:
	anim_1gfx ANIM_GFX_STATUS
	anim_bgeffect ANIM_BG_06, $0, $2, $0
	anim_sound 0, 0, SFX_THUNDERSHOCK
	anim_obj ANIM_OBJ_PARALYZED, 20, 88, $42
	anim_obj ANIM_OBJ_PARALYZED, 76, 88, $c2
	anim_wait 128
	anim_ret

BattleAnim_InLove:
	anim_1gfx ANIM_GFX_OBJECTS
	anim_sound 0, 0, SFX_LICK
	anim_obj ANIM_OBJ_HEART, 64, 76, $0
	anim_wait 32
	anim_sound 0, 0, SFX_LICK
	anim_obj ANIM_OBJ_HEART, 36, 72, $0
	anim_wait 32
	anim_ret

BattleAnim_InSandstorm:
	anim_1gfx ANIM_GFX_POWDER
	anim_obj ANIM_OBJ_SANDSTORM, 88, 0, $0
	anim_wait 8
	anim_obj ANIM_OBJ_SANDSTORM, 72, 0, $1
	anim_wait 8
	anim_obj ANIM_OBJ_SANDSTORM, 56, 0, $2
.loop
	anim_sound 0, 1, SFX_MENU
	anim_wait 8
	anim_loop 6, .loop
	anim_wait 8
	anim_ret

BattleAnim_InNightmare:
	anim_1gfx ANIM_GFX_ANGELS
	anim_sound 0, 0, SFX_BUBBLEBEAM
	anim_obj ANIM_OBJ_IN_NIGHTMARE, 68, 80, $0
	anim_wait 40
	anim_ret

BattleAnim_InWhirlpool:
	anim_1gfx ANIM_GFX_WIND
	anim_bgeffect ANIM_BG_WHIRLPOOL, $0, $0, $0
	anim_sound 0, 1, SFX_SURF
.loop
	anim_obj ANIM_OBJ_GUST, 132, 72, $0
	anim_wait 6
	anim_loop 6, .loop
	anim_incbgeffect ANIM_BG_WHIRLPOOL
	anim_wait 1
	anim_ret

BattleAnim_EnemyDamage:
.loop
	anim_bgeffect ANIM_BG_HIDE_MON, $0, $0, $0
	anim_wait 5
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_wait 5
	anim_loop 3, .loop
	anim_ret

BattleAnim_EnemyStatDown:
	anim_battlergfx_2row
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $1, $0
	anim_wait 6
	anim_bgeffect ANIM_BG_VIBRATE_MON, $0, $0, $0
	anim_jump BattleAnim_PlayerStatDown.show_mon

BattleAnim_PlayerStatDown:
	anim_battlergfx_2row
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $1, $0
	anim_wait 6
	anim_bgeffect ANIM_BG_WOBBLE_MON, $0, $0, $0
.show_mon
	anim_wait 41
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_wait 4
	anim_incobj 1
	anim_wait 2
	anim_ret

BattleAnim_PlayerDamage:
	anim_bgeffect ANIM_BG_20, $20, $2, $20
	anim_wait 40
	anim_ret

BattleAnim_Wobble:
	anim_bgeffect ANIM_BG_35, $0, $0, $0
	anim_wait 40
	anim_ret

BattleAnim_Shake:
	anim_bgeffect ANIM_BG_1F, $20, $2, $40
	anim_wait 40
	anim_ret

BattleAnim_HitConfusion:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 0, SFX_POUND
	anim_obj ANIM_OBJ_04, 44, 96, $0
	anim_wait 16
	anim_ret
