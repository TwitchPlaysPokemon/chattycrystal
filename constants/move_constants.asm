; move ids
; indexes for:
; - Moves (see data/moves/moves.asm)
; - MoveNames (see data/moves/names.asm)
; - MoveDescriptions (see data/moves/descriptions.asm)
; - BattleAnimations (see data/moves/animations.asm)
	const_def
	const NO_MOVE      ;   0
	const POUND        ;   1
	const KARATE_CHOP  ;   2
	const DOUBLESLAP   ;   3
	const COMET_PUNCH  ;   4
	const MEGA_PUNCH   ;   5
	const PAY_DAY      ;   6
	const FIRE_PUNCH   ;   7
	const ICE_PUNCH    ;   8
	const THUNDERPUNCH ;   9
	const SCRATCH      ;   a
	const VICEGRIP     ;   b
	const GUILLOTINE   ;   c
	const RAZOR_WIND   ;   d
	const SWORDS_DANCE ;   e
	const CUT          ;   f
	const GUST         ;  10
	const WING_ATTACK  ;  11
	const WHIRLWIND    ;  12
	const FLY          ;  13
	const BIND         ;  14
	const SLAM         ;  15
	const VINE_WHIP    ;  16
	const STOMP        ;  17
	const DOUBLE_KICK  ;  18
	const MEGA_KICK    ;  19
	const JUMP_KICK    ;  1a
	const ROLLING_KICK ;  1b
	const SAND_ATTACK  ;  1c
	const HEADBUTT     ;  1d
	const HORN_ATTACK  ;  1e
	const FURY_ATTACK  ;  1f
	const HORN_DRILL   ;  20
	const TACKLE       ;  21
	const BODY_SLAM    ;  22
	const WRAP         ;  23
	const TAKE_DOWN    ;  24
	const THRASH       ;  25
	const DOUBLE_EDGE  ;  26
	const TAIL_WHIP    ;  27
	const POISON_STING ;  28
	const TWINEEDLE    ;  29
	const PIN_MISSILE  ;  2a
	const LEER         ;  2b
	const BITE         ;  2c
	const GROWL        ;  2d
	const ROAR         ;  2e
	const SING         ;  2f
	const SUPERSONIC   ;  30
	const SONICBOOM    ;  31
	const DISABLE      ;  32
	const ACID         ;  33
	const EMBER        ;  34
	const FLAMETHROWER ;  35
	const MIST         ;  36
	const WATER_GUN    ;  37
	const HYDRO_PUMP   ;  38
	const SURF         ;  39
	const ICE_BEAM     ;  3a
	const BLIZZARD     ;  3b
	const PSYBEAM      ;  3c
	const BUBBLEBEAM   ;  3d
	const AURORA_BEAM  ;  3e
	const HYPER_BEAM   ;  3f
	const PECK         ;  40
	const DRILL_PECK   ;  41
	const SUBMISSION   ;  42
	const LOW_KICK     ;  43
	const COUNTER      ;  44
	const SEISMIC_TOSS ;  45
	const STRENGTH     ;  46
	const ABSORB       ;  47
	const MEGA_DRAIN   ;  48
	const LEECH_SEED   ;  49
	const GROWTH       ;  4a
	const RAZOR_LEAF   ;  4b
	const SOLARBEAM    ;  4c
	const POISONPOWDER ;  4d
	const STUN_SPORE   ;  4e
	const SLEEP_POWDER ;  4f
	const PETAL_DANCE  ;  50
	const STRING_SHOT  ;  51
	const DRAGON_RAGE  ;  52
	const FIRE_SPIN    ;  53
	const THUNDERSHOCK ;  54
	const THUNDERBOLT  ;  55
	const THUNDER_WAVE ;  56
	const THUNDER      ;  57
	const ROCK_THROW   ;  58
	const EARTHQUAKE   ;  59
	const FISSURE      ;  5a
	const DIG          ;  5b
	const TOXIC        ;  5c
	const CONFUSION    ;  5d
	const PSYCHIC_M    ;  5e
	const HYPNOSIS     ;  5f
	const MEDITATE     ;  60
	const AGILITY      ;  61
	const QUICK_ATTACK ;  62
	const RAGE         ;  63
	const TELEPORT     ;  64
	const NIGHT_SHADE  ;  65
	const MIMIC        ;  66
	const SCREECH      ;  67
	const DOUBLE_TEAM  ;  68
	const RECOVER      ;  69
	const HARDEN       ;  6a
	const MINIMIZE     ;  6b
	const SMOKESCREEN  ;  6c
	const CONFUSE_RAY  ;  6d
	const WITHDRAW     ;  6e
	const DEFENSE_CURL ;  6f
	const BARRIER      ;  70
	const LIGHT_SCREEN ;  71
	const HAZE         ;  72
	const REFLECT      ;  73
	const FOCUS_ENERGY ;  74
	const BIDE         ;  75
	const METRONOME    ;  76
	const MIRROR_MOVE  ;  77
	const SELFDESTRUCT ;  78
	const EGG_BOMB     ;  79
	const LICK         ;  7a
	const SMOG         ;  7b
	const SLUDGE       ;  7c
	const BONE_CLUB    ;  7d
	const FIRE_BLAST   ;  7e
	const WATERFALL    ;  7f
	const CLAMP        ;  80
	const SWIFT        ;  81
	const SKULL_BASH   ;  82
	const SPIKE_CANNON ;  83
	const CONSTRICT    ;  84
	const AMNESIA      ;  85
	const KINESIS      ;  86
	const SOFTBOILED   ;  87
	const HI_JUMP_KICK ;  88
	const GLARE        ;  89
	const DREAM_EATER  ;  8a
	const POISON_GAS   ;  8b
	const BARRAGE      ;  8c
	const LEECH_LIFE   ;  8d
	const LOVELY_KISS  ;  8e
	const SKY_ATTACK   ;  8f
	const TRANSFORM    ;  90
	const BUBBLE       ;  91
	const DIZZY_PUNCH  ;  92
	const SPORE        ;  93
	const FLASH        ;  94
	const PSYWAVE      ;  95
	const SPLASH       ;  96
	const ACID_ARMOR   ;  97
	const CRABHAMMER   ;  98
	const EXPLOSION    ;  99
	const FURY_SWIPES  ;  9a
	const BONEMERANG   ;  9b
	const REST         ;  9c
	const ROCK_SLIDE   ;  9d
	const HYPER_FANG   ;  9e
	const SHARPEN      ;  9f
	const CONVERSION   ;  a0
	const TRI_ATTACK   ;  a1
	const SUPER_FANG   ;  a2
	const SLASH        ;  a3
	const SUBSTITUTE   ;  a4
	const STRUGGLE     ;  a5
	const SKETCH       ;  a6
	const TRIPLE_KICK  ;  a7
	const THIEF        ;  a8
	const SPIDER_WEB   ;  a9
	const MIND_READER  ;  aa
	const NIGHTMARE    ;  ab
	const FLAME_WHEEL  ;  ac
	const SNORE        ;  ad
	const CURSE        ;  ae
	const FLAIL        ;  af
	const CONVERSION2  ;  b0
	const AEROBLAST    ;  b1
	const COTTON_SPORE ;  b2
	const REVERSAL     ;  b3
	const SPITE        ;  b4
	const POWDER_SNOW  ;  b5
	const PROTECT      ;  b6
	const MACH_PUNCH   ;  b7
	const SCARY_FACE   ;  b8
	const FEINT_ATTACK ;  b9
	const SWEET_KISS   ;  ba
	const BELLY_DRUM   ;  bb
	const SLUDGE_BOMB  ;  bc
	const MUD_SLAP     ;  bd
	const OCTAZOOKA    ;  be
	const SPIKES       ;  bf
	const ZAP_CANNON   ;  c0
	const FORESIGHT    ;  c1
	const DESTINY_BOND ;  c2
	const PERISH_SONG  ;  c3
	const ICY_WIND     ;  c4
	const DETECT       ;  c5
	const BONE_RUSH    ;  c6
	const LOCK_ON      ;  c7
	const OUTRAGE      ;  c8
	const SANDSTORM    ;  c9
	const GIGA_DRAIN   ;  ca
	const ENDURE       ;  cb
	const CHARM        ;  cc
	const ROLLOUT      ;  cd
	const FALSE_SWIPE  ;  ce
	const SWAGGER      ;  cf
	const MILK_DRINK   ;  d0
	const SPARK        ;  d1
	const FURY_CUTTER  ;  d2
	const STEEL_WING   ;  d3
	const MEAN_LOOK    ;  d4
	const ATTRACT      ;  d5
	const SLEEP_TALK   ;  d6
	const HEAL_BELL    ;  d7
	const RETURN       ;  d8
	const PRESENT      ;  d9
	const FRUSTRATION  ;  da
	const SAFEGUARD    ;  db
	const PAIN_SPLIT   ;  dc
	const SACRED_FIRE  ;  dd
	const MAGNITUDE    ;  de
	const DYNAMICPUNCH ;  df
	const MEGAHORN     ;  e0
	const DRAGONBREATH ;  e1
	const BATON_PASS   ;  e2
	const ENCORE       ;  e3
	const PURSUIT      ;  e4
	const RAPID_SPIN   ;  e5
	const SWEET_SCENT  ;  e6
	const IRON_TAIL    ;  e7
	const METAL_CLAW   ;  e8
	const VITAL_THROW  ;  e9
	const MORNING_SUN  ;  ea
	const SYNTHESIS    ;  eb
	const MOONLIGHT    ;  ec
	const HIDDEN_POWER ;  ed
	const CROSS_CHOP   ;  ee
	const TWISTER      ;  ef
	const RAIN_DANCE   ;  f0
	const SUNNY_DAY    ;  f1
	const CRUNCH       ;  f2
	const MIRROR_COAT  ;  f3
	const PSYCH_UP     ;  f4
	const EXTREMESPEED ;  f5
	const ANCIENTPOWER ;  f6
	const SHADOW_BALL  ;  f7
	const FUTURE_SIGHT ;  f8
	const ROCK_SMASH   ;  f9
	const WHIRLPOOL    ;  fa
	const BEAT_UP      ;  fb
	const FAKE_OUT     ;  fc
	const WILL_O_WISP  ;  fd (PLACEHOLDER)
	const CHARGE       ;  fe
	const TAUNT        ;  ff (PLACEHOLDER)
	const ASSIST       ; 100
	const SUPERPOWER   ; 101 (PLACEHOLDER)
	const REVENGE      ; 102
	const ENDEAVOR     ; 103
	const SNATCH       ; 104 (PLACEHOLDER)
	const SECRET_POWER ; 105 (PLACEHOLDER)
	const DIVE         ; 106
	const ARM_THRUST   ; 107
	const TEETER_DANCE ; 108 (PLACEHOLDER)
	const BLAZE_KICK   ; 109
	const ICE_BALL     ; 10a
	const POISON_FANG  ; 10b (PLACEHOLDER)
	const METEOR_MASH  ; 10c
	const ASTONISH     ; 10d
	const AIR_CUTTER   ; 10e
	const OVERHEAT     ; 10f
	const ODOR_SLEUTH  ; 110
	const ROCK_TOMB    ; 111
	const METAL_SOUND  ; 112
	const TICKLE       ; 113 (PLACEHOLDER)
	const SIGNAL_BEAM  ; 114 (PLACEHOLDER)
	const SHADOW_PUNCH ; 115 (PLACEHOLDER)
	const EXTRASENSORY ; 116
	const SAND_TOMB    ; 117 (PLACEHOLDER)
	const MUDDY_WATER  ; 118
	const AERIAL_ACE   ; 119
	const IRON_DEFENSE ; 11a
	const HOWL         ; 11b
	const DRAGON_CLAW  ; 11c
	const COVET        ; 11d
	const VOLT_TACKLE  ; 11e
	const DRAGON_DANCE ; 11f
	const SHOCK_WAVE   ; 120
	const WATER_PULSE  ; 121 (PLACEHOLDER)
	const ROOST        ; 122
	const WAKE_UP_SLAP ; 123 (PLACEHOLDER)
	const HAMMER_ARM   ; 124
	const BRINE        ; 125
	const CLOSE_COMBAT ; 126
	const ASSURANCE    ; 127
	const TRUMP_CARD   ; 128
	const SUCKER_PUNCH ; 129 (PLACEHOLDER)
	const AQUA_RING    ; 12a
	const FLARE_BLITZ  ; 12b
	const AURA_SPHERE  ; 12c
	const NIGHT_SLASH  ; 12d
	const AIR_SLASH    ; 12e
	const BUG_BUZZ     ; 12f
	const DRAGON_PULSE ; 130
	const POWER_GEM    ; 131
	const DRAIN_PUNCH  ; 132
	const FOCUS_BLAST  ; 133
	const BRAVE_BIRD   ; 134
	const EARTH_POWER  ; 135
	const NASTY_PLOT   ; 136
	const BULLET_PUNCH ; 137
	const ICE_SHARD    ; 138
	const FIRE_FANG    ; 139
	const SHADOW_SNEAK ; 13a (PLACEHOLDER)
	const MUD_BOMB     ; 13b
	const PSYCHO_CUT   ; 13c (PLACEHOLDER)
	const ZEN_HEADBUTT ; 13d
	const FLASH_CANNON ; 13e
	const ROCK_CLIMB   ; 13f (PLACEHOLDER)
	const DISCHARGE    ; 140
	const LEAF_STORM   ; 141
	const IRON_HEAD    ; 142
	const GRASS_KNOT   ; 143 (PLACEHOLDER)
	const CHATTER      ; 144
	const CHARGE_BEAM  ; 145
	const WOOD_HAMMER  ; 146 (PLACEHOLDER)
	const AQUA_JET     ; 147
	const ATTACK_ORDER ; 148
	const DARK_VOID    ; 149
	const HONE_CLAWS   ; 14a
	const PSYSHOCK     ; 14b (PLACEHOLDER)
	const QUIVER_DANCE ; 14c
	const FOUL_PLAY    ; 14d (PLACEHOLDER)
	const ECHOED_VOICE ; 14e
	const SCALD        ; 14f (PLACEHOLDER)
	const BULLDOZE     ; 150
	const WORK_UP      ; 151
	const DUAL_CHOP    ; 152
	const HORN_LEECH   ; 153
	const STEAMROLLER  ; 154 (PLACEHOLDER)
	const TAIL_SLAP    ; 155 (PLACEHOLDER)
	const BLUE_FLARE   ; 156
	const FREEZE_DRY   ; 157
	const DRAININGKISS ; 158
	const PLAY_ROUGH   ; 159
	const MOONBLAST    ; 15a
	const DAZZLINGLEAM ; 15b
	const NUZZLE       ; 15c
	const ICE_HAMMER   ; 15d
	const POLLEN_PUFF  ; 15e
	const POWER_TRIP   ; 15f
	const CHATTY_HP    ; 160
	const CRYSTAL_BOLT ; 161

