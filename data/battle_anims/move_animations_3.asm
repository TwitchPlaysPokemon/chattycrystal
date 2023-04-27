MoveAnimations3:
	dw BattleAnim_CrystalBolt  ; 161
	dw BattleAnim_KnockOff
	dw BattleAnim_WaterSpout
	dw BattleAnim_NeedleArm
	dw BattleAnim_DracoMeteor
	dw BattleAnim_CalmMind
	dw BattleAnim_MudShot
	dw BattleAnim_Memento      ; 168
	dw BattleAnim_PoisonJab
	dw BattleAnim_DarkPulse
	dw BattleAnim_RockBlast
	dw BattleAnim_BrickBreak
	dw BattleAnim_HeatWave
	dw BattleAnim_LavaPlume
	dw BattleAnim_IceFang
	dw BattleAnim_ThunderFang  ; 170
	dw BattleAnim_XScissor
	dw BattleAnim_Hurricane
	dw BattleAnim_AquaTail
	dw BattleAnim_StoneEdge
	dw BattleAnim_HyperVoice
	dw BattleAnim_LeafBlade
	dw BattleAnim_EnergyBall
	dw BattleAnim_DrillRun   ; 178
	dw BattleAnim_Hex
	dw BattleAnim_ShadowClaw

BattleAnim_CrystalBolt:
	anim_2gfx ANIM_GFX_ICE, ANIM_GFX_LIGHTNING
	anim_sound 0, 0, SFX_ZAP_CANNON
.loop
	anim_obj ANIM_OBJ_CRYSTAL_BOLT_1, 48, 88, $30
	anim_wait 2
	anim_loop 10, .loop
	anim_wait 16
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $6, $20
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_sound 0, 1, SFX_THUNDER
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $28, $2, $0
.loop2
	anim_obj ANIM_OBJ_CRYSTAL_BOLT_2, 136, 68, $0
	anim_wait 8
	anim_obj ANIM_OBJ_CRYSTALS, 136, 72, $5c
	anim_obj ANIM_OBJ_CRYSTALS, 136, 72, $e8
	anim_obj ANIM_OBJ_CRYSTALS, 136, 72, $d0
	anim_obj ANIM_OBJ_CRYSTALS, 136, 72, $50
	anim_wait 8
	anim_loop 4, .loop2
	anim_wait 8
	anim_ret

BattleAnim_KnockOff:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 3, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_PALM, 136, 08, $0
	anim_wait 1
	anim_obj ANIM_OBJ_PALM, 136, 16, $0
	anim_wait 1
	anim_obj ANIM_OBJ_PALM, 136, 24, $0
	anim_wait 1
	anim_obj ANIM_OBJ_PALM, 136, 32, $0
	anim_wait 1
	anim_obj ANIM_OBJ_PALM, 136, 40, $0
	anim_wait 1
	anim_obj ANIM_OBJ_PALM, 136, 48, $0
	anim_wait 1
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_Y, $10, $1, $20
	anim_sound 0, 1, SFX_TACKLE
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 136, 48, $0
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 1
	anim_obj ANIM_OBJ_PALM, 136, 64, $0
	anim_wait 1
	anim_obj ANIM_OBJ_PALM, 136, 72, $0
	anim_wait 8
	anim_ret

BattleAnim_WaterSpout:
	anim_2gfx ANIM_GFX_WATER, ANIM_GFX_HIT
