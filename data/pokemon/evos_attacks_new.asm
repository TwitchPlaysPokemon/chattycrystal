SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw TreeckoEvosAttacks
	dw GrovyleEvosAttacks
	dw SceptileEvosAttacks
	dw TorchicEvosAttacks
	dw CombuskenEvosAttacks
	dw BlazikenEvosAttacks
	dw MudkipEvosAttacks
	dw MarshtompEvosAttacks
	dw SwampertEvosAttacks
	dw PoochyenaEvosAttacks
	dw MightyenaEvosAttacks
	dw ZigzagoonEvosAttacks
	dw LinooneEvosAttacks
	dw LotadEvosAttacks
	dw LombreEvosAttacks
	dw LudicoloEvosAttacks
	dw TaillowEvosAttacks
	dw SwellowEvosAttacks
	dw WingullEvosAttacks
	dw PelipperEvosAttacks
	dw RaltsEvosAttacks
	dw KirliaEvosAttacks
	dw GardevoirEvosAttacks
	dw SurskitEvosAttacks
	dw MasquerainEvosAttacks
	dw WhismurEvosAttacks
	dw LoudredEvosAttacks
	dw ExploudEvosAttacks
	dw MakuhitaEvosAttacks
	dw HariyamaEvosAttacks
	dw AzurillEvosAttacks
	dw SkittyEvosAttacks
	dw DelcattyEvosAttacks
	dw SableyeEvosAttacks
	dw AronEvosAttacks
	dw LaironEvosAttacks
	dw AggronEvosAttacks
	dw ElectrikeEvosAttacks
	dw ManectricEvosAttacks
	dw RoseliaEvosAttacks
	dw WailmerEvosAttacks
	dw WailordEvosAttacks
	dw TrapinchEvosAttacks
	dw VibravaEvosAttacks
	dw FlygonEvosAttacks
	dw SwabluEvosAttacks
	dw AltariaEvosAttacks
	dw LileepEvosAttacks
	dw CradilyEvosAttacks
	dw FeebasEvosAttacks
	dw MiloticEvosAttacks
	dw DuskullEvosAttacks
	dw DusclopsEvosAttacks
	dw AbsolEvosAttacks
	dw SnoruntEvosAttacks
	dw SphealEvosAttacks
	dw SealeoEvosAttacks
	dw WalreinEvosAttacks
	dw BagonEvosAttacks
	dw ShelgonEvosAttacks
	dw SalamenceEvosAttacks
	dw BeldumEvosAttacks
	dw MetangEvosAttacks
	dw MetagrossEvosAttacks
	dw LatiosEvosAttacks
	dw KyogreEvosAttacks
	dw GroudonEvosAttacks
	dw TurtwigEvosAttacks
	dw GrotleEvosAttacks
	dw TorterraEvosAttacks
	dw ChimcharEvosAttacks
	dw MonfernoEvosAttacks
	dw InfernapeEvosAttacks
	dw PiplupEvosAttacks
	dw PrinplupEvosAttacks
	dw EmpoleonEvosAttacks
	dw BidoofEvosAttacks
	dw BibarelEvosAttacks
	dw ShinxEvosAttacks
	dw LuxioEvosAttacks
	dw LuxrayEvosAttacks
	dw BudewEvosAttacks
	dw RoseradeEvosAttacks
	dw BurmyEvosAttacks
	dw MothimEvosAttacks
	dw BuizelEvosAttacks
	dw FloatzelEvosAttacks
	dw ShellosEvosAttacks
	dw GastrodonEvosAttacks
	dw BunearyEvosAttacks
	dw LopunnyEvosAttacks
	dw StunkyEvosAttacks
	dw SkuntankEvosAttacks
	dw BronzorEvosAttacks
	dw BronzongEvosAttacks
	dw BonslyEvosAttacks
	dw ChatotEvosAttacks
	dw CroagunkEvosAttacks
	dw ToxicroakEvosAttacks
	dw LeafeonEvosAttacks
	dw GlaceonEvosAttacks
	dw PorygonZEvosAttacks
	dw DusknoirEvosAttacks
	dw FroslassEvosAttacks
	dw DarkraiEvosAttacks
	dw PansageEvosAttacks
	dw SimisageEvosAttacks
	dw DrilburEvosAttacks
	dw ExcadrillEvosAttacks
	dw SandileEvosAttacks
	dw KrokorokEvosAttacks
	dw KrookodileEvosAttacks
	dw DucklettEvosAttacks
	dw SwannaEvosAttacks
	dw TynamoEvosAttacks
	dw EelektrikEvosAttacks
	dw EelektrossEvosAttacks
	dw LitwickEvosAttacks
	dw LampentEvosAttacks
	dw ChandelureEvosAttacks
	dw ClauncherEvosAttacks
	dw ClawitzerEvosAttacks
	dw HelioptileEvosAttacks
	dw HelioliskEvosAttacks
	dw AmauraEvosAttacks
	dw AurorusEvosAttacks
	dw SylveonEvosAttacks
	dw GoomyEvosAttacks
	dw SliggooEvosAttacks
	dw GoodraEvosAttacks
	dw CrabrawlerEvosAttacks
	dw CrabominableEvosAttacks
	dw CutieflyEvosAttacks
	dw RibombeeEvosAttacks
	; Fused Crystal mons
	dw OnixtretEvosAttacks
	dw ChiquirtleEvosAttacks
	dw BaytortleEvosAttacks
	dw MegastoiseEvosAttacks
	dw HootduoEvosAttacks
	dw NoctdrioEvosAttacks
	dw TogekeyEvosAttacks
	dw TogetapeEvosAttacks
	dw HopporitaEvosAttacks
	dw SkipleefEvosAttacks
	dw JumpaniumEvosAttacks
	dw WoochumEvosAttacks
	dw QuagynxEvosAttacks
	dw SteelurretEvosAttacks
	; TPP's signature fakemon
	dw PhanceroEvosAttacks

TreeckoEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, GROVYLE
	db 0
	dbw 1, POUND
	dbw 1, LEER
	dbw 6, ABSORB
	dbw 9, QUICK_ATTACK
	dbw 13, MEGA_DRAIN
	dbw 17, PURSUIT
	dbw 21, GIGA_DRAIN
	dbw 25, DOUBLE_TEAM
	dbw 29, SLAM
	dbw 33, DETECT
	dbw 37, ENERGY_BALL
	dbw 41, SCREECH
	dbw 45, ENDEAVOR
	dbw 49, LEAF_STORM
	db 0 ; no more level-up moves

GrovyleEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, SCEPTILE
	db 0
	dbw 1, POUND
	dbw 1, LEER
	dbw 1, ABSORB
	dbw 1, QUICK_ATTACK
	dbw 6, ABSORB
	dbw 9, QUICK_ATTACK
	dbw 13, MEGA_DRAIN
	dbw 16, FURY_CUTTER
	dbw 18, PURSUIT
	dbw 23, GIGA_DRAIN
	dbw 28, DOUBLE_TEAM
	dbw 33, SLAM
	dbw 38, DETECT
	dbw 43, X_SCISSOR
	dbw 48, SCREECH
	dbw 53, FALSE_SWIPE
	dbw 58, LEAF_STORM
	db 0 ; no more level-up moves

SceptileEvosAttacks:
	db 0
	dbw 1, POUND
	dbw 1, LEER
	dbw 1, ABSORB
	dbw 1, QUICK_ATTACK
	dbw 6, ABSORB
	dbw 9, QUICK_ATTACK
	dbw 13, MEGA_DRAIN
	dbw 16, FURY_CUTTER
	dbw 18, PURSUIT
	dbw 23, GIGA_DRAIN
	dbw 28, DOUBLE_TEAM
	dbw 33, SLAM
	dbw 36, DUAL_CHOP
	dbw 39, DETECT
	dbw 45, X_SCISSOR
	dbw 51, SCREECH
	dbw 57, FALSE_SWIPE
	dbw 63, LEAF_STORM
	db 0 ; no more level-up moves

TorchicEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, COMBUSKEN
	db 0
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 6, EMBER
	dbw 10, SAND_ATTACK
	dbw 14, PECK
	dbw 19, FIRE_SPIN
	dbw 23, QUICK_ATTACK
	dbw 28, FLAME_WHEEL
	dbw 32, FOCUS_ENERGY
	dbw 37, SLASH
	dbw 41, MIRROR_MOVE
	dbw 46, FLAMETHROWER
	db 0 ; no more level-up moves

CombuskenEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, BLAZIKEN
	db 0
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, EMBER
	dbw 1, SAND_ATTACK
	dbw 6, EMBER
	dbw 10, SAND_ATTACK
	dbw 14, PECK
	dbw 16, DOUBLE_KICK
	dbw 20, FLAME_WHEEL
	dbw 25, QUICK_ATTACK
	dbw 31, WORK_UP
	dbw 36, FOCUS_ENERGY
	dbw 42, SLASH
	dbw 47, MIRROR_MOVE
	dbw 53, REVERSAL
	dbw 58, FLARE_BLITZ
	db 0 ; no more level-up moves

BlazikenEvosAttacks:
	db 0
	dbw 1, FIRE_PUNCH
	dbw 1, HI_JUMP_KICK
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, EMBER
	dbw 1, SAND_ATTACK
	dbw 6, EMBER
	dbw 10, SAND_ATTACK
	dbw 14, PECK
	dbw 16, DOUBLE_KICK
	dbw 20, FLAME_WHEEL
	dbw 25, QUICK_ATTACK
	dbw 31, WORK_UP
	dbw 36, BLAZE_KICK
	dbw 37, FOCUS_ENERGY
	dbw 44, SLASH
	dbw 50, BRAVE_BIRD
	dbw 57, REVERSAL
	dbw 63, FLARE_BLITZ
	db 0 ; no more level-up moves

MudkipEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, MARSHTOMP
	db 0
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 6, WATER_GUN
	dbw 9, MUD_SLAP
	dbw 12, FORESIGHT
	dbw 17, BIDE
	dbw 20, WATER_PULSE
	dbw 23, ROCK_THROW
	dbw 28, PROTECT
	dbw 31, AMNESIA
	dbw 34, WHIRLPOOL
	dbw 39, TAKE_DOWN
	dbw 41, HYDRO_PUMP
	dbw 45, ENDEAVOR
	db 0 ; no more level-up moves

MarshtompEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, SWAMPERT
	db 0
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, MUD_SLAP
	dbw 6, WATER_GUN
	dbw 9, MUD_SLAP
	dbw 12, FORESIGHT
	dbw 16, MUD_SHOT
	dbw 18, BIDE
	dbw 22, MUD_BOMB
	dbw 25, ROCK_SLIDE
	dbw 31, PROTECT
	dbw 35, AMNESIA
	dbw 38, MUDDY_WATER
	dbw 44, TAKE_DOWN
	dbw 48, EARTHQUAKE
	dbw 51, ENDEAVOR
	db 0 ; no more level-up moves

SwampertEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, MUD_SLAP
	dbw 6, WATER_GUN
	dbw 9, MUD_SLAP
	dbw 12, FORESIGHT
	dbw 16, MUD_SHOT
	dbw 18, BIDE
	dbw 22, MUD_BOMB
	dbw 25, ROCK_SLIDE
	dbw 31, PROTECT
	dbw 35, AMNESIA
	dbw 39, MUDDY_WATER
	dbw 46, TAKE_DOWN
	dbw 52, EARTHQUAKE
	dbw 56, ENDEAVOR
	dbw 63, HAMMER_ARM
	db 0 ; no more level-up moves

PoochyenaEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, MIGHTYENA
	db 0
	dbw 1, TACKLE
	dbw 4, HOWL
	dbw 8, SAND_ATTACK
	dbw 12, BITE
	dbw 15, ODOR_SLEUTH
	dbw 19, ROAR
	dbw 23, SWAGGER
	dbw 26, ASSURANCE
	dbw 30, SCARY_FACE
	dbw 34, TAUNT
	dbw 37, CRUNCH
	dbw 41, TAKE_DOWN
	dbw 45, SUCKER_PUNCH
	dbw 48, PLAY_ROUGH
	db 0 ; no more level-up moves

MightyenaEvosAttacks:
	db 0
	dbw 1, FIRE_FANG
	dbw 1, THUNDER_FANG
	dbw 1, ICE_FANG
	dbw 1, TACKLE
	dbw 1, HOWL
	dbw 1, SAND_ATTACK
	dbw 1, BITE
	dbw 8, SAND_ATTACK
	dbw 12, BITE
	dbw 15, ODOR_SLEUTH
	dbw 18, THIEF
	dbw 20, ROAR
	dbw 25, SWAGGER
	dbw 29, ASSURANCE
	dbw 34, SCARY_FACE
	dbw 39, TAUNT
	dbw 43, CRUNCH
	dbw 48, TAKE_DOWN
	dbw 53, SUCKER_PUNCH
	dbw 57, PLAY_ROUGH
	db 0 ; no more level-up moves

ZigzagoonEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, LINOONE
	db 0
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 5, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 12, HEADBUTT
	dbw 15, ODOR_SLEUTH
	dbw 19, PIN_MISSILE
	dbw 22, COVET
	dbw 26, TAKE_DOWN
	dbw 29, REST
	dbw 33, FLAIL
	dbw 36, BELLY_DRUM
	dbw 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

LinooneEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 5, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 12, HEADBUTT
	dbw 15, ODOR_SLEUTH
	dbw 19, FURY_SWIPES
	dbw 25, COVET
	dbw 29, SLASH
	dbw 35, REST
	dbw 39, FLAIL
	dbw 45, BELLY_DRUM
	dbw 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

LotadEvosAttacks:
	dbbw EVOLVE_LEVEL, 14, LOMBRE
	db 0
	dbw 1, ASTONISH
	dbw 3, GROWL
	dbw 6, ABSORB
	dbw 9, BUBBLE
	dbw 12, SWEET_SCENT
	dbw 15, MIST
	dbw 18, MEGA_DRAIN
	dbw 21, FLAIL
	dbw 24, BUBBLEBEAM
	dbw 28, SECRET_POWER
	dbw 32, GIGA_DRAIN
	dbw 36, RAIN_DANCE
	dbw 40, ZEN_HEADBUTT
	dbw 44, ENERGY_BALL
	db 0 ; no more level-up moves

LombreEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, LUDICOLO
	db 0
	dbw 1, ASTONISH
	dbw 3, GROWL
	dbw 6, ABSORB
	dbw 9, BUBBLE
	dbw 12, SWEET_SCENT
	dbw 14, FURY_SWIPES
	dbw 15, FAKE_OUT
	dbw 18, MEGA_DRAIN
	dbw 22, FLAIL
	dbw 26, BUBBLEBEAM
	dbw 30, SECRET_POWER
	dbw 34, TEETER_DANCE
	dbw 38, KNOCK_OFF
	dbw 42, GIGA_DRAIN
	dbw 46, RAIN_DANCE
	dbw 50, ZEN_HEADBUTT
	dbw 54, ENERGY_BALL
	dbw 58, HYDRO_PUMP
	db 0 ; no more level-up moves

LudicoloEvosAttacks:
	db 0
	dbw 1, BUBBLEBEAM
	dbw 1, MEGA_DRAIN
	dbw 1, FLAIL
	dbw 1, RAIN_DANCE
	dbw 34, TEETER_DANCE
	dbw 50, ZEN_HEADBUTT
	dbw 54, ENERGY_BALL
	dbw 58, HYDRO_PUMP
	db 0 ; no more level-up moves

TaillowEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, SWELLOW
	db 0
	dbw 1, PECK
	dbw 1, GROWL
	dbw 5, FOCUS_ENERGY
	dbw 9, QUICK_ATTACK
	dbw 13, WING_ATTACK
	dbw 17, DOUBLE_TEAM
	dbw 21, AERIAL_ACE
	dbw 25, AGILITY
	dbw 29, AIR_SLASH
	dbw 33, ENDEAVOR
	dbw 37, BRAVE_BIRD
	dbw 41, REVERSAL
	db 0 ; no more level-up moves

SwellowEvosAttacks:
	db 0
	dbw 1, PECK
	dbw 1, GROWL
	dbw 5, FOCUS_ENERGY
	dbw 9, QUICK_ATTACK
	dbw 13, WING_ATTACK
	dbw 17, DOUBLE_TEAM
	dbw 21, AERIAL_ACE
	dbw 27, AGILITY
	dbw 33, AIR_SLASH
	dbw 39, ENDEAVOR
	dbw 45, BRAVE_BIRD
	dbw 51, REVERSAL
	db 0 ; no more level-up moves

WingullEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, PELIPPER
	db 0
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 5, SUPERSONIC
	dbw 8, WING_ATTACK
	dbw 12, MIST
	dbw 15, WATER_PULSE
	dbw 19, QUICK_ATTACK
	dbw 22, AIR_CUTTER
	dbw 26, PURSUIT
	dbw 29, AERIAL_ACE
	dbw 33, ROOST
	dbw 36, AGILITY
	dbw 40, AIR_SLASH
	dbw 43, HURRICANE
	db 0 ; no more level-up moves

PelipperEvosAttacks:
	db 0
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, SUPERSONIC
	dbw 1, WING_ATTACK
	dbw 5, SUPERSONIC
	dbw 8, WING_ATTACK
	dbw 12, MIST
	dbw 15, WATER_PULSE
	dbw 19, QUICK_ATTACK
	dbw 22, AIR_CUTTER
	dbw 25, PROTECT
	dbw 28, PURSUIT
	dbw 33, BRINE
	dbw 39, ROOST
	dbw 44, AGILITY
	dbw 50, HYDRO_PUMP
	dbw 55, HURRICANE
	db 0 ; no more level-up moves

RaltsEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, KIRLIA
	db 0
	dbw 1, GROWL
	dbw 5, CONFUSION
	dbw 8, DOUBLE_TEAM
	dbw 11, TELEPORT
	dbw 15, ECHOED_VOICE
	dbw 18, PSYBEAM
	dbw 21, DISABLE
	dbw 25, DRAININGKISS
	dbw 28, CALM_MIND
	dbw 31, PSYCHIC_M
	dbw 35, CHARM
	dbw 38, FUTURE_SIGHT
	dbw 41, HYPNOSIS
	dbw 45, DREAM_EATER
	db 0 ; no more level-up moves

KirliaEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, GARDEVOIR
	db 0
	dbw 1, GROWL
	dbw 1, CONFUSION
	dbw 1, DOUBLE_TEAM
	dbw 1, TELEPORT
	dbw 8, DOUBLE_TEAM
	dbw 11, TELEPORT
	dbw 15, ECHOED_VOICE
	dbw 18, PSYBEAM
	dbw 22, DISABLE
	dbw 27, DRAININGKISS
	dbw 31, CALM_MIND
	dbw 35, PSYCHIC_M
	dbw 40, CHARM
	dbw 44, FUTURE_SIGHT
	dbw 48, HYPNOSIS
	dbw 53, DREAM_EATER
	db 0 ; no more level-up moves

GardevoirEvosAttacks:
	db 0
	dbw 1, GROWL
	dbw 1, CONFUSION
	dbw 1, DOUBLE_TEAM
	dbw 1, TELEPORT
	dbw 8, DOUBLE_TEAM
	dbw 11, TELEPORT
	dbw 15, ECHOED_VOICE
	dbw 18, PSYBEAM
	dbw 22, DISABLE
	dbw 27, DRAININGKISS
	dbw 32, CALM_MIND
	dbw 38, PSYCHIC_M
	dbw 43, CHARM
	dbw 48, FUTURE_SIGHT
	dbw 54, HYPNOSIS
	dbw 59, DREAM_EATER
	dbw 64, MOONBLAST
	db 0 ; no more level-up moves

SurskitEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, MASQUERAIN
	db 0
	dbw 1, BUBBLE
	dbw 6, QUICK_ATTACK
	dbw 9, SWEET_SCENT
	dbw 14, FORESIGHT
	dbw 17, BUBBLEBEAM
	dbw 22, AGILITY
	dbw 25, MIST
	dbw 25, HAZE
	dbw 30, AQUA_JET
	dbw 35, BATON_PASS
	db 0 ; no more level-up moves

MasquerainEvosAttacks:
	db 0
	dbw 1, BUBBLE
	dbw 1, QUICK_ATTACK
	dbw 1, SWEET_SCENT
	dbw 1, FORESIGHT
	dbw 9, SWEET_SCENT
	dbw 14, FORESIGHT
	dbw 17, GUST
	dbw 22, SCARY_FACE
	dbw 22, AIR_CUTTER
	dbw 26, STUN_SPORE
	dbw 32, SIGNAL_BEAM
	dbw 38, AIR_SLASH
	dbw 42, BUG_BUZZ
	dbw 48, WHIRLWIND
	dbw 52, QUIVER_DANCE
	db 0 ; no more level-up moves

WhismurEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, LOUDRED
	db 0
	dbw 1, POUND
	dbw 5, ECHOED_VOICE
	dbw 8, ASTONISH
	dbw 12, HOWL
	dbw 16, SCREECH
	dbw 20, SUPERSONIC
	dbw 24, STOMP
	dbw 28, ROAR
	dbw 32, REST
	dbw 36, SLEEP_TALK
	dbw 40, HYPER_VOICE
	dbw 44, ENDEAVOR
	db 0 ; no more level-up moves

LoudredEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, EXPLOUD
	db 0
	dbw 1, POUND
	dbw 1, ECHOED_VOICE
	dbw 1, ASTONISH
	dbw 8, ASTONISH
	dbw 12, HOWL
	dbw 16, SCREECH
	dbw 20, SUPERSONIC
	dbw 20, BITE
	dbw 25, STOMP
	dbw 30, ROAR
	dbw 35, REST
	dbw 40, SLEEP_TALK
	dbw 45, HYPER_VOICE
	dbw 50, ENDEAVOR
	db 0 ; no more level-up moves

ExploudEvosAttacks:
	db 0
	dbw 1, ICE_FANG
	dbw 1, FIRE_FANG
	dbw 1, THUNDER_FANG
	dbw 1, POUND
	dbw 1, ECHOED_VOICE
	dbw 1, ASTONISH
	dbw 1, HOWL
	dbw 8, ASTONISH
	dbw 12, HOWL
	dbw 16, SCREECH
	dbw 20, SUPERSONIC
	dbw 20, BITE
	dbw 25, STOMP
	dbw 30, ROAR
	dbw 35, REST
	dbw 40, SLEEP_TALK
	dbw 40, CRUNCH
	dbw 46, HYPER_VOICE
	dbw 53, ENDEAVOR
	dbw 59, HYPER_BEAM
	db 0 ; no more level-up moves

MakuhitaEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, HARIYAMA
	db 0
	dbw 1, TACKLE
	dbw 1, FOCUS_ENERGY
	dbw 4, SAND_ATTACK
	dbw 7, ARM_THRUST
	dbw 11, FAKE_OUT
	dbw 15, REVENGE
	dbw 18, WHIRLWIND
	dbw 22, KNOCK_OFF
	dbw 25, VITAL_THROW
	dbw 29, BELLY_DRUM
	dbw 32, SEISMIC_TOSS
	dbw 36, WAKE_UP_SLAP
	dbw 39, ENDURE
	dbw 42, CLOSE_COMBAT
	dbw 45, REVERSAL
	db 0 ; no more level-up moves

HariyamaEvosAttacks:
	db 0
	dbw 1, BRINE
	dbw 1, TACKLE
	dbw 1, FOCUS_ENERGY
	dbw 1, SAND_ATTACK
	dbw 1, ARM_THRUST
	dbw 4, SAND_ATTACK
	dbw 7, ARM_THRUST
	dbw 11, FAKE_OUT
	dbw 15, REVENGE
	dbw 18, WHIRLWIND
	dbw 22, KNOCK_OFF
	dbw 26, VITAL_THROW
	dbw 31, BELLY_DRUM
	dbw 35, SEISMIC_TOSS
	dbw 40, WAKE_UP_SLAP
	dbw 44, ENDURE
	dbw 49, CLOSE_COMBAT
	dbw 53, REVERSAL
	db 0 ; no more level-up moves

AzurillEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, MARILL
	db 0
	dbw 1, SPLASH
	dbw 3, BUBBLE
	dbw 6, TAIL_WHIP
	dbw 10, WATER_GUN
	dbw 13, CHARM
	dbw 17, COVET
	dbw 21, BUBBLEBEAM
	dbw 25, SLAM
	db 0 ; no more level-up moves

SkittyEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, DELCATTY
	db 0
	dbw 1, FAKE_OUT
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 1, TACKLE
	dbw 4, FORESIGHT
	dbw 8, SING
	dbw 11, ATTRACT
	dbw 15, DOUBLESLAP
	dbw 18, FEINT_ATTACK
	dbw 22, CHARM
	dbw 25, WAKE_UP_SLAP
	dbw 29, ASSIST
	dbw 32, COVET
	dbw 36, HEAL_BELL
	dbw 39, DOUBLE_EDGE
	dbw 43, TICKLE
	dbw 46, PLAY_ROUGH
	db 0 ; no more level-up moves

DelcattyEvosAttacks:
	db 0
	dbw 1, FAKE_OUT
	dbw 1, SING
	dbw 1, ATTRACT
	dbw 1, DOUBLESLAP
	db 0 ; no more level-up moves

SableyeEvosAttacks:
	db 0
	dbw 1, LEER
	dbw 1, SCRATCH
	dbw 4, FORESIGHT
	dbw 7, NIGHT_SHADE
	dbw 10, ASTONISH
	dbw 13, FURY_SWIPES
	dbw 16, DETECT
	dbw 19, SHADOW_SNEAK
	dbw 22, FEINT_ATTACK
	dbw 25, FAKE_OUT
	dbw 28, KNOCK_OFF
	dbw 31, CONFUSE_RAY
	dbw 34, ZEN_HEADBUTT
	dbw 37, POWER_GEM
	dbw 40, SHADOW_BALL
	dbw 43, FOUL_PLAY
	dbw 46, MEAN_LOOK
	db 0 ; no more level-up moves

AronEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, LAIRON
	db 0
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 5, MUD_SLAP
	dbw 8, HEADBUTT
	dbw 12, METAL_CLAW
	dbw 15, ROCK_TOMB
	dbw 19, PROTECT
	dbw 22, ROAR
	dbw 26, IRON_HEAD
	dbw 29, ROCK_SLIDE
	dbw 33, TAKE_DOWN
	dbw 36, METAL_SOUND
	dbw 40, IRON_TAIL
	dbw 43, IRON_DEFENSE
	dbw 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

LaironEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, AGGRON
	db 0
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 1, MUD_SLAP
	dbw 1, HEADBUTT
	dbw 5, MUD_SLAP
	dbw 8, HEADBUTT
	dbw 12, METAL_CLAW
	dbw 15, ROCK_TOMB
	dbw 19, PROTECT
	dbw 22, ROAR
	dbw 26, IRON_HEAD
	dbw 29, ROCK_SLIDE
	dbw 35, TAKE_DOWN
	dbw 39, METAL_SOUND
	dbw 44, IRON_TAIL
	dbw 48, IRON_DEFENSE
	dbw 53, DOUBLE_EDGE
	db 0 ; no more level-up moves

AggronEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 1, MUD_SLAP
	dbw 1, HEADBUTT
	dbw 5, MUD_SLAP
	dbw 8, HEADBUTT
	dbw 12, METAL_CLAW
	dbw 15, ROCK_TOMB
	dbw 19, PROTECT
	dbw 22, ROAR
	dbw 26, IRON_HEAD
	dbw 29, ROCK_SLIDE
	dbw 35, TAKE_DOWN
	dbw 39, METAL_SOUND
	dbw 46, IRON_TAIL
	dbw 52, IRON_DEFENSE
	dbw 59, DOUBLE_EDGE
	db 0 ; no more level-up moves

ElectrikeEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, MANECTRIC
	db 0
	dbw 1, TACKLE
	dbw 1, THUNDER_WAVE
	dbw 4, LEER
	dbw 7, HOWL
	dbw 10, QUICK_ATTACK
	dbw 13, SHOCK_WAVE
	dbw 16, ODOR_SLEUTH
	dbw 20, BITE
	dbw 24, THUNDER_FANG
	dbw 29, ROAR
	dbw 34, DISCHARGE
	dbw 39, CHARGE
	dbw 44, THUNDER
	db 0 ; no more level-up moves

ManectricEvosAttacks:
	db 0
	dbw 1, FIRE_FANG
	dbw 1, TACKLE
	dbw 1, THUNDER_WAVE
	dbw 1, LEER
	dbw 1, HOWL
	dbw 7, HOWL
	dbw 10, QUICK_ATTACK
	dbw 13, SHOCK_WAVE
	dbw 16, ODOR_SLEUTH
	dbw 20, BITE
	dbw 24, THUNDER_FANG
	dbw 30, ROAR
	dbw 36, DISCHARGE
	dbw 43, CHARGE
	dbw 50, THUNDER
	db 0 ; no more level-up moves

RoseliaEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, ROSERADE
	db 0
	dbw 1, ABSORB
	dbw 5, GROWTH
	dbw 10, POISON_STING
	dbw 13, STUN_SPORE
	dbw 17, MEGA_DRAIN
	dbw 22, LEECH_SEED
	dbw 25, SLEEP_POWDER
	dbw 29, SPIKES
	dbw 34, SWEET_SCENT
	dbw 37, GIGA_DRAIN
	dbw 41, TOXIC
	dbw 46, SYNTHESIS
	dbw 49, PETAL_DANCE
	db 0 ; no more level-up moves

WailmerEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, WAILORD
	db 0
	dbw 1, SPLASH
	dbw 4, GROWL
	dbw 7, WATER_GUN
	dbw 10, ASTONISH
	dbw 13, MIST
	dbw 16, WATER_PULSE
	dbw 19, ROLLOUT
	dbw 22, WHIRLPOOL
	dbw 25, BRINE
	dbw 29, DIVE
	dbw 33, BODY_SLAM
	dbw 37, REST
	dbw 41, AMNESIA
	dbw 45, HYDRO_PUMP
	dbw 49, WATER_SPOUT
	db 0 ; no more level-up moves

WailordEvosAttacks:
	db 0
	dbw 1, SPLASH
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, ASTONISH
	dbw 7, WATER_GUN
	dbw 10, ASTONISH
	dbw 13, MIST
	dbw 16, WATER_PULSE
	dbw 19, ROLLOUT
	dbw 22, WHIRLPOOL
	dbw 25, BRINE
	dbw 29, DIVE
	dbw 33, BODY_SLAM
	dbw 37, REST
	dbw 43, AMNESIA
	dbw 48, HYDRO_PUMP
	dbw 54, WATER_SPOUT
	db 0 ; no more level-up moves

TrapinchEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, VIBRAVA
	db 0
	dbw 1, SAND_ATTACK
	dbw 1, BITE
	dbw 1, FEINT_ATTACK
	dbw 1, BIDE
	dbw 5, MUD_SLAP
	dbw 8, BULLDOZE
	dbw 12, SAND_TOMB
	dbw 15, ROCK_SLIDE
	dbw 19, DIG
	dbw 22, CRUNCH
	dbw 26, EARTH_POWER
	dbw 29, FLAIL
	dbw 33, EARTHQUAKE
	dbw 36, SUPERPOWER
	dbw 40, SANDSTORM
	dbw 43, HYPER_BEAM
	dbw 47, FISSURE
	db 0 ; no more level-up moves

VibravaEvosAttacks:
	dbbw EVOLVE_LEVEL, 45, FLYGON
	db 0
	dbw 1, SAND_ATTACK
	dbw 1, SONICBOOM
	dbw 1, FEINT_ATTACK
	dbw 1, BIDE
	dbw 5, MUD_SLAP
	dbw 8, BULLDOZE
	dbw 12, SAND_TOMB
	dbw 15, ROCK_SLIDE
	dbw 19, SUPERSONIC
	dbw 22, SCREECH
	dbw 26, EARTH_POWER
	dbw 29, BUG_BUZZ
	dbw 33, EARTHQUAKE
	dbw 35, DRAGONBREATH
	dbw 39, ECHOED_VOICE
	dbw 44, SANDSTORM
	dbw 49, HYPER_BEAM
	dbw 54, HYPER_VOICE
	db 0 ; no more level-up moves

FlygonEvosAttacks:
	db 0
	dbw 1, DRAGON_DANCE
	dbw 1, SAND_ATTACK
	dbw 1, SONICBOOM
	dbw 1, FEINT_ATTACK
	dbw 1, BIDE
	dbw 5, MUD_SLAP
	dbw 8, BULLDOZE
	dbw 12, SAND_TOMB
	dbw 15, ROCK_SLIDE
	dbw 19, SUPERSONIC
	dbw 22, SCREECH
	dbw 26, EARTH_POWER
	dbw 29, BUG_BUZZ
	dbw 33, EARTHQUAKE
	dbw 35, DRAGONBREATH
	dbw 39, ECHOED_VOICE
	dbw 44, SANDSTORM
	dbw 45, DRAGON_CLAW
	dbw 52, HYPER_BEAM
	dbw 59, HYPER_VOICE
	db 0 ; no more level-up moves

SwabluEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, ALTARIA
	db 0
	dbw 1, PECK
	dbw 1, GROWL
	dbw 4, ASTONISH
	dbw 7, SING
	dbw 11, FURY_ATTACK
	dbw 14, SAFEGUARD
	dbw 17, ECHOED_VOICE
	dbw 21, MIST
	dbw 24, DRAGONBREATH
	dbw 27, TAKE_DOWN
	dbw 31, HEAL_BELL
	dbw 34, MIRROR_MOVE
	dbw 37, DRAGON_PULSE
	dbw 41, PERISH_SONG
	dbw 44, MOONBLAST
	db 0 ; no more level-up moves

AltariaEvosAttacks:
	db 0
	dbw 1, PECK
	dbw 1, GROWL
	dbw 4, ASTONISH
	dbw 7, SING
	dbw 11, FURY_ATTACK
	dbw 14, SAFEGUARD
	dbw 17, ECHOED_VOICE
	dbw 21, MIST
	dbw 24, DRAGONBREATH
	dbw 27, TAKE_DOWN
	dbw 31, HEAL_BELL
	dbw 34, MIRROR_MOVE
	dbw 40, DRAGON_PULSE
	dbw 46, PERISH_SONG
	dbw 52, MOONBLAST
	dbw 58, SKY_ATTACK
	db 0 ; no more level-up moves

LileepEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, CRADILY
	db 0
	dbw 1, CONSTRICT
	dbw 1, ASTONISH
	dbw 5, ACID
	dbw 10, CONFUSE_RAY
	dbw 14, LEECH_SEED
	dbw 19, ANCIENTPOWER
	dbw 23, MEGA_DRAIN
	dbw 28, BRINE
	dbw 32, AMNESIA
	dbw 37, TICKLE
	dbw 41, GIGA_DRAIN
	dbw 46, RECOVER
	dbw 50, ENERGY_BALL
	db 0 ; no more level-up moves

CradilyEvosAttacks:
	db 0
	dbw 1, CONSTRICT
	dbw 1, ASTONISH
	dbw 5, ACID
	dbw 10, CONFUSE_RAY
	dbw 14, LEECH_SEED
	dbw 19, ANCIENTPOWER
	dbw 23, MEGA_DRAIN
	dbw 28, BRINE
	dbw 32, AMNESIA
	dbw 37, TICKLE
	dbw 43, GIGA_DRAIN
	dbw 50, RECOVER
	dbw 56, ENERGY_BALL
	db 0 ; no more level-up moves

FeebasEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, MILOTIC
	db 0
	dbw 1, SPLASH
	dbw 15, TACKLE
	dbw 25, FLAIL
	db 0 ; no more level-up moves

MiloticEvosAttacks:
	db 0
	dbw 1, WATER_GUN
	dbw 1, WRAP
	dbw 6, HEAL_BELL
	dbw 10, TWISTER
	dbw 15, WATER_PULSE
	dbw 19, AQUA_RING
	dbw 24, CHARM
	dbw 28, SLAM
	dbw 33, RECOVER
	dbw 37, AQUA_TAIL
	dbw 42, ATTRACT
	dbw 46, SAFEGUARD
	dbw 51, HYDRO_PUMP
	dbw 55, RAIN_DANCE
	db 0 ; no more level-up moves

DuskullEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, DUSCLOPS
	db 0
	dbw 1, LEER
	dbw 1, NIGHT_SHADE
	dbw 6, DISABLE
	dbw 9, ASTONISH
	dbw 14, FORESIGHT
	dbw 17, SHADOW_SNEAK
	dbw 22, PURSUIT
	dbw 25, WILL_O_WISP
	dbw 30, CONFUSE_RAY
	dbw 33, CURSE
	dbw 38, HEX
	dbw 41, SHADOW_BALL
	dbw 46, MEAN_LOOK
	dbw 49, DARK_PULSE
	dbw 54, FUTURE_SIGHT
	db 0 ; no more level-up moves

DusclopsEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, DUSKNOIR
	db 0
	dbw 1, FIRE_PUNCH
	dbw 1, ICE_PUNCH
	dbw 1, THUNDERPUNCH
	dbw 1, BIND
	dbw 1, LEER
	dbw 1, NIGHT_SHADE
	dbw 1, DISABLE
	dbw 6, DISABLE
	dbw 9, ASTONISH
	dbw 14, FORESIGHT
	dbw 17, SHADOW_SNEAK
	dbw 22, PURSUIT
	dbw 25, WILL_O_WISP
	dbw 30, CONFUSE_RAY
	dbw 33, CURSE
	dbw 37, SHADOW_PUNCH
	dbw 40, HEX
	dbw 45, SHADOW_BALL
	dbw 52, MEAN_LOOK
	dbw 57, DARK_PULSE
	dbw 64, FUTURE_SIGHT
	db 0 ; no more level-up moves

AbsolEvosAttacks:
	db 0
	dbw 1, SCRATCH
	dbw 4, LEER
	dbw 7, QUICK_ATTACK
	dbw 10, PURSUIT
	dbw 13, TAUNT
	dbw 16, BITE
	dbw 19, DOUBLE_TEAM
	dbw 22, SLASH
	dbw 25, SWORDS_DANCE
	dbw 29, NIGHT_SLASH
	dbw 33, DETECT
	dbw 37, PSYCHO_CUT
	dbw 41, SUCKER_PUNCH
	dbw 45, RAZOR_WIND
	dbw 49, FUTURE_SIGHT
	dbw 53, PERISH_SONG
	db 0 ; no more level-up moves

SnoruntEvosAttacks:
	dbbw EVOLVE_ITEM, ICE_STONE, FROSLASS
	db 0
	dbw 1, POWDER_SNOW
	dbw 1, LEER
	dbw 6, DOUBLE_TEAM
	dbw 12, ICE_SHARD
	dbw 17, ICY_WIND
	dbw 23, BITE
	dbw 28, ICE_FANG
	dbw 32, HEADBUTT
	dbw 37, PROTECT
	dbw 41, FREEZE_DRY
	dbw 46, CRUNCH
	dbw 50, BLIZZARD
	db 0 ; no more level-up moves

SphealEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, SEALEO
	db 0
	dbw 1, DEFENSE_CURL
	dbw 1, POWDER_SNOW
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 5, ROLLOUT
	dbw 9, ENCORE
	dbw 13, ICE_BALL
	dbw 17, BRINE
	dbw 21, AURORA_BEAM
	dbw 26, BODY_SLAM
	dbw 31, REST
	dbw 31, SNORE
	dbw 36, CHARM
	dbw 41, BLIZZARD
	dbw 46, FISSURE
	db 0 ; no more level-up moves

SealeoEvosAttacks:
	dbbw EVOLVE_LEVEL, 44, WALREIN
	db 0
	dbw 1, DEFENSE_CURL
	dbw 1, POWDER_SNOW
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 5, ROLLOUT
	dbw 9, ENCORE
	dbw 13, ICE_BALL
	dbw 17, BRINE
	dbw 21, AURORA_BEAM
	dbw 26, BODY_SLAM
	dbw 31, REST
	dbw 31, SNORE
	dbw 38, SWAGGER
	dbw 45, BLIZZARD
	dbw 52, FISSURE
	db 0 ; no more level-up moves

WalreinEvosAttacks:
	db 0
	dbw 1, DEFENSE_CURL
	dbw 1, POWDER_SNOW
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 5, ROLLOUT
	dbw 9, ENCORE
	dbw 13, ICE_BALL
	dbw 17, BRINE
	dbw 21, AURORA_BEAM
	dbw 26, BODY_SLAM
	dbw 31, REST
	dbw 31, SNORE
	dbw 38, SWAGGER
	dbw 45, CRUNCH
	dbw 49, BLIZZARD
	dbw 60, FISSURE
	db 0 ; no more level-up moves

BagonEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, SHELGON
	db 0
	dbw 1, RAGE
	dbw 4, EMBER
	dbw 7, LEER
	dbw 10, BITE
	dbw 13, DRAGONBREATH
	dbw 17, HEADBUTT
	dbw 21, FOCUS_ENERGY
	dbw 25, CRUNCH
	dbw 29, DRAGON_CLAW
	dbw 34, ZEN_HEADBUTT
	dbw 39, SCARY_FACE
	dbw 44, FLAMETHROWER
	dbw 49, OUTRAGE
	dbw 54, DOUBLE_EDGE
	db 0 ; no more level-up moves

ShelgonEvosAttacks:
	dbbw EVOLVE_LEVEL, 50, SALAMENCE
	db 0
	dbw 1, RAGE
	dbw 1, EMBER
	dbw 1, LEER
	dbw 1, BITE
	dbw 7, LEER
	dbw 10, BITE
	dbw 13, DRAGONBREATH
	dbw 17, HEADBUTT
	dbw 21, FOCUS_ENERGY
	dbw 25, CRUNCH
	dbw 29, DRAGON_CLAW
	dbw 30, PROTECT
	dbw 35, ZEN_HEADBUTT
	dbw 42, SCARY_FACE
	dbw 49, FLAMETHROWER
	dbw 56, OUTRAGE
	dbw 63, DOUBLE_EDGE
	db 0 ; no more level-up moves

SalamenceEvosAttacks:
	db 0
	dbw 1, FIRE_FANG
	dbw 1, THUNDER_FANG
	dbw 1, PROTECT
	dbw 1, RAGE
	dbw 1, EMBER
	dbw 1, LEER
	dbw 1, BITE
	dbw 7, LEER
	dbw 10, BITE
	dbw 13, DRAGONBREATH
	dbw 17, HEADBUTT
	dbw 21, FOCUS_ENERGY
	dbw 25, CRUNCH
	dbw 29, DRAGON_CLAW
	dbw 35, ZEN_HEADBUTT
	dbw 42, SCARY_FACE
	dbw 49, FLAMETHROWER
	dbw 50, FLY
	dbw 59, OUTRAGE
	dbw 68, DOUBLE_EDGE
	db 0 ; no more level-up moves

BeldumEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, METANG
	db 0
	dbw 1, TAKE_DOWN
	db 0 ; no more level-up moves

MetangEvosAttacks:
	dbbw EVOLVE_LEVEL, 45, METAGROSS
	db 0
	dbw 1, TAKE_DOWN
	dbw 1, CONFUSION
	dbw 1, METAL_CLAW
	dbw 20, CONFUSION
	dbw 20, METAL_CLAW
	dbw 23, PURSUIT
	dbw 26, BULLET_PUNCH
	dbw 29, FORESIGHT
	dbw 32, ZEN_HEADBUTT
	dbw 35, SCARY_FACE
	dbw 38, PSYCHIC_M
	dbw 41, AGILITY
	dbw 44, METEOR_MASH
	dbw 47, IRON_DEFENSE
	dbw 50, HYPER_BEAM
	db 0 ; no more level-up moves

MetagrossEvosAttacks:
	db 0
	dbw 1, TAKE_DOWN
	dbw 1, CONFUSION
	dbw 1, METAL_CLAW
	dbw 20, CONFUSION
	dbw 20, METAL_CLAW
	dbw 23, PURSUIT
	dbw 26, BULLET_PUNCH
	dbw 29, FORESIGHT
	dbw 32, ZEN_HEADBUTT
	dbw 35, SCARY_FACE
	dbw 38, PSYCHIC_M
	dbw 41, AGILITY
	dbw 44, METEOR_MASH
	dbw 45, HAMMER_ARM
	dbw 52, IRON_DEFENSE
	dbw 60, HYPER_BEAM
	db 0 ; no more level-up moves

LatiosEvosAttacks:
	db 0
	dbw 1, PSYWAVE
	dbw 6, SAFEGUARD
	dbw 14, DRAGONBREATH
	dbw 20, PROTECT
	dbw 28, ZEN_HEADBUTT
	dbw 36, RECOVER
	dbw 44, PSYSHOCK
	dbw 50, DRAGON_DANCE
	dbw 58, PSYCHIC_M
	dbw 64, DRAGON_PULSE
	dbw 72, AURA_SPHERE
	dbw 78, DRACO_METEOR
	db 0 ; no more level-up moves

KyogreEvosAttacks:
	db 0
	dbw 1, WATER_PULSE
	dbw 5, SCARY_FACE
	dbw 15, BODY_SLAM
	dbw 20, MUDDY_WATER
	dbw 30, AQUA_RING
	dbw 35, ICE_BEAM
	dbw 45, ANCIENTPOWER
	dbw 50, WATER_SPOUT
	dbw 60, CALM_MIND
	dbw 65, AQUA_TAIL
	dbw 75, DOUBLE_EDGE
	dbw 80, HYDRO_PUMP
	db 0 ; no more level-up moves

