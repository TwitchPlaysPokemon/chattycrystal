MoveAnimations2:
	dw BattleAnim_Scald        ; 14f
	dw BattleAnim_Bulldoze     ; 150
	dw BattleAnim_WorkUp
	dw BattleAnim_DualChop
	dw BattleAnim_HornLeech
	dw BattleAnim_SteamRoller
	dw BattleAnim_TailSlap
	dw BattleAnim_BlueFlare
	dw BattleAnim_FreezeDry
	dw BattleAnim_DrainingKiss ; 158
	dw BattleAnim_PlayRough
	dw BattleAnim_MoonBlast
	dw BattleAnim_DazzlingGleam
	dw BattleAnim_Nuzzle
	dw BattleAnim_IceHammer
	dw BattleAnim_PollenPuff
	dw BattleAnim_PowerTrip

BattleAnim_Scald:
	anim_2gfx ANIM_GFX_MISC, ANIM_GFX_HIT, ANIM_GFX_HAZE
	anim_bgp $90
	anim_sound 0, 1, SFX_SURF
	anim_obj ANIM_OBJ_SCALD, 64, 88, $4
	anim_wait 4
	anim_obj ANIM_OBJ_SCALD, 64, 88, $4
	anim_wait 4
	anim_obj ANIM_OBJ_SCALD, 64, 88, $4
	anim_wait 4
.loop
	anim_obj ANIM_OBJ_WATER_HIT, 136, 52, $0
	anim_obj ANIM_OBJ_SCALD, 64, 88, $4
	anim_wait 4
	anim_loop 15, .loop
	anim_obj ANIM_OBJ_WATER_HIT, 136, 52, $0
	anim_wait 4
	anim_obj ANIM_OBJ_WATER_HIT, 136, 52, $0
	anim_wait 4
	anim_obj ANIM_OBJ_WATER_HIT, 136, 52, $0
	anim_wait 32
	anim_1gfx ANIM_GFX_HAZE
	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $0, $40
	anim_sound 0, 1, SFX_POISON_STING
.loop2
	anim_obj ANIM_OBJ_STEAM, 136, 52, $0
	anim_wait 8
	anim_loop 5, .loop2
	anim_wait 32
	anim_incbgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING
	anim_jump BattleAnim_ShowMon_1

BattleAnim_Bulldoze:
	anim_1gfx ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_2Row
	anim_bgeffect ANIM_BG_WITHDRAW, $0, $1, $50
	anim_wait 4
	anim_incbgeffect ANIM_BG_WITHDRAW
	anim_call BattleAnim_ShowMon_0
	anim_wait 1
.loop
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $08, $2, $0
	anim_sound 0, 1, SFX_SPARK
	anim_wait 8
	anim_loop 6, .loop
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $40, $2, $0
.loop2
	anim_sound 0, 1, SFX_SPARK
	anim_wait 4
	anim_loop 12, .loop2
	anim_wait 48
	anim_incbgeffect ANIM_BG_SHAKE_SCREEN_X
	anim_ret

BattleAnim_WorkUp:
	anim_1gfx ANIM_GFX_WIND
	anim_call BattleAnim_TargetObj_2Row
	anim_sound 0, 0, SFX_AEROBLAST
	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
.loop
	anim_bgeffect ANIM_BG_WITHDRAW, $0, $1, $50
	anim_wait 3
	anim_incbgeffect ANIM_BG_WITHDRAW
	anim_loop 16, .loop
	anim_wait 32
	anim_sound 0, 0, SFX_MENU
	anim_obj ANIM_OBJ_SWAGGER, 72, 88, $44
	anim_wait 32
	anim_jump BattleAnim_ShowMon_0

BattleAnim_DualChop:
	anim_1gfx ANIM_GFX_CUT
	anim_sound 0, 1, SFX_CUT
	anim_obj ANIM_OBJ_CUT_LONG_DOWN_LEFT, 152, 40, $0
	anim_sound 0, 1, SFX_VICEGRIP
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_wait 24
	anim_obj ANIM_OBJ_CUT_LONG_DOWN_RIGHT, 112, 40, $0
	anim_sound 0, 1, SFX_VICEGRIP
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_wait 32
	anim_ret