.loop
	anim_sound 0, 0, SFX_WATER_GUN
	anim_obj ANIM_OBJ_WATER_SPOUT_1, 48, 96, $30
	anim_wait 2
	anim_obj ANIM_OBJ_WATER_SPOUT_1, 52, 96, $30
	anim_wait 2
	anim_sound 0, 0, SFX_WATER_GUN
	anim_obj ANIM_OBJ_WATER_SPOUT_1, 48, 96, $30
	anim_obj ANIM_OBJ_WATER_SPOUT_1, 46, 96, $30
	anim_wait 2
	anim_sound 0, 0, SFX_WATER_GUN
	anim_obj ANIM_OBJ_WATER_SPOUT_1, 48, 96, $30
	anim_wait 2
	anim_obj ANIM_OBJ_WATER_SPOUT_1, 54, 96, $30
	anim_wait 2
	anim_sound 0, 0, SFX_WATER_GUN
	anim_obj ANIM_OBJ_WATER_SPOUT_1, 48, 96, $30
	anim_wait 2
	anim_loop 3, .loop
	anim_wait 32
	anim_sound 0, 0, SFX_BUBBLEBEAM
	anim_obj ANIM_OBJ_WATER_SPOUT_2, 108, 10, $6
	anim_wait 2
	anim_obj ANIM_OBJ_WATER_SPOUT_2, 156, 10, $6
	anim_wait 2
	anim_obj ANIM_OBJ_WATER_SPOUT_2, 116, 10, $6
	anim_wait 2
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $55, $1, $0
.loop2
	anim_obj ANIM_OBJ_WATER_HIT, 108, 68, $0
	anim_obj ANIM_OBJ_WATER_SPOUT_2, 150, 10, $6
	anim_wait 2
	anim_obj ANIM_OBJ_WATER_HIT, 156, 68, $0
	anim_obj ANIM_OBJ_WATER_SPOUT_2, 124, 10, $6
	anim_wait 2
	anim_obj ANIM_OBJ_WATER_HIT, 116, 68, $0
	anim_obj ANIM_OBJ_WATER_SPOUT_2, 140, 10, $6
	anim_wait 2
	anim_obj ANIM_OBJ_WATER_HIT, 150, 68, $0
	anim_obj ANIM_OBJ_WATER_SPOUT_2, 132, 10, $6
	anim_wait 2
	anim_obj ANIM_OBJ_WATER_HIT, 124, 68, $0
	anim_obj ANIM_OBJ_WATER_SPOUT_2, 108, 10, $6
	anim_wait 2
	anim_obj ANIM_OBJ_WATER_HIT, 140, 68, $0
	anim_obj ANIM_OBJ_WATER_SPOUT_2, 156, 10, $6
	anim_wait 2
	anim_obj ANIM_OBJ_WATER_HIT, 132, 68, $0
	anim_obj ANIM_OBJ_WATER_SPOUT_2, 116, 10, $6
	anim_wait 2
	anim_loop 2, .loop2
	anim_obj ANIM_OBJ_WATER_HIT, 108, 68, $0
	anim_wait 2
	anim_obj ANIM_OBJ_WATER_HIT, 156, 68, $0
	anim_wait 2
	anim_obj ANIM_OBJ_WATER_HIT, 116, 68, $0
	anim_wait 2
	anim_wait 32
	anim_ret

BattleAnim_NeedleArm:
	anim_2gfx ANIM_GFX_HORN, ANIM_GFX_HIT
	anim_obj ANIM_OBJ_LONG_PUNCH, 136, 56, $0
.loop
	anim_sound 0, 1, SFX_MEGA_PUNCH
	anim_obj ANIM_OBJ_NEEDLE_ARM_N, 136, 56, $30
	anim_obj ANIM_OBJ_NEEDLE_ARM_NE, 136, 56, $38
	anim_obj ANIM_OBJ_NEEDLE_ARM_E, 136, 56, $0
	anim_obj ANIM_OBJ_NEEDLE_ARM_SE, 136, 56, $8
	anim_obj ANIM_OBJ_NEEDLE_ARM_S, 136, 56, $10
	anim_obj ANIM_OBJ_NEEDLE_ARM_SW, 136, 56, $18
	anim_obj ANIM_OBJ_NEEDLE_ARM_W, 136, 56, $20
	anim_obj ANIM_OBJ_NEEDLE_ARM_NW, 136, 56, $28
	anim_wait 8
	anim_sound 0, 1, SFX_POISON_STING
	anim_loop 6, .loop
	anim_wait 32
	anim_ret