GroudonEvosAttacks:
	db 0
	dbw 1, MUD_SHOT
	dbw 5, SCARY_FACE
	dbw 15, LAVA_PLUME
	dbw 20, HAMMER_ARM
	dbw 30, REST
	dbw 35, EARTHQUAKE
	dbw 45, ANCIENTPOWER
	dbw 50, OVERHEAT
	dbw 60, CURSE
	dbw 65, EARTH_POWER
	dbw 75, SOLARBEAM
	dbw 80, FIRE_BLAST
	db 0 ; no more level-up moves

TurtwigEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, GROTLE
	db 0
	dbw 1, TACKLE
	dbw 5, WITHDRAW
	dbw 9, ABSORB
	dbw 13, RAZOR_LEAF
	dbw 17, CURSE
	dbw 21, BITE
	dbw 25, MEGA_DRAIN
	dbw 29, LEECH_SEED
	dbw 33, SYNTHESIS
	dbw 37, CRUNCH
	dbw 41, GIGA_DRAIN
	dbw 45, LEAF_STORM
	db 0 ; no more level-up moves

GrotleEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, TORTERRA
	db 0
	dbw 1, TACKLE
	dbw 1, WITHDRAW
	dbw 9, ABSORB
	dbw 13, RAZOR_LEAF
	dbw 17, CURSE
	dbw 21, BITE
	dbw 27, MEGA_DRAIN
	dbw 32, LEECH_SEED
	dbw 37, SYNTHESIS
	dbw 42, CRUNCH
	dbw 47, GIGA_DRAIN
	dbw 52, LEAF_STORM
	db 0 ; no more level-up moves

TorterraEvosAttacks:
	db 0
	dbw 1, WOOD_HAMMER
	dbw 1, TACKLE
	dbw 1, WITHDRAW
	dbw 1, ABSORB
	dbw 1, RAZOR_LEAF
	dbw 17, CURSE
	dbw 22, BITE
	dbw 27, MEGA_DRAIN
	dbw 32, EARTHQUAKE
	dbw 33, LEECH_SEED
	dbw 34, EARTHQUAKE
	dbw 39, SYNTHESIS
	dbw 45, CRUNCH
	dbw 51, GIGA_DRAIN
	dbw 57, LEAF_STORM
	db 0 ; no more level-up moves

ChimcharEvosAttacks:
	dbbw EVOLVE_LEVEL, 14, MONFERNO
	db 0
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 7, EMBER
	dbw 9, TAUNT
	dbw 14, FURY_SWIPES
	dbw 17, FLAME_WHEEL
	dbw 23, NASTY_PLOT
	dbw 25, SECRET_POWER ; dug into the TM moveset here, just no good replacement really
	dbw 33, FIRE_SPIN
	dbw 39, RECOVER ; Slack Off
	dbw 41, FLAMETHROWER
	db 0 ; no more level-up moves

MonfernoEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, INFERNAPE
	db 0
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, EMBER
	dbw 9, TAUNT
	dbw 14, MACH_PUNCH
	dbw 16, FURY_SWIPES
	dbw 19, FLAME_WHEEL
	dbw 36, CLOSE_COMBAT
	dbw 39, FIRE_SPIN
	dbw 46, RECOVER ; Slack Off
	dbw 49, FLARE_BLITZ
	db 0 ; no more level-up moves

InfernapeEvosAttacks:
	db 0
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, EMBER
	dbw 1, TAUNT
	dbw 15, MACH_PUNCH
	dbw 17, FURY_SWIPES
	dbw 21, FLAME_WHEEL
	dbw 41, CLOSE_COMBAT
	dbw 45, FIRE_SPIN
	dbw 57, FLARE_BLITZ
	db 0 ; no more level-up moves

PiplupEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, PRINPLUP
	db 0
	dbw 1, POUND
	dbw 4, GROWL
	dbw 8, BUBBLE
	dbw 11, RAIN_DANCE
	dbw 15, PECK
	dbw 18, BUBBLEBEAM
	dbw 22, BIDE
	dbw 25, FURY_ATTACK
	dbw 29, BRINE
	dbw 32, WHIRLPOOL
	dbw 36, MIST
	dbw 39, DRILL_PECK
	dbw 43, HYDRO_PUMP
	db 0 ; no more level-up moves

PrinplupEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, EMPOLEON
	db 0
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, GROWL
	dbw 8, BUBBLE
	dbw 11, RAIN_DANCE
	dbw 15, PECK
	dbw 16, METAL_CLAW
	dbw 19, BUBBLEBEAM
	dbw 24, BIDE
	dbw 28, FURY_ATTACK
	dbw 33, BRINE
	dbw 37, WHIRLPOOL
	dbw 42, MIST
	dbw 46, DRILL_PECK
	dbw 51, HYDRO_PUMP
	db 0 ; no more level-up moves

EmpoleonEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, BUBBLE
	dbw 4, GROWL
	dbw 8, BUBBLE
	dbw 11, SWORDS_DANCE
	dbw 15, PECK
	dbw 16, METAL_CLAW
	dbw 19, BUBBLEBEAM
	dbw 24, SWAGGER
	dbw 28, FURY_ATTACK
	dbw 33, BRINE
	dbw 36, SURF
	dbw 39, WHIRLPOOL
	dbw 46, MIST
	dbw 52, DRILL_PECK
	dbw 59, HYDRO_PUMP
	db 0 ; no more level-up moves

BidoofEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, BIBAREL
	db 0
	dbw 1, TACKLE
	dbw 5, GROWL
	dbw 9, DEFENSE_CURL
	dbw 13, ROLLOUT
	dbw 17, HEADBUTT
	dbw 21, HYPER_FANG
	dbw 25, SING
	dbw 29, AMNESIA
	dbw 33, TAKE_DOWN
	dbw 37, SUPER_FANG
	dbw 41, SUPERPOWER
	dbw 45, CURSE
	db 0 ; no more level-up moves

BibarelEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 5, GROWL
	dbw 9, DEFENSE_CURL
	dbw 13, ROLLOUT
	dbw 15, WATER_GUN
	dbw 18, HEADBUTT
	dbw 23, HYPER_FANG
	dbw 28, SING
	dbw 33, AMNESIA
	dbw 38, TAKE_DOWN
	dbw 43, SUPER_FANG
	dbw 48, SUPERPOWER
	dbw 53, CURSE
	db 0 ; no more level-up moves

ShinxEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, LUXIO
	db 0
	dbw 1, TACKLE
	dbw 5, LEER
	dbw 9, CHARGE
	dbw 13, SPARK
	dbw 17, BITE
	dbw 21, ROAR
	dbw 25, SWAGGER
	dbw 33, CRUNCH
	dbw 37, SCARY_FACE
	dbw 41, DISCHARGE
	db 0 ; no more level-up moves

LuxioEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, LUXRAY
	db 0
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 9, CHARGE
	dbw 13, SPARK
	dbw 18, BITE
	dbw 23, ROAR
	dbw 28, SWAGGER
	dbw 38, CRUNCH
	dbw 43, SCARY_FACE
	dbw 48, DISCHARGE
	db 0 ; no more level-up moves

LuxrayEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 1, CHARGE
	dbw 13, SPARK
	dbw 18, BITE
	dbw 23, ROAR
	dbw 28, SWAGGER
	dbw 42, CRUNCH
	dbw 49, SCARY_FACE
	dbw 56, DISCHARGE
	db 0 ; no more level-up moves

BudewEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_MORNDAY, ROSELIA
	db 0
	dbw 1, ABSORB
	dbw 4, GROWTH
	dbw 7, STUN_SPORE
	dbw 10, MEGA_DRAIN
	dbw 13, SPIKES
	dbw 16, SYNTHESIS
	db 0 ; no more level-up moves

RoseradeEvosAttacks:
	db 0
	dbw 1, POISON_STING
	dbw 1, MEGA_DRAIN
	dbw 1, LEAF_STORM
	dbw 1, SWEET_SCENT
	db 0 ; no more level-up moves

BurmyEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, MOTHIM
	db 0
	dbw 1, PROTECT
	dbw 10, TACKLE
	dbw 20, HIDDEN_POWER
	db 0 ; no more level-up moves

MothimEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 10, PROTECT
	dbw 20, HIDDEN_POWER
	dbw 23, CONFUSION
	dbw 26, GUST
	dbw 29, POISONPOWDER
	dbw 32, PSYBEAM
	dbw 35, CONVERSION
	dbw 41, AIR_SLASH
	dbw 44, PSYCHIC_M
	db 0 ; no more level-up moves

BuizelEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, FLOATZEL
	db 0
	dbw 1, SONICBOOM
	dbw 4, GROWL
	dbw 7, WATER_GUN
	dbw 11, QUICK_ATTACK
	dbw 15, PURSUIT
	dbw 18, SWIFT
	dbw 21, AQUA_JET
	dbw 24, DOUBLESLAP
	dbw 27, WHIRLPOOL
	dbw 31, RAZOR_WIND
	dbw 35, AGILITY
	dbw 38, HYDRO_PUMP
	db 0 ; no more level-up moves

FloatzelEvosAttacks:
	db 0
	dbw 1, SONICBOOM
	dbw 4, GROWL
	dbw 7, WATER_GUN
	dbw 11, QUICK_ATTACK
	dbw 15, PURSUIT
	dbw 18, SWIFT
	dbw 21, AQUA_JET
	dbw 24, DOUBLESLAP
	dbw 29, WHIRLPOOL
	dbw 35, RAZOR_WIND
	dbw 41, AGILITY
	dbw 46, HYDRO_PUMP
	dbw 51, CRUNCH
	db 0 ; no more level-up moves

ShellosEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, GASTRODON
	db 0
	dbw 1, MUD_SLAP
	dbw 4, HARDEN
	dbw 7, WATER_PULSE
	dbw 11, MUD_BOMB
	dbw 16, HIDDEN_POWER
	dbw 22, RAIN_DANCE
	dbw 25, ANCIENTPOWER
	dbw 29, BODY_SLAM
	dbw 33, MUDDY_WATER
	dbw 39, EARTH_POWER
	dbw 46, RECOVER
	db 0 ; no more level-up moves

GastrodonEvosAttacks:
	db 0
	dbw 1, MUD_SLAP
	dbw 1, HARDEN
	dbw 1, WATER_PULSE
	dbw 4, HARDEN
	dbw 7, WATER_PULSE
	dbw 11, MUD_BOMB
	dbw 16, HIDDEN_POWER
	dbw 22, RAIN_DANCE
	dbw 25, ANCIENTPOWER
	dbw 29, BODY_SLAM
	dbw 35, MUDDY_WATER
	dbw 43, EARTH_POWER
	dbw 52, RECOVER
	db 0 ; no more level-up moves

BunearyEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, LOPUNNY
	db 0
	dbw 1, SPLASH
	dbw 1, POUND
	dbw 1, DEFENSE_CURL
	dbw 1, FORESIGHT
	dbw 6, ENDURE
	dbw 13, FRUSTRATION
	dbw 16, QUICK_ATTACK
	dbw 23, JUMP_KICK
	dbw 26, BATON_PASS
	dbw 33, AGILITY
	dbw 36, DIZZY_PUNCH
	dbw 43, CHARM
	dbw 46, DIG
	db 0 ; no more level-up moves