NUM_ATTACKS EQU const_value + -1

	if NUM_ATTACKS > $3fff
		fail "Too many moves defined!"
	endc

; Battle animations use the same constants as the moves
	const ANIM_SWEET_SCENT_2     ; 162
; Animations with negative IDs will play even when animations are disabled
const_value = -$16 ;fix if more negative values are added
	const ANIM_THROW_POKE_BALL   ; -16 (ffea)
	const ANIM_SEND_OUT_MON      ; -15 (ffeb)
	const ANIM_RETURN_MON        ; -14 (ffec)
	const ANIM_CONFUSED          ; -13 (ffed)
	const ANIM_SLP               ; -12 (ffee)
	const ANIM_BRN               ; -11 (ffef)
	const ANIM_PSN               ; -10 (fff0)
	const ANIM_SAP               ;  -f (fff1)
	const ANIM_FRZ               ;  -e (fff2)
	const ANIM_PAR               ;  -d (fff3)
	const ANIM_IN_LOVE           ;  -c (fff4)
	const ANIM_IN_SANDSTORM      ;  -b (fff5)
	const ANIM_IN_NIGHTMARE      ;  -a (fff6)
	const ANIM_IN_WHIRLPOOL      ;  -9 (fff7)
; battle anims
	const ANIM_MISS              ;  -8 (fff8)
	const ANIM_ENEMY_DAMAGE      ;  -7 (fff9)
	const ANIM_ENEMY_STAT_DOWN   ;  -6 (fffa)
	const ANIM_PLAYER_STAT_DOWN  ;  -5 (fffb)
	const ANIM_PLAYER_DAMAGE     ;  -4 (fffc)
	const ANIM_WOBBLE            ;  -3 (fffd)
	const ANIM_SHAKE             ;  -2 (fffe)
	const ANIM_HIT_CONFUSION     ;  -1 (ffff)

	if const_value
		fail "Please adjust the initial constant value to ensure that the last animation constant has a value of -1"
	endc

; wNumHits uses offsets from ANIM_MISS
	const_def
	const BATTLEANIM_NONE
	const BATTLEANIM_ENEMY_DAMAGE
	const BATTLEANIM_ENEMY_STAT_DOWN
	const BATTLEANIM_PLAYER_STAT_DOWN
	const BATTLEANIM_PLAYER_DAMAGE
	const BATTLEANIM_WOBBLE
	const BATTLEANIM_SHAKE
	const BATTLEANIM_HIT_CONFUSION