BattleAnim_DracoMeteor:
	anim_3gfx ANIM_GFX_METEOR, ANIM_GFX_EXPLOSION, ANIM_GFX_WATER
	anim_bgp $1b
	anim_sound 0, 1, SFX_MORNING_SUN
	anim_obj ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 8
	anim_obj ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 8
	anim_obj ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 64
	anim_clearobjs
	anim_obj ANIM_OBJ_METEOR, 88, 0, $2
	anim_wait 12
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $8, $3, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 150, 64, $0
	anim_wait 8
	anim_obj ANIM_OBJ_METEOR, 72, 0, $2
	anim_wait 12
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $8, $3, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 134, 64, $0
	anim_wait 4
	anim_obj ANIM_OBJ_METEOR, 96, 0, $2
	anim_wait 12
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $3, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 158, 64, $0
	anim_wait 4
	anim_obj ANIM_OBJ_METEOR, 76, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 138, 64, $0
	anim_obj ANIM_OBJ_METEOR, 84, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 146, 64, $0
	anim_obj ANIM_OBJ_METEOR, 96, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 158, 64, $0
	anim_obj ANIM_OBJ_METEOR, 76, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 138, 64, $0
	anim_obj ANIM_OBJ_METEOR, 84, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 146, 64, $0
	anim_wait 32
	anim_ret

BattleAnim_CalmMind:
	anim_1gfx ANIM_GFX_MISC
	anim_bgp $1b
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_sound 0, 0, SFX_GAME_FREAK_LOGO_GS
.loop
	anim_obj ANIM_OBJ_MIND_READER, 48, 88, $3
	anim_obj ANIM_OBJ_MIND_READER, 48, 88, $12
	anim_obj ANIM_OBJ_MIND_READER, 48, 88, $20
	anim_obj ANIM_OBJ_MIND_READER, 48, 88, $31
	anim_wait 8
	anim_obj ANIM_OBJ_MIND_READER, 48, 88, $3
	anim_obj ANIM_OBJ_MIND_READER, 48, 88, $12
	anim_obj ANIM_OBJ_MIND_READER, 48, 88, $20
	anim_obj ANIM_OBJ_MIND_READER, 48, 88, $31
	anim_wait 42
	anim_clearobjs
	anim_loop 2, .loop
	anim_ret

BattleAnim_MudShot:
	anim_1gfx ANIM_GFX_POISON
.loop
	anim_sound 6, 2, SFX_BUBBLEBEAM
	anim_obj ANIM_OBJ_MUD_SHOT, 64, 92, $4
	anim_wait 4
	anim_obj ANIM_OBJ_MUD_SHOT, 64, 92, $4
	anim_wait 4
	anim_obj ANIM_OBJ_MUD_SPLASH, 136, 56, $5c
	anim_obj ANIM_OBJ_MUD_SPLASH, 136, 56, $e8
	anim_obj ANIM_OBJ_MUD_SPLASH, 136, 56, $d0
	anim_obj ANIM_OBJ_MUD_SPLASH, 136, 56, $50
	anim_loop 8, .loop
	anim_wait 16
	anim_ret

BattleAnim_Memento:
	anim_1gfx ANIM_GFX_ANGELS
	anim_sound 6, 2, SFX_SLUDGE_BOMB
	anim_bgeffect ANIM_BG_FADE_MON_TO_BLACK_REPEATING, $0, $1, $40
	anim_wait 64
	anim_incbgeffect ANIM_BG_FADE_MON_TO_BLACK_REPEATING
	anim_bgp $1b
	anim_obp0 $f
	anim_obj ANIM_OBJ_SPITE, 124, 16, $0
	anim_sound 0, 1, SFX_SPITE
	anim_wait 96
	anim_ret