LopunnyEvosAttacks:
	db 0
	dbw 1, SPLASH
	dbw 1, POUND
	dbw 1, DEFENSE_CURL
	dbw 1, FORESIGHT
	dbw 6, ENDURE
	dbw 13, RETURN
	dbw 16, QUICK_ATTACK
	dbw 23, JUMP_KICK
	dbw 26, BATON_PASS
	dbw 33, AGILITY
	dbw 36, DIZZY_PUNCH
	dbw 43, CHARM
	dbw 46, DIG
	db 0 ; no more level-up moves

StunkyEvosAttacks:
	dbbw EVOLVE_LEVEL, 34, SKUNTANK
	db 0
	dbw 1, SCRATCH
	dbw 1, FOCUS_ENERGY
	dbw 4, POISON_GAS
	dbw 7, SCREECH
	dbw 10, FURY_SWIPES
	dbw 14, SMOKESCREEN
	dbw 18, FEINT_ATTACK ; replacement for Feint
	dbw 22, SLASH
	dbw 27, TOXIC
	dbw 32, NIGHT_SLASH
	dbw 44, EXPLOSION
	db 0 ; no more level-up moves

SkuntankEvosAttacks:
	db 0
	dbw 1, SCRATCH
	dbw 1, FOCUS_ENERGY
	dbw 4, POISON_GAS
	dbw 7, SCREECH
	dbw 10, FURY_SWIPES
	dbw 14, SMOKESCREEN
	dbw 18, FEINT_ATTACK ; replacement for Feint
	dbw 22, SLASH
	dbw 27, TOXIC
	dbw 32, NIGHT_SLASH
	dbw 34, FLAMETHROWER
	dbw 52, EXPLOSION
	db 0 ; no more level-up moves

BronzorEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, BRONZONG
	db 0
	dbw 1, TACKLE
	dbw 1, CONFUSION
	dbw 7, HYPNOSIS
	dbw 14, CONFUSE_RAY
	dbw 19, EXTRASENSORY
	dbw 26, IRON_DEFENSE
	dbw 30, SAFEGUARD
	dbw 35, ROLLOUT ; replacement for Gyro Ball
	dbw 37, FUTURE_SIGHT
	dbw 41, FEINT_ATTACK
	db 0

BronzongEvosAttacks:
	db 0
	dbw 1, SUNNY_DAY
	dbw 1, RAIN_DANCE
	dbw 1, TACKLE
	dbw 1, CONFUSION
	dbw 7, HYPNOSIS
	dbw 14, CONFUSE_RAY
	dbw 19, EXTRASENSORY
	dbw 26, IRON_DEFENSE
	dbw 30, SAFEGUARD
	dbw 38, ROLLOUT ; replacement for Gyro Ball
	dbw 43, FUTURE_SIGHT
	dbw 50, FEINT_ATTACK
	db 0

BonslyEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, SUDOWOODO
	db 0
	dbw 1, FLAIL
	dbw 6, LOW_KICK
	dbw 10, ROCK_THROW
	dbw 15, MIMIC
	dbw 19, FEINT_ATTACK
	dbw 24, ROCK_TOMB
	dbw 28, COUNTER
	dbw 33, ROCK_SLIDE
	dbw 37, SUCKER_PUNCH
	dbw 42, DOUBLE_EDGE
	db 0 ; no more level-up moves

ChatotEvosAttacks:
	db 0
	dbw 1, PECK
	dbw 5, GROWL
	dbw 9, MIRROR_MOVE
	dbw 13, SING
	dbw 17, FURY_ATTACK
	dbw 20, AERIAL_ACE
	dbw 25, TAUNT
	dbw 29, MIMIC
	dbw 33, ROOST
	dbw 37, BRAVE_BIRD
	dbw 41, CHARM
	dbw 45, RETURN
	db 0 ; no more level-up moves

CroagunkEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, TOXICROAK
	db 0
	dbw 1, POISON_STING
	dbw 3, MUD_SLAP
	dbw 8, ASTONISH
	dbw 10, TAUNT
	dbw 15, PURSUIT
	dbw 17, FEINT_ATTACK
	dbw 22, REVENGE
	dbw 24, SWAGGER
	dbw 29, MUD_BOMB
	dbw 31, POISON_JAB
	dbw 36, TOXIC
	dbw 38, SUCKER_PUNCH
	dbw 43, NASTY_PLOT
	dbw 45, SLUDGE_BOMB
	db 0 ; no more level-up moves

ToxicroakEvosAttacks:
	db 0
	dbw 1, POISON_STING
	dbw 1, MUD_SLAP
	dbw 1, ASTONISH
	dbw 1, TAUNT
	dbw 8, ASTONISH
	dbw 10, TAUNT
	dbw 15, PURSUIT
	dbw 17, FEINT_ATTACK
	dbw 22, REVENGE
	dbw 24, SWAGGER
	dbw 29, MUD_BOMB
	dbw 31, POISON_JAB
	dbw 36, TOXIC
	dbw 40, SUCKER_PUNCH
	dbw 46, NASTY_PLOT
	dbw 50, SLUDGE_BOMB
	db 0 ; no more level-up moves

LeafeonEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 6, SAND_ATTACK
	dbw 10, RAZOR_LEAF
	dbw 14, QUICK_ATTACK
	dbw 18, SLEEP_POWDER
	dbw 23, SWIFT
	dbw 27, GIGA_DRAIN
	dbw 33, SWORDS_DANCE
	dbw 38, SYNTHESIS
	dbw 45, SUNNY_DAY
	dbw 50, LEAF_BLADE
	db 0 ; no more level-up moves

GlaceonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 6, SAND_ATTACK
	dbw 10, RAZOR_LEAF
	dbw 14, QUICK_ATTACK
	dbw 18, ICY_WIND
	dbw 23, BITE
	dbw 27, ICE_FANG
	dbw 33, ICE_SHARD
	dbw 38, BARRIER
	dbw 45, MIRROR_COAT
	dbw 50, BLIZZARD
	db 0 ; no more level-up moves

PorygonZEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 1, NASTY_PLOT
	dbw 1, CONVERSION
	dbw 7, THUNDERSHOCK
	dbw 12, PSYBEAM
	dbw 18, CONVERSION2
	dbw 23, AGILITY
	dbw 29, SIGNAL_BEAM
	dbw 34, RECOVER
	dbw 40, DISCHARGE
	dbw 45, TRI_ATTACK
	dbw 51, LOCK_ON
	dbw 56, ZAP_CANNON
	dbw 62, HYPER_BEAM
	db 0 ; no more level-up moves

DusknoirEvosAttacks:
	db 0
	dbw 1, THUNDERPUNCH
	dbw 1, FIRE_PUNCH
	dbw 1, ICE_PUNCH
	dbw 1, SHADOW_PUNCH
	dbw 52, DARK_PULSE
	dbw 57, FUTURE_SIGHT
	db 0 ; no more level-up moves

FroslassEvosAttacks:
	db 0
	dbw 1, HEX
	dbw 1, POWDER_SNOW
	dbw 1, LEER
	dbw 1, DOUBLE_TEAM
	dbw 1, ICE_SHARD
	dbw 6, DOUBLE_TEAM
	dbw 10, ICE_SHARD
	dbw 15, ICY_WIND
	dbw 19, ASTONISH
	dbw 24, DRAININGKISS
	dbw 28, WILL_O_WISP
	dbw 33, CONFUSE_RAY
	dbw 37, WAKE_UP_SLAP
	dbw 43, CHARM
	dbw 48, SHADOW_BALL
	dbw 54, DESTINY_BOND
	dbw 59, BLIZZARD
	db 0 ; no more level-up moves

DarkraiEvosAttacks:
	db 0
	dbw 1, NIGHT_SHADE
	dbw 1, DISABLE
	dbw 11, QUICK_ATTACK
	dbw 20, HYPNOSIS
	dbw 29, FEINT_ATTACK
	dbw 38, NIGHTMARE
	dbw 47, DOUBLE_TEAM
	dbw 57, HAZE
	dbw 66, DARK_VOID
	dbw 75, NASTY_PLOT
	dbw 84, DREAM_EATER
	dbw 93, DARK_PULSE
	db 0 ; no more level-up moves

PansageEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, SIMISAGE
	db 0
	dbw 1, SCRATCH
	dbw 4, LEER
	dbw 7, LICK
	dbw 10, VINE_WHIP
	dbw 13, FURY_SWIPES
	dbw 16, LEECH_SEED
	dbw 19, BITE
	dbw 22, RAZOR_LEAF
	dbw 25, TAUNT
	dbw 28, COVET
	dbw 31, LOW_KICK
	dbw 31, GRASS_KNOT
	dbw 34, TICKLE
	dbw 37, SWAGGER
	dbw 40, CRUNCH
	db 0 ; no more level-up moves

SimisageEvosAttacks:
	db 0
	dbw 1, LEER
	dbw 1, LICK
	dbw 1, FURY_SWIPES
	dbw 1, RAZOR_LEAF
	db 0 ; no more level-up moves

DrilburEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, EXCADRILL
	db 0
	dbw 1, SCRATCH
	dbw 5, RAPID_SPIN
	dbw 8, MUD_SLAP
	dbw 12, FURY_SWIPES
	dbw 15, METAL_CLAW
	dbw 19, DIG
	dbw 22, HONE_CLAWS
	dbw 26, SLASH
	dbw 29, ROCK_SLIDE
	dbw 33, DRILL_RUN
	dbw 36, SWORDS_DANCE
	dbw 40, SANDSTORM
	dbw 43, EARTHQUAKE
	dbw 47, FISSURE
	db 0 ; no more level-up moves

ExcadrillEvosAttacks:
	db 0
	dbw 1, SCRATCH
	dbw 5, RAPID_SPIN
	dbw 8, MUD_SLAP
	dbw 12, FURY_SWIPES
	dbw 15, METAL_CLAW
	dbw 19, DIG
	dbw 22, HONE_CLAWS
	dbw 26, SLASH
	dbw 29, ROCK_SLIDE
	dbw 36, DRILL_RUN
	dbw 42, SWORDS_DANCE
	dbw 49, SANDSTORM
	dbw 55, EARTHQUAKE
	dbw 62, FISSURE
	db 0 ; no more level-up moves

SandileEvosAttacks:
	dbbw EVOLVE_LEVEL, 29, KROKOROK
	db 0
	dbw 1, RAGE
	dbw 1, LEER
	dbw 4, SAND_ATTACK
	dbw 7, BITE
	dbw 10, HONE_CLAWS
	dbw 13, SAND_TOMB
	dbw 19, ASSURANCE
	dbw 25, DIG
	dbw 28, CRUNCH
	dbw 31, SWAGGER
	dbw 34, THIEF
	dbw 37, SANDSTORM
	dbw 40, FOUL_PLAY
	dbw 43, EARTHQUAKE
	dbw 46, THRASH
	db 0 ; no more level-up moves

KrokorokEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, KROOKODILE
	db 0
	dbw 1, RAGE
	dbw 1, LEER
	dbw 4, SAND_ATTACK
	dbw 7, BITE
	dbw 10, HONE_CLAWS
	dbw 13, SAND_TOMB
	dbw 19, ASSURANCE
	dbw 25, DIG
	dbw 28, CRUNCH
	dbw 32, SWAGGER
	dbw 36, THIEF
	dbw 40, SANDSTORM
	dbw 44, FOUL_PLAY
	dbw 48, EARTHQUAKE
	dbw 52, THRASH
	db 0 ; no more level-up moves