BattleAnim_HornLeech:
	anim_3gfx ANIM_GFX_HORN_LEECH, ANIM_GFX_HIT, ANIM_GFX_CHARGE
	anim_obj ANIM_OBJ_HORN_LEECH, 72, 80, $1
	anim_wait 16
	anim_sound 0, 1, SFX_HORN_ATTACK
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_setvar $0
.loop
	anim_sound 6, 3, SFX_WATER_GUN
	anim_obj ANIM_OBJ_BELLY_DRUM_NOTESORB, 128, 48, $2
	anim_wait 3
	anim_sound 6, 3, SFX_WATER_GUN
	anim_obj ANIM_OBJ_BELLY_DRUM_NOTESORB, 136, 64, $3
	anim_wait 4
	anim_sound 6, 3, SFX_WATER_GUN
	anim_obj ANIM_OBJ_BELLY_DRUM_NOTESORB, 136, 32, $4
	anim_wait 3
	anim_loop 6, .loop
	anim_wait 32
	anim_ret

BattleAnim_SteamRoller:
	anim_1gfx ANIM_GFX_S_ROLLER
	anim_obj ANIM_OBJ_S_ROLLER, 130, 56, $30
	anim_wait 18
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $4, $2, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_wait 30
	anim_clearobjs
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $55, $2, $0
	anim_obj ANIM_OBJ_S_ROLLER_SPIN, 130, 49, $30
.loop
	anim_sound 0, 1, SFX_SPARK
	anim_wait 8
	anim_loop 10, .loop
	anim_clearobjs
	anim_wait 16
	anim_ret

BattleAnim_TailSlap:
	anim_2gfx ANIM_GFX_WHIP, ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_2Row
	anim_bgeffect ANIM_BG_TACKLE, $0, $1, $0
	anim_wait 12
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_wait 1
	anim_incobj 1
	anim_sound 0, 1, SFX_DOUBLESLAP
	anim_obj ANIM_OBJ_VINE_WHIP2, 116, 48, $80
	anim_wait 4
	anim_obj ANIM_OBJ_VINE_WHIP1, 128, 54, $0
	anim_wait 8
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_BlueFlare:
	anim_1gfx ANIM_GFX_FIRE
	anim_bgeffect ANIM_BG_CYCLE_BGPALS_INVERTED, $0, $4, $0
.loop
	anim_sound 6, 2, SFX_EMBER
	anim_obj ANIM_OBJ_BLUE_FLARE_1, 64, 88, $63
	anim_wait 2
	anim_sound 6, 2, SFX_EMBER
	anim_obj ANIM_OBJ_BLUE_FLARE_1, 64, 80, $64
	anim_wait 2
	anim_sound 6, 2, SFX_EMBER
	anim_obj ANIM_OBJ_BLUE_FLARE_1, 64, 96, $63
	anim_wait 2
	anim_loop 3, .loop
	anim_wait 116
	anim_clearobjs
	anim_sound 0, 1, SFX_EMBER
	anim_obj ANIM_OBJ_BLUE_FLARE_2, 136, 56, $1
	anim_obj ANIM_OBJ_BLUE_FLARE_2, 136, 56, $2
	anim_obj ANIM_OBJ_BLUE_FLARE_2, 136, 56, $3
	anim_obj ANIM_OBJ_BLUE_FLARE_2, 136, 56, $4
	anim_obj ANIM_OBJ_BLUE_FLARE_2, 136, 56, $5
	anim_wait 64
	anim_ret

BattleAnim_FreezeDry:
	anim_obp0 $54
	anim_2gfx ANIM_GFX_HAZE, ANIM_GFX_ICE
	anim_sound 0, 0, SFX_SURF
.loop
	anim_obj ANIM_OBJ_MIST, 132, 16, $0
	anim_wait 8
	anim_loop 4, .loop
	anim_bgeffect ANIM_BG_WHITE_HUES, $0, $8, $0
	anim_wait 32
	anim_obj ANIM_OBJ_ICE_BUILDUP, 136, 74, $10
	anim_wait 128
	anim_sound 0, 1, SFX_SHINE
	anim_wait 8
	anim_sound 0, 1, SFX_SHINE
	anim_wait 24
	anim_ret