BattleAnim_PoisonJab:
	anim_3gfx ANIM_GFX_HORN, ANIM_GFX_HIT, ANIM_GFX_POISON
	anim_obp0 $ef
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $55, $1, $0
.loop
	anim_sound 0, 1, SFX_HORN_ATTACK
	anim_obj ANIM_OBJ_HIT_YFIX, 132, 40, $0
	anim_wait 8
	anim_sound 0, 1, SFX_HORN_ATTACK
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 8
	anim_sound 0, 1, SFX_HORN_ATTACK
	anim_obj ANIM_OBJ_HIT_YFIX, 126, 50, $0
	anim_wait 8
	anim_loop 3, .loop
	anim_clearobjs
	anim_obp0 $e4
.loop2
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_SLUDGE, 132, 72, $0
	anim_wait 8
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_SLUDGE, 116, 72, $0
	anim_wait 8
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_SLUDGE, 148, 72, $0
	anim_wait 8
	anim_loop 2, .loop2
	anim_wait 32
	anim_ret

BattleAnim_DarkPulse:
	anim_1gfx ANIM_GFX_CHARGE
	anim_bgeffect ANIM_BG_WHIRLPOOL, $0, $0, $0
	anim_bgp $1b
	anim_sound 0, 1, SFX_SPITE
	anim_obj ANIM_OBJ_DARK_PULSE, 44, 88, $0
	anim_obj ANIM_OBJ_DARK_PULSE, 44, 88, $8
	anim_obj ANIM_OBJ_DARK_PULSE, 44, 88, $10
	anim_obj ANIM_OBJ_DARK_PULSE, 44, 88, $18
	anim_obj ANIM_OBJ_DARK_PULSE, 44, 88, $20
	anim_obj ANIM_OBJ_DARK_PULSE, 44, 88, $28
	anim_obj ANIM_OBJ_DARK_PULSE, 44, 88, $30
	anim_obj ANIM_OBJ_DARK_PULSE, 44, 88, $38
	anim_incobj 1
	anim_incobj 2
	anim_incobj 3
	anim_incobj 4
	anim_incobj 5
	anim_incobj 6
	anim_incobj 7
	anim_incobj 8
	anim_wait 96
	anim_incbgeffect ANIM_BG_WHIRLPOOL
	anim_ret

BattleAnim_RockBlast:
	anim_2gfx ANIM_GFX_ROCKS, ANIM_GFX_HIT
	anim_sound 6, 2, SFX_SPARK
	anim_obj ANIM_OBJ_ROCK_BLAST, 64, 92, $4
	anim_wait 16
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $e8
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $d0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $50
	anim_wait 32
	anim_ret

BattleAnim_BrickBreak:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 6, 2, SFX_SHINE
	anim_obj ANIM_OBJ_VERTICAL_CHOP_STILL, 136, 24, $30
	anim_wait 16
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $55, $2, $0
	anim_wait 64
	anim_clearobjs
	anim_obj ANIM_OBJ_VERTICAL_CHOP, 136, 82, $30
	anim_wait 8
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $3
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 34
	anim_ret

BattleAnim_HeatWave:
	anim_2gfx ANIM_GFX_WIND, ANIM_GFX_FIRE
	anim_bgp $90
	anim_bgeffect ANIM_BG_WHIRLPOOL, $0, $0, $0
	anim_sound 0, 0, SFX_EMBER
.loop
	anim_obj ANIM_OBJ_HEAT_WAVE, 88, 0, $1
	anim_wait 8
	anim_obj ANIM_OBJ_HEAT_WAVE, 56, 16, $1
	anim_wait 8
	anim_obj ANIM_OBJ_HEAT_WAVE, 72, 32, $1
	anim_wait 8
	anim_obj ANIM_OBJ_HEAT_WAVE, 24, 48, $1
	anim_wait 8
	anim_obj ANIM_OBJ_HEAT_WAVE, 40, 64, $1
	anim_loop 3, .loop
	anim_incbgeffect ANIM_BG_WHIRLPOOL
	anim_ret