KrookodileEvosAttacks:
	db 0
	dbw 1, POWER_TRIP
	dbw 1, RAGE
	dbw 1, LEER
	dbw 1, SAND_ATTACK
	dbw 1, BITE
	dbw 7, BITE
	dbw 10, HONE_CLAWS
	dbw 13, SAND_TOMB
	dbw 19, ASSURANCE
	dbw 25, DIG
	dbw 28, CRUNCH
	dbw 32, SWAGGER
	dbw 36, THIEF
	dbw 42, SANDSTORM
	dbw 48, FOUL_PLAY
	dbw 54, EARTHQUAKE
	dbw 60, THRASH
	dbw 66, OUTRAGE
	db 0 ; no more level-up moves

DucklettEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, SWANNA
	db 0
	dbw 1, WATER_GUN
	dbw 6, GROWL
	dbw 9, WING_ATTACK
	dbw 13, WATER_PULSE
	dbw 15, AERIAL_ACE
	dbw 19, BUBBLEBEAM
	dbw 21, CHARM
	dbw 24, AQUA_RING
	dbw 27, AIR_SLASH
	dbw 30, ROOST
	dbw 34, RAIN_DANCE
	dbw 37, AGILITY
	dbw 41, BRAVE_BIRD
	dbw 46, HURRICANE
	db 0 ; no more level-up moves

SwannaEvosAttacks:
	db 0
	dbw 1, WATER_GUN
	dbw 1, GROWL
	dbw 1, WING_ATTACK
	dbw 9, WING_ATTACK
	dbw 13, WATER_PULSE
	dbw 15, AERIAL_ACE
	dbw 19, BUBBLEBEAM
	dbw 21, CHARM
	dbw 24, AQUA_RING
	dbw 27, AIR_SLASH
	dbw 30, ROOST
	dbw 34, RAIN_DANCE
	dbw 40, AGILITY
	dbw 47, BRAVE_BIRD
	dbw 55, HURRICANE
	db 0 ; no more level-up moves

TynamoEvosAttacks:
	dbbw EVOLVE_LEVEL, 39, EELEKTRIK
	db 0
	dbw 1, TACKLE
	dbw 1, THUNDER_WAVE
	dbw 1, SPARK
	dbw 1, CHARGE_BEAM
	db 0 ; no more level-up moves

EelektrikEvosAttacks:
	dbbw EVOLVE_ITEM, THUNDERSTONE, EELEKTROSS
	db 0
	dbw 1, HEADBUTT
	dbw 1, THUNDER_WAVE
	dbw 1, SPARK
	dbw 1, CHARGE_BEAM
	dbw 9, BIND
	dbw 19, ACID
	dbw 29, DISCHARGE
	dbw 44, CRUNCH
	dbw 49, THUNDERBOLT
	dbw 54, WORK_UP
	dbw 59, ACID_ARMOR
	dbw 64, ZAP_CANNON
	dbw 69, THRASH
	db 0 ; no more level-up moves

EelektrossEvosAttacks:
	db 0
	dbw 1, SLASH
	dbw 1, HEADBUTT
	dbw 1, ACID
	dbw 1, DISCHARGE
	dbw 1, CRUNCH
	db 0 ; no more level-up moves

LitwickEvosAttacks:
	dbbw EVOLVE_LEVEL, 41, LAMPENT
	db 0
	dbw 1, EMBER
	dbw 1, ASTONISH
	dbw 3, MINIMIZE
	dbw 5, SMOG
	dbw 7, FIRE_SPIN
	dbw 10, CONFUSE_RAY
	dbw 13, NIGHT_SHADE
	dbw 16, WILL_O_WISP
	dbw 20, FLAME_WHEEL
	dbw 24, SPITE
	dbw 28, HEX
	dbw 33, MEMENTO
	dbw 38, FLAMETHROWER
	dbw 43, CURSE
	dbw 49, SHADOW_BALL
	dbw 55, PAIN_SPLIT
	dbw 61, OVERHEAT
	db 0 ; no more level-up moves

LampentEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, CHANDELURE
	db 0
	dbw 1, EMBER
	dbw 1, ASTONISH
	dbw 3, MINIMIZE
	dbw 5, SMOG
	dbw 7, FIRE_SPIN
	dbw 10, CONFUSE_RAY
	dbw 13, NIGHT_SHADE
	dbw 16, WILL_O_WISP
	dbw 20, FLAME_WHEEL
	dbw 24, SPITE
	dbw 28, HEX
	dbw 33, MEMENTO
	dbw 38, FLAMETHROWER
	dbw 45, CURSE
	dbw 53, SHADOW_BALL
	dbw 61, PAIN_SPLIT
	dbw 69, OVERHEAT
	db 0 ; no more level-up moves

ChandelureEvosAttacks:
	db 0
	dbw 1, SMOG
	dbw 1, CONFUSE_RAY
	dbw 1, FLAME_WHEEL
	dbw 1, HEX
	db 0 ; no more level-up moves

ClauncherEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, CLAWITZER
	db 0
	dbw 1, SPLASH
	dbw 1, WATER_GUN
	dbw 5, VICEGRIP
	dbw 9, BUBBLE
	dbw 12, FLAIL
	dbw 16, AQUA_JET
	dbw 20, ROCK_THROW
	dbw 23, BUBBLEBEAM
	dbw 27, HONE_CLAWS
	dbw 31, WATER_PULSE
	dbw 34, SWORDS_DANCE
	dbw 38, AURA_SPHERE
	dbw 42, SLAM
	dbw 45, MUDDY_WATER
	dbw 49, CRABHAMMER
	db 0 ; no more level-up moves

ClawitzerEvosAttacks:
	db 0
	dbw 1, DARK_PULSE
	dbw 1, DRAGON_PULSE
	dbw 1, SPLASH
	dbw 1, WATER_GUN
	dbw 1, VICEGRIP
	dbw 1, BUBBLE
	dbw 5, VICEGRIP
	dbw 9, BUBBLE
	dbw 12, FLAIL
	dbw 16, AQUA_JET
	dbw 20, ROCK_THROW
	dbw 23, BUBBLEBEAM
	dbw 27, HONE_CLAWS
	dbw 31, WATER_PULSE
	dbw 34, SWORDS_DANCE
	dbw 41, AURA_SPHERE
	dbw 48, SLAM
	dbw 54, MUDDY_WATER
	dbw 61, CRABHAMMER
	db 0 ; no more level-up moves

HelioptileEvosAttacks:
	dbbw EVOLVE_ITEM, SUN_STONE, HELIOLISK
	db 0
	dbw 1, POUND
	dbw 1, TAIL_WHIP
	dbw 6, THUNDERSHOCK
	dbw 11, CHARGE
	dbw 13, MUD_SLAP
	dbw 17, QUICK_ATTACK
	dbw 22, RAZOR_WIND
	dbw 25, SHOCK_WAVE
	dbw 31, THUNDER_WAVE
	dbw 40, BULLDOZE
	dbw 35, CHARGE_BEAM
	dbw 40, LIGHT_SCREEN
	dbw 45, THUNDERBOLT
	db 0 ; no more level-up moves

HelioliskEvosAttacks:
	db 0
	dbw 1, LIGHT_SCREEN
	dbw 1, RAZOR_WIND
	dbw 1, QUICK_ATTACK
	dbw 1, CHARGE
	dbw 1, THUNDER
	db 0 ; no more level-up moves

AmauraEvosAttacks:
	dbbw EVOLVE_LEVEL, 39, AURORUS
	db 0
	dbw 1, GROWL
	dbw 1, POWDER_SNOW
	dbw 5, THUNDER_WAVE
	dbw 10, ROCK_THROW
	dbw 13, ICY_WIND
	dbw 15, TAKE_DOWN
	dbw 18, MIST
	dbw 20, AURORA_BEAM
	dbw 26, ANCIENTPOWER
	dbw 30, ENCORE
	dbw 34, FREEZE_DRY
	dbw 38, LIGHT_SCREEN
	dbw 41, ICE_BEAM
	dbw 44, HYPER_BEAM
	dbw 47, BLIZZARD
	db 0 ; no more level-up moves

AurorusEvosAttacks:
	db 0
	dbw 1, GROWL
	dbw 1, POWDER_SNOW
	dbw 5, THUNDER_WAVE
	dbw 10, ROCK_THROW
	dbw 13, ICY_WIND
	dbw 15, TAKE_DOWN
	dbw 18, MIST
	dbw 20, AURORA_BEAM
	dbw 26, ANCIENTPOWER
	dbw 30, ENCORE
	dbw 34, FREEZE_DRY
	dbw 38, LIGHT_SCREEN
	dbw 43, ICE_BEAM
	dbw 46, HYPER_BEAM
	dbw 50, BLIZZARD
	db 0 ; no more level-up moves

SylveonEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 6, SAND_ATTACK
	dbw 10, DRAININGKISS
	dbw 14, QUICK_ATTACK
	dbw 18, SWEET_KISS
	dbw 23, SWIFT
	dbw 27, DAZZLINGLEAM
	dbw 33, PSYCH_UP
	dbw 38, LIGHT_SCREEN
	dbw 45, TRUMP_CARD
	dbw 50, MOONBLAST
	db 0 ; no more level-up moves

GoomyEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, SLIGGOO
	db 0
	dbw 1, TACKLE
	dbw 1, ABSORB
	dbw 5, BUBBLE
	dbw 9, DRAGONBREATH
	dbw 14, BIDE
	dbw 18, PROTECT
	dbw 23, WATER_PULSE
	dbw 27, RAIN_DANCE
	dbw 32, DRAGON_PULSE
	dbw 36, FLAIL
	dbw 41, CURSE
	dbw 45, BODY_SLAM
	dbw 50, MUDDY_WATER
	db 0 ; no more level-up moves

SliggooEvosAttacks:
	dbbw EVOLVE_LEVEL, 50, GOODRA
	db 0
	dbw 1, TACKLE
	dbw 1, ABSORB
	dbw 5, BUBBLE
	dbw 9, DRAGONBREATH
	dbw 14, BIDE
	dbw 18, PROTECT
	dbw 23, WATER_PULSE
	dbw 27, RAIN_DANCE
	dbw 32, DRAGON_PULSE
	dbw 36, FLAIL
	dbw 40, ACID
	dbw 43, CURSE
	dbw 49, BODY_SLAM
	dbw 56, MUDDY_WATER
	db 0 ; no more level-up moves

GoodraEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 1, ABSORB
	dbw 5, BUBBLE
	dbw 9, DRAGONBREATH
	dbw 14, BIDE
	dbw 18, PROTECT
	dbw 23, WATER_PULSE
	dbw 27, RAIN_DANCE
	dbw 32, DRAGON_PULSE
	dbw 36, FLAIL
	dbw 40, ACID
	dbw 43, CURSE
	dbw 49, BODY_SLAM
	dbw 50, AQUA_TAIL
	dbw 58, MUDDY_WATER
	dbw 66, OUTRAGE
	db 0 ; no more level-up moves

CrabrawlerEvosAttacks:
	dbbw EVOLVE_ITEM, ICE_STONE, CRABOMINABLE
	db 0
	dbw 1, BUBBLE
	dbw 5, ROCK_SMASH
	dbw 9, LEER
	dbw 13, PURSUIT
	dbw 17, BUBBLEBEAM
	dbw 22, WORK_UP
	dbw 22, DIZZY_PUNCH
	dbw 22, FEINT_ATTACK
	dbw 25, REVERSAL
	dbw 29, CRABHAMMER
	dbw 33, IRON_DEFENSE
	dbw 37, DYNAMICPUNCH
	dbw 42, CLOSE_COMBAT
	db 0 ; no more level-up moves