BattleAnim_DrainingKiss:
	anim_3gfx ANIM_GFX_OBJECTS, ANIM_GFX_CHARGE, ANIM_GFX_SHINE
	anim_sound 0, 1, SFX_SWEET_KISS
	anim_obj ANIM_OBJ_HEART, 120, 40, $0
	anim_wait 8
.loop
	anim_sound 0, 1, SFX_SWEET_KISS_2
	anim_obj ANIM_OBJ_DREAM_EATER, 128, 48, $2
	anim_wait 5
	anim_sound 0, 1, SFX_SWEET_KISS_2
	anim_obj ANIM_OBJ_DREAM_EATER, 136, 64, $3
	anim_wait 5
	anim_sound 0, 1, SFX_SWEET_KISS_2
	anim_obj ANIM_OBJ_DREAM_EATER, 136, 32, $4
	anim_wait 5
	anim_loop 5, .loop
	anim_wait 32
	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $0, $0
	anim_jump BattleAnimSub_Glimmer1

BattleAnim_PlayRough:
	anim_1gfx ANIM_GFX_SPEED
	anim_sound 6, 2, SFX_THROW_BALL
	anim_bgeffect ANIM_BG_HIDE_MON, $0, $1, $0
	anim_obj ANIM_OBJ_SPEED_LINE, 24, 88, $2
	anim_obj ANIM_OBJ_SPEED_LINE, 32, 88, $1
	anim_obj ANIM_OBJ_SPEED_LINE, 40, 88, $0
	anim_obj ANIM_OBJ_SPEED_LINE, 48, 88, $80
	anim_obj ANIM_OBJ_SPEED_LINE, 56, 88, $81
	anim_obj ANIM_OBJ_SPEED_LINE, 64, 88, $82
	anim_wait 12
	anim_3gfx ANIM_GFX_STARS, ANIM_GFX_HIT, ANIM_GFX_HEARTS
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $55, $2, $0
.loop
	anim_sound 0, 1, SFX_BONE_CLUB
	anim_obj ANIM_OBJ_STAR_BURST, 128, 48, $28
	anim_obj ANIM_OBJ_HIT_YFIX, 128, 48, $0
	anim_wait 3
	anim_obj ANIM_OBJ_HEART_BURST, 144, 64, $5c
	anim_wait 3
	anim_obj ANIM_OBJ_STAR_BURST, 144, 64, $10
	anim_obj ANIM_OBJ_HIT_YFIX, 144, 64, $0
	anim_wait 3
	anim_sound 0, 1, SFX_DOUBLESLAP
	anim_obj ANIM_OBJ_HEART_BURST, 120, 52, $e8
	anim_wait 3
	anim_obj ANIM_OBJ_STAR_BURST, 120, 52, $9c
	anim_obj ANIM_OBJ_HIT_YFIX, 120, 52, $0
	anim_wait 3
	anim_obj ANIM_OBJ_STAR_BURST, 152, 48, $d0
	anim_wait 3
	anim_sound 6, 2, SFX_SLUDGE_BOMB
	anim_obj ANIM_OBJ_HEART_BURST, 152, 48, $1c
	anim_obj ANIM_OBJ_HIT_YFIX, 152, 48, $0
	anim_wait 3
	anim_obj ANIM_OBJ_STAR_BURST, 136, 56, $50
	anim_wait 3
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_HEART_BURST, 136, 56, $dc
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 3
	anim_obj ANIM_OBJ_STAR_BURST, 128, 48, $90
	anim_loop 2, .loop
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_ret