BattleAnim_LavaPlume:
	anim_1gfx ANIM_GFX_FIRE
	anim_battlergfx_2row
	anim_sound 6, 2, SFX_EMBER
	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $2, $0
.loop
	anim_obj ANIM_OBJ_LAVA_PLUME, 48, 96, $38
	anim_wait 1
	anim_obj ANIM_OBJ_LAVA_PLUME, 48, 96, $10
	anim_wait 1
	anim_obj ANIM_OBJ_LAVA_PLUME, 48, 96, $36
	anim_wait 1
	anim_obj ANIM_OBJ_LAVA_PLUME, 48, 96, $4
	anim_wait 1
	anim_obj ANIM_OBJ_LAVA_PLUME, 48, 96, $18
	anim_wait 1
	anim_obj ANIM_OBJ_LAVA_PLUME, 48, 96, $28
	anim_wait 1
	anim_obj ANIM_OBJ_LAVA_PLUME, 48, 96, $40
	anim_wait 1
	anim_obj ANIM_OBJ_LAVA_PLUME, 48, 96, $32
	anim_wait 1
	anim_obj ANIM_OBJ_LAVA_PLUME, 48, 96, $20
	anim_wait 1
	anim_obj ANIM_OBJ_LAVA_PLUME, 48, 96, $30
	anim_wait 1
	anim_obj ANIM_OBJ_LAVA_PLUME, 48, 96, $0
	anim_wait 1
	anim_obj ANIM_OBJ_LAVA_PLUME, 48, 96, $24
	anim_wait 1
	anim_obj ANIM_OBJ_LAVA_PLUME, 48, 96, $8
	anim_wait 1
	anim_loop 2, .loop
	anim_wait 32
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $1, $0
	anim_wait 1
	anim_bgeffect ANIM_BG_VIBRATE_MON, $0, $0, $0
	anim_obj ANIM_OBJ_FIRE_BLAST, 136, 48, $1
	anim_obj ANIM_OBJ_FIRE_BLAST, 136, 48, $4
	anim_obj ANIM_OBJ_FIRE_BLAST, 136, 48, $5
.loop2
	anim_sound 0, 0, SFX_BURN
	anim_wait 4
	anim_loop 3, .loop2
	anim_wait 32
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_ret

BattleAnim_IceFang:
	anim_3gfx ANIM_GFX_CUT, ANIM_GFX_HIT, ANIM_GFX_ICE
	anim_obj ANIM_OBJ_BITE, 136, 56, $98
	anim_obj ANIM_OBJ_BITE, 136, 56, $18
	anim_wait 8
	anim_sound 0, 1, SFX_BITE
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $14, $2, $0
	anim_wait 4
	anim_clearobjs
	anim_sound 0, 1, SFX_SHINE
	anim_obj ANIM_OBJ_ICE, 128, 42, $0
	anim_wait 6
	anim_sound 0, 1, SFX_SHINE
	anim_obj ANIM_OBJ_ICE, 144, 70, $0
	anim_wait 6
	anim_sound 0, 1, SFX_SHINE
	anim_obj ANIM_OBJ_ICE, 120, 56, $0
	anim_wait 6
	anim_sound 0, 1, SFX_SHINE
	anim_obj ANIM_OBJ_ICE, 152, 56, $0
	anim_wait 6
	anim_sound 0, 1, SFX_SHINE
	anim_obj ANIM_OBJ_ICE, 144, 42, $0
	anim_wait 6
	anim_sound 0, 1, SFX_SHINE
	anim_obj ANIM_OBJ_ICE, 128, 70, $0
	anim_ret