CrabominableEvosAttacks:
	db 0
	dbw 1, ICE_PUNCH
	dbw 1, BUBBLE
	dbw 1, ROCK_SMASH
	dbw 1, LEER
	dbw 1, PURSUIT
	dbw 37, ICE_HAMMER
	dbw 49, CLOSE_COMBAT
	db 0 ; no more level-up moves

CutieflyEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, RIBOMBEE
	db 0
	dbw 1, ABSORB
	dbw 4, GUST
	dbw 7, STUN_SPORE
	dbw 10, SWEET_SCENT
	dbw 16, DRAININGKISS
	dbw 21, WHIRLWIND
	dbw 26, BUG_BUZZ
	dbw 31, DAZZLINGLEAM
	dbw 36, HEAL_BELL
	dbw 41, QUIVER_DANCE
	db 0 ; no more level-up moves

RibombeeEvosAttacks:
	db 0
	dbw 1, ABSORB
	dbw 4, GUST
	dbw 7, STUN_SPORE
	dbw 10, SWEET_SCENT
	dbw 16, DRAININGKISS
	dbw 20, POLLEN_PUFF
	dbw 21, WHIRLWIND
	dbw 28, BUG_BUZZ
	dbw 35, DAZZLINGLEAM
	dbw 42, HEAL_BELL
	dbw 49, QUIVER_DANCE
	db 0 ; no more level-up moves

OnixtretEvosAttacks:
	dbbw EVOLVE_TRADE, METAL_COAT, STEELURRET
	dbbw EVOLVE_ITEM, METAL_COAT, STEELURRET
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SCREECH
	dbw 1, TACKLE
	dbw 5, DEFENSE_CURL
	dbw 10, BIND
	dbw 11, QUICK_ATTACK
	dbw 14, ROCK_THROW
	dbw 17, FURY_SWIPES
	dbw 23, HARDEN
	dbw 25, SLAM
	dbw 27, RAGE
	dbw 33, REST
	dbw 36, SANDSTORM
	dbw 40, SLAM
	dbw 41, AMNESIA
	db 0 ; no more level-up moves

ChiquirtleEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, BAYTORTLE
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 1, TACKLE
	dbw 4, TAIL_WHIP
	dbw 7, BUBBLE
	dbw 8, RAZOR_LEAF
	dbw 10, WITHDRAW
	dbw 12, REFLECT
	dbw 13, WATER_GUN
	dbw 15, POISONPOWDER
	dbw 18, BITE
	dbw 22, SYNTHESIS
	dbw 23, RAPID_SPIN
	dbw 28, PROTECT
	dbw 29, BODY_SLAM
	dbw 33, RAIN_DANCE
	dbw 36, LIGHT_SCREEN
	dbw 40, SKULL_BASH
	dbw 43, SAFEGUARD
	dbw 47, HYDRO_PUMP
	dbw 50, SOLARBEAM
	db 0 ; no more level-up moves

BaytortleEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, MEGASTOISE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 4, TAIL_WHIP
	dbw 7, BUBBLE
	dbw 8, RAZOR_LEAF
	dbw 10, WITHDRAW
	dbw 12, REFLECT
	dbw 13, WATER_GUN
	dbw 15, POISONPOWDER
	dbw 19, BITE
	dbw 23, SYNTHESIS
	dbw 25, RAPID_SPIN
	dbw 31, BODY_SLAM
	dbw 31, PROTECT
	dbw 37, RAIN_DANCE
	dbw 39, LIGHT_SCREEN
	dbw 45, SKULL_BASH
	dbw 47, SAFEGUARD
	dbw 53, HYDRO_PUMP
	dbw 55, SOLARBEAM
	db 0 ; no more level-up moves

MegastoiseEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 4, TAIL_WHIP
	dbw 7, BUBBLE
	dbw 8, RAZOR_LEAF
	dbw 10, WITHDRAW
	dbw 12, REFLECT
	dbw 13, WATER_GUN
	dbw 15, POISONPOWDER
	dbw 19, BITE
	dbw 23, SYNTHESIS
	dbw 25, RAPID_SPIN
	dbw 31, BODY_SLAM
	dbw 31, PROTECT
	dbw 41, LIGHT_SCREEN
	dbw 42, RAIN_DANCE
	dbw 51, SAFEGUARD
	dbw 55, SKULL_BASH
	dbw 61, SOLARBEAM
	dbw 68, HYDRO_PUMP
	db 0 ; no more level-up moves

HootduoEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, NOCTDRIO
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, PECK
	dbw 1, GROWL
	dbw 6, FORESIGHT
	dbw 9, PURSUIT
	dbw 11, PECK
	dbw 13, FURY_ATTACK
	dbw 16, HYPNOSIS
	dbw 21, TRI_ATTACK
	dbw 22, REFLECT
	dbw 25, RAGE
	dbw 28, TAKE_DOWN
	dbw 33, DRILL_PECK
	dbw 34, CONFUSION
	dbw 37, AGILITY
	dbw 48, DREAM_EATER
	db 0 ; no more level-up moves

NoctdrioEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, PECK
	dbw 1, GROWL
	dbw 6, FORESIGHT
	dbw 9, PURSUIT
	dbw 11, PECK
	dbw 13, FURY_ATTACK
	dbw 16, HYPNOSIS
	dbw 21, TRI_ATTACK
	dbw 25, REFLECT
	dbw 25, RAGE
	dbw 33, TAKE_DOWN
	dbw 38, DRILL_PECK
	dbw 41, CONFUSION
	dbw 47, AGILITY
	dbw 57, DREAM_EATER
	db 0 ; no more level-up moves

TogekeyEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, TOGETAPE
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, CHARM
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 7, METRONOME
	dbw 9, LOW_KICK
	dbw 15, KARATE_CHOP
	dbw 18, SWEET_KISS
	dbw 21, FURY_SWIPES
	dbw 25, ENCORE
	dbw 27, FOCUS_ENERGY
	dbw 31, SAFEGUARD
	dbw 33, SEISMIC_TOSS
	dbw 38, DOUBLE_EDGE
	dbw 39, CROSS_CHOP
	dbw 45, SCREECH
	dbw 51, THRASH
	db 0 ; no more level-up moves

TogetapeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, CHARM
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 7, METRONOME
	dbw 9, LOW_KICK
	dbw 15, KARATE_CHOP
	dbw 18, SWEET_KISS
	dbw 21, FURY_SWIPES
	dbw 25, ENCORE
	dbw 27, FOCUS_ENERGY
	dbw 28, RAGE
	dbw 31, SAFEGUARD
	dbw 36, SEISMIC_TOSS
	dbw 38, DOUBLE_EDGE
	dbw 45, CROSS_CHOP
	dbw 54, SCREECH
	dbw 63, THRASH
	db 0 ; no more level-up moves

HopporitaEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, SKIPLEEF
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 5, SYNTHESIS
	dbw 5, TAIL_WHIP
	dbw 8, RAZOR_LEAF
	dbw 10, TACKLE
	dbw 12, REFLECT
	dbw 13, POISONPOWDER
	dbw 15, STUN_SPORE
	dbw 15, POISONPOWDER
	dbw 17, SLEEP_POWDER
	dbw 20, LEECH_SEED
	dbw 22, SYNTHESIS
	dbw 25, COTTON_SPORE
	dbw 29, BODY_SLAM
	dbw 30, MEGA_DRAIN
	dbw 36, LIGHT_SCREEN
	dbw 43, SAFEGUARD
	dbw 50, SOLARBEAM
	db 0 ; no more level-up moves

SkipleefEvosAttacks:
	dbbw EVOLVE_LEVEL, 27, JUMPANIUM
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 5, SYNTHESIS
	dbw 5, TAIL_WHIP
	dbw 8, RAZOR_LEAF
	dbw 10, TACKLE
	dbw 12, REFLECT
	dbw 13, POISONPOWDER
	dbw 15, STUN_SPORE
	dbw 15, POISONPOWDER
	dbw 17, SLEEP_POWDER
	dbw 22, LEECH_SEED
	dbw 23, SYNTHESIS
	dbw 29, COTTON_SPORE
	dbw 31, BODY_SLAM
	dbw 36, MEGA_DRAIN
	dbw 39, LIGHT_SCREEN
	dbw 47, SAFEGUARD
	dbw 55, SOLARBEAM
	db 0 ; no more level-up moves

JumpaniumEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 5, SYNTHESIS
	dbw 5, TAIL_WHIP
	dbw 8, RAZOR_LEAF
	dbw 10, TACKLE
	dbw 12, REFLECT
	dbw 13, POISONPOWDER
	dbw 15, STUN_SPORE
	dbw 15, POISONPOWDER
	dbw 17, SLEEP_POWDER
	dbw 22, LEECH_SEED
	dbw 23, SYNTHESIS
	dbw 31, BODY_SLAM
	dbw 33, COTTON_SPORE
	dbw 41, LIGHT_SCREEN
	dbw 44, MEGA_DRAIN
	dbw 51, SAFEGUARD
	dbw 61, SOLARBEAM
	db 0 ; no more level-up moves

WoochumEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, QUAGYNX
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, TAIL_WHIP
	dbw 1, POUND
	dbw 1, LICK
	dbw 9, SWEET_KISS
	dbw 11, SLAM
	dbw 13, POWDER_SNOW
	dbw 21, AMNESIA
	dbw 21, CONFUSION
	dbw 25, SING
	dbw 31, EARTHQUAKE
	dbw 33, MEAN_LOOK
	dbw 37, PSYCHIC_M
	dbw 41, RAIN_DANCE
	dbw 45, PERISH_SONG
	dbw 49, BLIZZARD
	dbw 51, MIST
	dbw 51, HAZE
	db 0 ; no more level-up moves

QuagynxEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, TAIL_WHIP
	dbw 1, POUND
	dbw 1, LICK
	dbw 9, LOVELY_KISS
	dbw 11, SLAM
	dbw 13, POWDER_SNOW
	dbw 21, DOUBLESLAP
	dbw 23, AMNESIA
	dbw 25, ICE_PUNCH
	dbw 35, EARTHQUAKE
	dbw 35, MEAN_LOOK
	dbw 41, BODY_SLAM
	dbw 47, RAIN_DANCE
	dbw 51, PERISH_SONG
	dbw 57, BLIZZARD
	dbw 59, MIST
	dbw 59, HAZE
	db 0 ; no more level-up moves

SteelurretEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SCREECH
	dbw 1, SCRATCH
	dbw 5, DEFENSE_CURL
	dbw 10, BIND
	dbw 11, QUICK_ATTACK
	dbw 14, ROCK_THROW
	dbw 18, FURY_SWIPES
	dbw 23, HARDEN
	dbw 28, RAGE
	dbw 28, SLAM
	dbw 38, REST
	dbw 39, SANDSTORM
	dbw 45, SLAM
	dbw 48, AMNESIA
	dbw 49, CRUNCH
	db 0 ; no more level-up moves

PhanceroEvosAttacks:
	db 0
	dbw 1, POUND
	dbw 1, TELEPORT
	dbw 7, GUST
	dbw 10, LICK
	dbw 15, WATER_GUN
	dbw 20, AGILITY
	dbw 25, WING_ATTACK
	dbw 30, ACID_ARMOR
	dbw 35, LEECH_SEED
	dbw 40, SHADOW_BALL
	dbw 50, SKY_ATTACK
	dbw 60, WATER_GUN
	dbw 70, WRAP
	dbw 80, SWORDS_DANCE
	dbw 90, AIR_SLASH
	dbw 95, TRI_ATTACK
	dbw 100, HI_JUMP_KICK
	db 0 ; no more level-up moves