BattleAnim_MoonBlast:
	anim_3gfx ANIM_GFX_MOON, ANIM_GFX_SHINE, ANIM_GFX_CHARGE
	anim_bgp $1b
	anim_obj ANIM_OBJ_MOON, 44, 104, $1
	anim_obj ANIM_OBJ_CHARGE, 44, 88, $30
	anim_obj ANIM_OBJ_CHARGE, 44, 88, $31
	anim_obj ANIM_OBJ_CHARGE, 44, 88, $32
	anim_obj ANIM_OBJ_CHARGE, 44, 88, $33
	anim_obj ANIM_OBJ_CHARGE, 44, 88, $34
	anim_obj ANIM_OBJ_CHARGE, 44, 88, $35
	anim_obj ANIM_OBJ_CHARGE, 44, 88, $36
	anim_obj ANIM_OBJ_CHARGE, 44, 88, $37
	anim_wait 1
	anim_sound 0, 0, SFX_MOONLIGHT
	anim_wait 96
	anim_clearobjs
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_bgeffect ANIM_BG_CYCLE_BGPALS_INVERTED, $0, $4, $0
	anim_sound 0, 0, SFX_GIGA_DRAIN
	anim_obj ANIM_OBJ_MOONBLAST, 64, 92, $14
	anim_wait 16
	anim_sound 0, 0, SFX_METRONOME
	anim_obj ANIM_OBJ_GLIMMER, 132, 28, $0
	anim_wait 5
	anim_obj ANIM_OBJ_GLIMMER, 112, 60, $0
	anim_wait 5
	anim_obj ANIM_OBJ_GLIMMER, 144, 68, $0
	anim_wait 32
	anim_ret

BattleAnim_DazzlingGleam:
	anim_1gfx ANIM_GFX_SPEED
	anim_sound 0, 1, SFX_MOONLIGHT
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $2, $0
	anim_obj ANIM_OBJ_DAZZLE, 44, 88, $0
	anim_obj ANIM_OBJ_DAZZLE, 44, 88, $8
	anim_obj ANIM_OBJ_DAZZLE, 44, 88, $10
	anim_obj ANIM_OBJ_DAZZLE, 44, 88, $18
	anim_obj ANIM_OBJ_DAZZLE, 44, 88, $20
	anim_obj ANIM_OBJ_DAZZLE, 44, 88, $28
	anim_obj ANIM_OBJ_DAZZLE, 44, 88, $30
	anim_obj ANIM_OBJ_DAZZLE, 44, 88, $38
	anim_wait 48
	anim_2gfx ANIM_GFX_HIT, ANIM_GFX_SHINE
	anim_incbgeffect ANIM_BG_ALTERNATE_HUES
	anim_sound 0, 1, SFX_FLASH
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $6, $20
	anim_wait 4
	anim_bgeffect ANIM_BG_CYCLE_MON_LIGHT_DARK_REPEATING, $0, $1, $20
	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_obj ANIM_OBJ_GLIMMER, 24, 64, $0
	anim_wait 5
	anim_obj ANIM_OBJ_GLIMMER, 56, 104, $0
	anim_wait 5
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 136, 56, $0
	anim_obj ANIM_OBJ_GLIMMER, 24, 104, $0
	anim_wait 5
	anim_obj ANIM_OBJ_GLIMMER, 56, 64, $0
	anim_wait 5
	anim_obj ANIM_OBJ_GLIMMER, 40, 84, $0
	anim_wait 5
	anim_wait 32
	anim_ret

BattleAnim_Nuzzle:
	anim_1gfx ANIM_GFX_LIGHTNING
	anim_call BattleAnim_TargetObj_2Row
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_sound 0, 0, SFX_ZAP_CANNON
	anim_obj ANIM_OBJ_SPARKS_CIRCLE_BIG, 44, 88, $0
	anim_wait 16
	anim_bgeffect ANIM_BG_WOBBLE_MON, $0, $1, $0
	anim_wait 28
	anim_incbgeffect ANIM_BG_WOBBLE_MON
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_wait 4
	anim_clearobjs
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
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
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $4, $10
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
	anim_bgeffect ANIM_BG_FADE_MON_TO_BLACK_REPEATING, $0, $1, $40
	anim_wait 64
	anim_incbgeffect ANIM_BG_FADE_MON_TO_BLACK_REPEATING
	anim_bgeffect ANIM_BG_TACKLE, $0, $1, $0
	anim_wait 4
	anim_sound 0, 1, SFX_BEAT_UP
	anim_obj ANIM_OBJ_HIT_YFIX, 128, 48, $0
	anim_wait 8
	anim_obj ANIM_OBJ_HIT_YFIX, 144, 56, $0
	anim_wait 8
	anim_jump BattleAnim_ShowMon_0