BattleAnim_ThunderFang:
	anim_3gfx ANIM_GFX_CUT, ANIM_GFX_HIT, ANIM_GFX_LIGHTNING
	anim_obj ANIM_OBJ_BITE, 136, 56, $98
	anim_obj ANIM_OBJ_BITE, 136, 56, $18
	anim_wait 8
	anim_sound 0, 1, SFX_BITE
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $14, $2, $0
	anim_wait 4
	anim_clearobjs
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $8, $2
	anim_sound 0, 1, SFX_THUNDER
	anim_obj ANIM_OBJ_THUNDER3, 152, 68, $0
	anim_wait 32
	anim_ret

BattleAnim_XScissor:
	anim_1gfx ANIM_GFX_CUT
	anim_sound 0, 1, SFX_CUT
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $08, $2, $0
	anim_obj ANIM_OBJ_CUT_LONG_DOWN_LEFT, 150, 40, $0
	anim_obj ANIM_OBJ_CUT_LONG_DOWN_RIGHT, 118, 40, $0
	anim_wait 32
	anim_ret

BattleAnim_Hurricane:
	anim_2gfx ANIM_GFX_WIND, ANIM_GFX_HIT
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $90, $4, $10
	anim_obp0 $30
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $6, $20
.loop
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_GUST, 136, 72, $0
	anim_wait 4
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_wait 4
	anim_loop 12, .loop
	anim_obj ANIM_OBJ_HIT_YFIX, 144, 64, $18
	anim_wait 8
	anim_obj ANIM_OBJ_HIT_YFIX, 128, 32, $18
	anim_wait 16
	anim_ret

BattleAnim_AquaTail:
	anim_1gfx ANIM_GFX_BUBBLE
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_RISING_BUBBLE, 64, 104, $0
	anim_wait 16
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_RISING_BUBBLE, 32, 104, $0
	anim_wait 16
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_RISING_BUBBLE, 48, 104, $0
	anim_wait 32
	anim_clearobjs
	anim_wait 1
	anim_call BattleAnim_TargetObj_1Row
	anim_2gfx ANIM_GFX_HIT, ANIM_GFX_SAND
	anim_bgeffect ANIM_BG_WOBBLE_MON, $0, $1, $0
	anim_wait 16
	anim_sound 0, 1, SFX_BUBBLEBEAM
	anim_obj ANIM_OBJ_AQUA_TAIL, 104, 60, $0
	anim_wait 1
	anim_obj ANIM_OBJ_AQUA_TAIL, 112, 60, $0
	anim_wait 1
	anim_obj ANIM_OBJ_AQUA_TAIL, 120, 60, $0
	anim_wait 1
	anim_obj ANIM_OBJ_AQUA_TAIL, 128, 60, $0
	anim_wait 1
	anim_obj ANIM_OBJ_AQUA_TAIL, 136, 60, $0
	anim_wait 1
	anim_obj ANIM_OBJ_AQUA_TAIL, 144, 60, $0
	anim_wait 1
	anim_obj ANIM_OBJ_AQUA_TAIL, 152, 60, $0
	anim_wait 1
	anim_obj ANIM_OBJ_AQUA_TAIL, 160, 60, $0
	anim_wait 8
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_sound 0, 1, SFX_MEGA_KICK
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 136, 48, $0
	anim_wait 16
	anim_incbgeffect ANIM_BG_WOBBLE_MON
	anim_jump BattleAnim_ShowMon_0

BattleAnim_StoneEdge:
	anim_2gfx ANIM_GFX_HIT, ANIM_GFX_ROCKS
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 156, 72, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 152, 72, $8
	anim_wait 1
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 128, 72, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 108, 72, $8
	anim_wait 1
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 112, 72, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 148, 72, $8
	anim_wait 1
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 118, 72, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 136, 72, $8
	anim_wait 1
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 116, 72, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 144, 72, $8
	anim_wait 32
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_STONE_EDGE, 156, 72, $8
	anim_wait 2
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $55, $1, $0
	anim_obj ANIM_OBJ_STONE_EDGE, 152, 72, $8
	anim_wait 2
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_STONE_EDGE, 128, 72, $8
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 120, 40, $0
	anim_wait 2
	anim_obj ANIM_OBJ_STONE_EDGE, 108, 72, $8
	anim_wait 2
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_STONE_EDGE, 112, 72, $8
	anim_wait 2
	anim_obj ANIM_OBJ_STONE_EDGE, 148, 72, $8
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 152, 48, $0
	anim_wait 2
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_STONE_EDGE, 118, 72, $8
	anim_wait 2
	anim_obj ANIM_OBJ_STONE_EDGE, 136, 72, $8
	anim_wait 2
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_STONE_EDGE, 116, 72, $8
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 136, 56, $0
	anim_wait 2
	anim_obj ANIM_OBJ_STONE_EDGE, 144, 72, $8
	anim_wait 32
	anim_ret

BattleAnim_HyperVoice:
	anim_2gfx ANIM_GFX_NOISE, ANIM_GFX_PSYCHIC
.loop
	anim_cry $0
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $30, $2, $0
	anim_obj ANIM_OBJ_SOUND, 64, 76, $0
	anim_obj ANIM_OBJ_SOUND, 64, 88, $1
	anim_obj ANIM_OBJ_SOUND, 64, 100, $2
	anim_obj ANIM_OBJ_HYPER_VOICE, 64, 88, $2
	anim_wait 2
	anim_obj ANIM_OBJ_HYPER_VOICE, 64, 88, $2
	anim_wait 28
	anim_obj ANIM_OBJ_SOUND, 64, 76, $0
	anim_obj ANIM_OBJ_SOUND, 64, 88, $1
	anim_obj ANIM_OBJ_SOUND, 64, 100, $2
	anim_wait 28
	anim_loop 2, .loop
	anim_wait 8
	anim_ret

BattleAnim_LeafBlade:
	anim_2gfx ANIM_GFX_CUT, ANIM_GFX_PLANT
	anim_sound 0, 1, SFX_CUT
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $08, $2, $0
	anim_obj ANIM_OBJ_CUT_LONG_DOWN_LEFT, 150, 40, $0
	anim_obj ANIM_OBJ_RAZOR_LEAF, 136, 40, $28
	anim_obj ANIM_OBJ_RAZOR_LEAF, 136, 40, $d0
	anim_wait 32
	anim_sound 0, 1, SFX_CUT
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $08, $2, $0
	anim_obj ANIM_OBJ_CUT_LONG_DOWN_RIGHT, 118, 40, $0
	anim_obj ANIM_OBJ_RAZOR_LEAF, 136, 40, $10
	anim_obj ANIM_OBJ_RAZOR_LEAF, 136, 40, $dc
	anim_wait 32
	anim_sound 0, 1, SFX_CUT
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $08, $2, $0
	anim_obj ANIM_OBJ_AERIAL_ACE, 120, 68, $0
	anim_obj ANIM_OBJ_RAZOR_LEAF, 136, 40, $5c
	anim_obj ANIM_OBJ_RAZOR_LEAF, 136, 40, $90
	anim_wait 32
	anim_ret

BattleAnim_EnergyBall:
	anim_2gfx ANIM_GFX_HIT, ANIM_GFX_CHARGE
	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $2, $0
	anim_obj ANIM_OBJ_BELLY_DRUM_NOTESORB_CENTER, 44, 88, $0
	anim_obj ANIM_OBJ_ENERGY_BALL_1, 44, 88, $30
	anim_obj ANIM_OBJ_ENERGY_BALL_1, 44, 88, $31
	anim_obj ANIM_OBJ_ENERGY_BALL_1, 44, 88, $32
	anim_obj ANIM_OBJ_ENERGY_BALL_1, 44, 88, $33
	anim_obj ANIM_OBJ_ENERGY_BALL_1, 44, 88, $34
	anim_obj ANIM_OBJ_ENERGY_BALL_1, 44, 88, $35
	anim_obj ANIM_OBJ_ENERGY_BALL_1, 44, 88, $36
	anim_obj ANIM_OBJ_ENERGY_BALL_1, 44, 88, $37
.loop
	anim_sound 0, 0, SFX_WARP_TO
	anim_wait 16
	anim_loop 4, .loop
	anim_wait 32
	anim_clearobjs
	anim_sound 0, 1, SFX_SWEET_SCENT
	anim_obj ANIM_OBJ_ENERGY_BALL_2, 64, 92, $2
	anim_wait 32
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_GREEN_HIT, 128, 40, $0
	anim_wait 4
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_GREEN_HIT, 144, 48, $0
	anim_wait 4
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_GREEN_HIT, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_DrillRun:
	anim_2gfx ANIM_GFX_DRILL, ANIM_GFX_HIT
	anim_obj ANIM_OBJ_DRILL, 72, 80, $4
	anim_wait 8
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $50, $1, $0
.loop
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_DRILL_HIT, 128, 48, $0
	anim_wait 2
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_DRILL_HIT, 132, 44, $0
	anim_wait 2
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_DRILL_HIT, 136, 48, $0
	anim_wait 2
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_DRILL_HIT, 132, 52, $0
	anim_wait 2
	anim_loop 6, .loop
	anim_clearobjs
	anim_wait 16
	anim_ret

BattleAnim_Hex:
	anim_2gfx ANIM_GFX_FIRE, ANIM_GFX_SPEED
	anim_battlergfx_2row
	anim_bgp $f8
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $1, $0
	anim_wait 8
	anim_sound 6, 2, SFX_SLUDGE_BOMB
	anim_bgeffect ANIM_BG_VIBRATE_MON, $0, $0, $0
	anim_wait 40
	anim_bgp $1b
	anim_sound 0, 0, SFX_SPITE
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_obj ANIM_OBJ_HEX_FLAME, 128, 54, $10
	anim_obj ANIM_OBJ_HEX_FLAME, 144, 38, $90
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $55, $1, $0
.loop
	anim_obj ANIM_OBJ_HEX, 136, 72, $6
	anim_wait 2
	anim_obj ANIM_OBJ_HEX, 128, 72, $6
	anim_wait 2
	anim_obj ANIM_OBJ_HEX, 144, 72, $8
	anim_wait 2
	anim_obj ANIM_OBJ_HEX, 120, 72, $8
	anim_wait 2
	anim_obj ANIM_OBJ_HEX, 152, 72, $6
	anim_wait 2
	anim_obj ANIM_OBJ_HEX, 112, 72, $8
	anim_wait 2
	anim_obj ANIM_OBJ_HEX, 160, 72, $8
	anim_wait 2
	anim_loop 3, .loop
	anim_wait 8
	anim_wait 16
	anim_ret

BattleAnim_ShadowClaw:
	anim_2gfx ANIM_GFX_CUT, ANIM_GFX_SPEED
	anim_obp0 $ef
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $14, $2, $0
	anim_bgeffect ANIM_BG_BLACK_HUES, $0, $8, $0
	anim_sound 0, 1, SFX_CUT
	anim_obj ANIM_OBJ_CUT_DOWN_LEFT, 144, 48, $0
	anim_obj ANIM_OBJ_CUT_DOWN_LEFT, 140, 44, $0
	anim_obj ANIM_OBJ_CUT_DOWN_LEFT, 136, 40, $0
	anim_wait 4
	anim_obj ANIM_OBJ_RED_STAR, 136, 56, $5c
	anim_obj ANIM_OBJ_RED_STAR, 136, 56, $e8
	anim_obj ANIM_OBJ_RED_STAR, 136, 56, $d0
	anim_obj ANIM_OBJ_RED_STAR, 136, 56, $50
	anim_wait 32
	anim_ret
