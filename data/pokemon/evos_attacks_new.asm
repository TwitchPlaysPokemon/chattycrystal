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
	dbw 11, QUICK_ATTACK
	dbw 16, PURSUIT
	dbw 21, SCREECH
	dbw 26, MEGA_DRAIN
	dbw 31, AGILITY
	dbw 36, SLAM
	dbw 41, DETECT
	dbw 45, GIGA_DRAIN
	db 0 ; no more level-up moves

GrovyleEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, SCEPTILE
	db 0
	dbw 1, POUND
	dbw 1, LEER
	dbw 1, ABSORB
	dbw 1, QUICK_ATTACK
	dbw 6, ABSORB
	dbw 11, QUICK_ATTACK
	dbw 16, FURY_CUTTER
	dbw 17, PURSUIT
	dbw 23, SCREECH
	dbw 29, RAZOR_LEAF
	dbw 35, AGILITY
	dbw 41, SLAM
	dbw 47, DETECT
	dbw 53, FALSE_SWIPE
	db 0 ; no more level-up moves

SceptileEvosAttacks:
	db 0
	dbw 1, POUND
	dbw 1, LEER
	dbw 1, ABSORB
	dbw 1, QUICK_ATTACK
	dbw 6, ABSORB
	dbw 11, QUICK_ATTACK
	dbw 16, FURY_CUTTER
	dbw 17, PURSUIT
	dbw 23, SCREECH
	dbw 29, RAZOR_LEAF
	dbw 35, AGILITY
	dbw 43, SLAM
	dbw 51, DETECT
	dbw 59, FALSE_SWIPE
	db 0 ; no more level-up moves

TorchicEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, COMBUSKEN
	db 0
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 7, FOCUS_ENERGY
	dbw 10, EMBER
	dbw 16, PECK
	dbw 19, SAND_ATTACK
	dbw 25, FIRE_SPIN
	dbw 28, QUICK_ATTACK
	dbw 34, SLASH
	dbw 37, MIRROR_MOVE
	dbw 43, FLAMETHROWER
	db 0 ; no more level-up moves

CombuskenEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, BLAZIKEN
	db 0
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, FOCUS_ENERGY
	dbw 1, EMBER
	dbw 7, FOCUS_ENERGY
	dbw 13, EMBER
	dbw 16, DOUBLE_KICK
	dbw 17, PECK
	dbw 21, SAND_ATTACK
	dbw 28, SWORDS_DANCE
	dbw 32, QUICK_ATTACK
	dbw 39, SLASH
	dbw 43, MIRROR_MOVE
	dbw 50, CROSS_CHOP
	dbw 58, FLARE_BLITZ
	db 0 ; no more level-up moves

BlazikenEvosAttacks:
	db 0
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, FOCUS_ENERGY
	dbw 1, EMBER
	dbw 7, FOCUS_ENERGY
	dbw 13, EMBER
	dbw 16, DOUBLE_KICK
	dbw 17, PECK
	dbw 21, SAND_ATTACK
	dbw 28, SWORDS_DANCE
	dbw 32, QUICK_ATTACK
	dbw 36, BLAZE_KICK
	dbw 42, SLASH
	dbw 49, MIRROR_MOVE
	dbw 59, CROSS_CHOP
	dbw 70, FLARE_BLITZ
	db 0 ; no more level-up moves

MudkipEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, MARSHTOMP
	db 0
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 6, MUD_SLAP
	dbw 10, WATER_GUN
	dbw 15, BIDE
	dbw 19, FORESIGHT
	dbw 24, WATER_PULSE
	dbw 28, TAKE_DOWN
	dbw 33, WHIRLPOOL
	dbw 37, PROTECT
	dbw 42, HYDRO_PUMP
	dbw 46, ENDEAVOR
	db 0 ; no more level-up moves

MarshtompEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, SWAMPERT
	db 0
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, MUD_SLAP
	dbw 1, WATER_GUN
	dbw 6, MUD_SLAP
	dbw 10, WATER_GUN
	dbw 15, BIDE
	dbw 16, MUD_BOMB
	dbw 20, FORESIGHT
	dbw 25, WATER_PULSE
	dbw 31, TAKE_DOWN
	dbw 37, MUDDY_WATER
	dbw 42, PROTECT
	dbw 46, EARTHQUAKE
	dbw 53, ENDEAVOR
	db 0 ; no more level-up moves

SwampertEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, MUD_SLAP
	dbw 1, WATER_GUN
	dbw 6, MUD_SLAP
	dbw 10, WATER_GUN
	dbw 15, BIDE
	dbw 16, MUD_BOMB
	dbw 20, FORESIGHT
	dbw 25, WATER_PULSE
	dbw 31, TAKE_DOWN
	dbw 39, MUDDY_WATER
	dbw 46, PROTECT
	dbw 52, EARTHQUAKE
	dbw 61, ENDEAVOR
	dbw 70, HAMMER_ARM
	db 0 ; no more level-up moves

PoochyenaEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, MIGHTYENA
	db 0
	dbw 1, TACKLE
	dbw 5, HOWL
	dbw 9, SAND_ATTACK
	dbw 13, BITE
	dbw 19, FORESIGHT
	dbw 21, ROAR
	dbw 25, SWAGGER
	dbw 29, SCARY_FACE
	dbw 33, TAKE_DOWN
	dbw 37, TAUNT
	dbw 41, CRUNCH
	dbw 45, THIEF
	db 0 ; no more level-up moves

MightyenaEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 1, HOWL
	dbw 1, SAND_ATTACK
	dbw 1, BITE
	dbw 5, HOWL
	dbw 9, SAND_ATTACK
	dbw 13, BITE
	dbw 17, FORESIGHT
	dbw 22, ROAR
	dbw 27, SWAGGER
	dbw 32, SCARY_FACE
	dbw 37, TAKE_DOWN
	dbw 42, TAUNT
	dbw 47, CRUNCH
	dbw 52, THIEF
	db 0 ; no more level-up moves

ZigzagoonEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, LINOONE
	db 0
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 5, TAIL_WHIP
	dbw 9, HEADBUTT
	dbw 13, SAND_ATTACK
	dbw 19, ODOR_SLEUTH
	dbw 21, MUD_SLAP
	dbw 25, PIN_MISSILE
	dbw 29, COVET
	dbw 33, FLAIL
	dbw 37, REST
	dbw 41, BELLY_DRUM
	db 0 ; no more level-up moves

LinooneEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 1, HEADBUTT
	dbw 5, TAIL_WHIP
	dbw 9, HEADBUTT
	dbw 13, SAND_ATTACK
	dbw 17, ODOR_SLEUTH
	dbw 22, MUD_SLAP
	dbw 29, FURY_SWIPES
	dbw 35, COVET
	dbw 41, SLASH
	dbw 47, REST
	dbw 53, BELLY_DRUM
	db 0 ; no more level-up moves

LotadEvosAttacks:
	dbbw EVOLVE_LEVEL, 14, LOMBRE
	db 0
	dbw 1, ASTONISH
	dbw 3, GROWL
	dbw 7, ABSORB
	dbw 13, ANCIENTPOWER
	dbw 21, MIST
	dbw 31, RAIN_DANCE
	dbw 43, MEGA_DRAIN
	db 0 ; no more level-up moves

LombreEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, LUDICOLO
	db 0
	dbw 1, ASTONISH
	dbw 3, GROWL
	dbw 7, ABSORB
	dbw 13, ANCIENTPOWER
	dbw 19, HEADBUTT
	dbw 25, FURY_SWIPES
	dbw 31, WATER_GUN
	dbw 37, THIEF
	dbw 43, ENCORE
	dbw 49, HYDRO_PUMP
	db 0 ; no more level-up moves

LudicoloEvosAttacks:
	db 0
	dbw 1, ASTONISH
	dbw 1, GROWL
	dbw 1, ABSORB
	dbw 1, ANCIENTPOWER
	db 0 ; no more level-up moves

TaillowEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, SWELLOW
	db 0
	dbw 1, PECK
	dbw 1, GROWL
	dbw 4, FOCUS_ENERGY
	dbw 8, QUICK_ATTACK
	dbw 13, WING_ATTACK
	dbw 19, DOUBLE_TEAM
	dbw 26, ENDEAVOR
	dbw 34, AERIAL_ACE
	dbw 43, AGILITY
	db 0 ; no more level-up moves

SwellowEvosAttacks:
	db 0
	dbw 1, PECK
	dbw 1, GROWL
	dbw 4, FOCUS_ENERGY
	dbw 8, QUICK_ATTACK
	dbw 13, WING_ATTACK
	dbw 19, DOUBLE_TEAM
	dbw 28, ENDEAVOR
	dbw 38, AERIAL_ACE
	dbw 49, AGILITY
	db 0 ; no more level-up moves

WingullEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, PELIPPER
	db 0
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 7, SUPERSONIC
	dbw 13, WING_ATTACK
	dbw 21, MIST
	dbw 31, QUICK_ATTACK
	dbw 43, PURSUIT
	dbw 55, AGILITY
	db 0 ; no more level-up moves

PelipperEvosAttacks:
	db 0
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, WING_ATTACK
	dbw 3, WATER_GUN ; yes, Game Freak actually duped water gun in gen 3
	dbw 7, SUPERSONIC
	dbw 13, WING_ATTACK ; yes, this too
	dbw 21, MIST
	dbw 25, PROTECT
	dbw 61, HYDRO_PUMP
	db 0 ; no more level-up moves

RaltsEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, KIRLIA
	db 0
	dbw 1, GROWL
	dbw 6, CONFUSION
	dbw 11, DOUBLE_TEAM
	dbw 16, TELEPORT
	dbw 21, PSYCHIC_M
	dbw 26, CALM_MIND
	dbw 36, FUTURE_SIGHT
	dbw 41, HYPNOSIS
	dbw 46, DREAM_EATER
	db 0 ; no more level-up moves

KirliaEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, GARDEVOIR
	db 0
	dbw 1, GROWL
	dbw 1, CONFUSION
	dbw 1, DOUBLE_TEAM
	dbw 1, TELEPORT
	dbw 26, PSYCHIC_M
	dbw 32, CALM_MIND
	dbw 40, FUTURE_SIGHT
	dbw 47, HYPNOSIS
	dbw 54, DREAM_EATER
	db 0 ; no more level-up moves

GardevoirEvosAttacks:
	db 0
	dbw 1, GROWL
	dbw 1, CONFUSION
	dbw 1, DOUBLE_TEAM
	dbw 1, TELEPORT
	dbw 26, PSYCHIC_M
	dbw 32, CALM_MIND
	dbw 42, FUTURE_SIGHT
	dbw 51, HYPNOSIS
	dbw 60, DREAM_EATER
	db 0 ; no more level-up moves

SurskitEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, MASQUERAIN
	db 0
	dbw 1, BUBBLE
	dbw 7, QUICK_ATTACK
	dbw 13, SWEET_SCENT
	dbw 19, AQUA_JET
	dbw 25, BUBBLEBEAM
	dbw 31, AGILITY
	dbw 37, MIST
	dbw 37, HAZE
	dbw 41, BATON_PASS
	db 0 ; no more level-up moves

MasquerainEvosAttacks:
	db 0
	dbw 1, BUBBLE
	dbw 1, QUICK_ATTACK
	dbw 1, SWEET_SCENT
	dbw 1, AQUA_JET
	dbw 7, QUICK_ATTACK
	dbw 13, SWEET_SCENT
	dbw 19, AQUA_JET
	dbw 26, GUST
	dbw 33, SCARY_FACE
	dbw 40, STUN_SPORE
	dbw 45, BUG_BUZZ
	dbw 51, WHIRLWIND
	dbw 58, QUIVER_DANCE
	db 0 ; no more level-up moves

WhismurEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, LOUDRED
	db 0
	dbw 1, POUND
	dbw 5, ENCORE
	dbw 11, ASTONISH
	dbw 15, HOWL
	dbw 21, SUPERSONIC
	dbw 25, STOMP
	dbw 31, SCREECH
	dbw 35, ROAR
	dbw 41, REST
	dbw 41, SLEEP_TALK
	dbw 45, PERISH_SONG
	db 0 ; no more level-up moves

LoudredEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, EXPLOUD
	db 0
	dbw 1, POUND
	dbw 1, ENCORE
	dbw 1, ASTONISH
	dbw 1, HOWL
	dbw 23, SUPERSONIC
	dbw 29, STOMP
	dbw 37, SCREECH
	dbw 43, ROAR
	dbw 51, REST
	dbw 51, SLEEP_TALK
	dbw 57, PERISH_SONG
	db 0 ; no more level-up moves

ExploudEvosAttacks:
	db 0
	dbw 1, POUND
	dbw 1, ENCORE
	dbw 1, ASTONISH
	dbw 1, HOWL
	dbw 23, SUPERSONIC
	dbw 29, STOMP
	dbw 37, SCREECH
	dbw 40, HYPER_BEAM
	dbw 45, ROAR
	dbw 55, REST
	dbw 55, SLEEP_TALK
	dbw 63, PERISH_SONG
	db 0 ; no more level-up moves

MakuhitaEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, HARIYAMA
	db 0
	dbw 1, TACKLE
	dbw 1, FOCUS_ENERGY
	dbw 4, SAND_ATTACK
	dbw 10, ARM_THRUST
	dbw 13, VITAL_THROW
	dbw 19, FAKE_OUT
	dbw 22, WHIRLWIND
	dbw 28, KNOCK_OFF
	dbw 31, SECRET_POWER
	dbw 37, BELLY_DRUM
	dbw 40, ENDURE
	dbw 46, SEISMIC_TOSS
	dbw 49, REVERSAL
	db 0 ; no more level-up moves

HariyamaEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 1, FOCUS_ENERGY
	dbw 1, SAND_ATTACK
	dbw 1, ARM_THRUST
	dbw 13, VITAL_THROW
	dbw 19, FAKE_OUT
	dbw 22, WHIRLWIND
	dbw 29, KNOCK_OFF
	dbw 33, SECRET_POWER
	dbw 40, BELLY_DRUM
	dbw 44, ENDURE
	dbw 51, SEISMIC_TOSS
	dbw 55, REVERSAL
	db 0 ; no more level-up moves

AzurillEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, MARILL
	db 0
	dbw 1, SPLASH
	dbw 3, CHARM
	dbw 6, TAIL_WHIP
	dbw 10, BUBBLE
	dbw 15, SLAM
	dbw 21, WATER_GUN
	db 0 ; no more level-up moves

SkittyEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, DELCATTY
	db 0
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 3, TAIL_WHIP
	dbw 7, ATTRACT
	dbw 13, SING
	dbw 15, DOUBLESLAP
	dbw 19, ASSIST
	dbw 25, CHARM
	dbw 27, FEINT_ATTACK
	dbw 31, COVET
	dbw 37, HEAL_BELL
	dbw 39, DOUBLE_EDGE
	db 0 ; no more level-up moves

DelcattyEvosAttacks:
	db 0
	dbw 1, GROWL
	dbw 1, ATTRACT
	dbw 1, SING
	dbw 1, DOUBLE_EDGE
	db 0 ; no more level-up moves

SableyeEvosAttacks:
	db 0
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 5, FORESIGHT
	dbw 9, NIGHT_SHADE
	dbw 13, ASTONISH
	dbw 17, FURY_SWIPES
	dbw 21, FAKE_OUT
	dbw 25, DETECT
	dbw 29, FEINT_ATTACK
	dbw 33, KNOCK_OFF
	dbw 37, CONFUSE_RAY
	dbw 41, SHADOW_BALL
	dbw 45, MEAN_LOOK
	db 0 ; no more level-up moves

AronEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, LAIRON
	db 0
	dbw 1, TACKLE
	dbw 4, HARDEN
	dbw 7, MUD_SLAP
	dbw 13, METAL_CLAW
	dbw 17, IRON_DEFENSE
	dbw 21, ROAR
	dbw 25, TAKE_DOWN
	dbw 34, PROTECT
	dbw 39, METAL_SOUND
	dbw 44, DOUBLE_EDGE
	db 0 ; no more level-up moves

LaironEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, AGGRON
	db 0
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 1, MUD_SLAP
	dbw 1, HEADBUTT
	dbw 13, METAL_CLAW
	dbw 17, IRON_DEFENSE
	dbw 21, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_TAIL
	dbw 37, PROTECT
	dbw 45, METAL_SOUND
	dbw 53, DOUBLE_EDGE
	db 0 ; no more level-up moves

AggronEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 1, MUD_SLAP
	dbw 1, HEADBUTT
	dbw 13, METAL_CLAW
	dbw 17, IRON_DEFENSE
	dbw 21, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_TAIL
	dbw 37, PROTECT
	dbw 50, METAL_SOUND
	dbw 63, DOUBLE_EDGE
	db 0 ; no more level-up moves

ElectrikeEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, MANECTRIC
	db 0
	dbw 1, TACKLE
	dbw 4, THUNDER_WAVE
	dbw 9, LEER
	dbw 12, HOWL
	dbw 17, QUICK_ATTACK
	dbw 20, SPARK
	dbw 25, ODOR_SLEUTH
	dbw 28, ROAR
	dbw 33, BITE
	dbw 36, THUNDER
	dbw 41, CHARGE
	db 0 ; no more level-up moves

ManectricEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 1, THUNDER_WAVE
	dbw 1, LEER
	dbw 1, HOWL
	dbw 17, QUICK_ATTACK
	dbw 20, SPARK
	dbw 25, ODOR_SLEUTH
	dbw 31, ROAR
	dbw 39, BITE
	dbw 45, THUNDER
	dbw 53, CHARGE
	db 0 ; no more level-up moves

RoseliaEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, ROSERADE
	db 0
	dbw 1, ABSORB
	dbw 4, GROWTH
	dbw 7, STUN_SPORE
	dbw 10, MEGA_DRAIN
	dbw 13, POISON_STING
	dbw 16, LEECH_SEED
	dbw 19, SLEEP_POWDER
	dbw 22, GIGA_DRAIN
	dbw 25, SWEET_SCENT
	dbw 28, TOXIC
	dbw 31, SYNTHESIS
	dbw 34, EXTRASENSORY
	dbw 37, PETAL_DANCE
	dbw 40, SLUDGE_BOMB
	dbw 43, LEAF_STORM
	db 0 ; no more level-up moves

WailmerEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, WAILORD
	db 0
	dbw 1, SPLASH
	dbw 1, GROWL
	dbw 10, WATER_GUN
	dbw 14, ROLLOUT
	dbw 19, WHIRLPOOL
	dbw 23, ASTONISH
	dbw 28, WATER_PULSE
	dbw 32, MIST
	dbw 37, REST
	dbw 46, AMNESIA
	dbw 50, HYDRO_PUMP
	db 0 ; no more level-up moves

WailordEvosAttacks:
	db 0
	dbw 1, SPLASH
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, ROLLOUT
	dbw 19, WHIRLPOOL
	dbw 23, ASTONISH
	dbw 28, WATER_PULSE
	dbw 32, MIST
	dbw 37, REST
	dbw 52, AMNESIA
	dbw 59, HYDRO_PUMP
	db 0 ; no more level-up moves

TrapinchEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, VIBRAVA
	db 0
	dbw 1, BITE
	dbw 9, SAND_ATTACK
	dbw 19, FEINT_ATTACK
	dbw 25, SAND_TOMB
	dbw 33, CRUNCH
	dbw 41, DIG
	dbw 49, SANDSTORM
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

VibravaEvosAttacks:
	dbbw EVOLVE_LEVEL, 45, FLYGON
	db 0
	dbw 1, BITE
	dbw 1, SAND_ATTACK
	dbw 1, FEINT_ATTACK
	dbw 1, SAND_TOMB
	dbw 33, CRUNCH
	dbw 35, DRAGONBREATH
	dbw 41, SCREECH
	dbw 49, SANDSTORM
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

FlygonEvosAttacks:
	db 0
	dbw 1, BITE
	dbw 1, SAND_ATTACK
	dbw 1, FEINT_ATTACK
	dbw 1, SAND_TOMB
	dbw 33, CRUNCH
	dbw 35, DRAGONBREATH
	dbw 41, SCREECH
	dbw 53, SANDSTORM
	dbw 65, HYPER_BEAM
	dbw 72, DRAGON_PULSE
	db 0 ; no more level-up moves

SwabluEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, ALTARIA
	db 0
	dbw 1, PECK
	dbw 1, GROWL
	dbw 8, ASTONISH
	dbw 11, SING
	dbw 18, FURY_ATTACK
	dbw 21, SAFEGUARD
	dbw 28, MIST
	dbw 31, TAKE_DOWN
	dbw 38, MIRROR_MOVE
	dbw 41, HEAL_BELL
	dbw 48, PERISH_SONG
	db 0 ; no more level-up moves

AltariaEvosAttacks:
	db 0
	dbw 1, PECK
	dbw 1, GROWL
	dbw 1, ASTONISH
	dbw 1, SING
	dbw 18, FURY_ATTACK
	dbw 21, SAFEGUARD
	dbw 28, MIST
	dbw 31, TAKE_DOWN
	dbw 35, DRAGONBREATH
	dbw 40, DRAGON_DANCE
	dbw 45, HEAL_BELL
	dbw 54, PERISH_SONG
	dbw 59, SKY_ATTACK
	dbw 66, DRAGON_PULSE
	db 0 ; no more level-up moves

LileepEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, CRADILY
	db 0
	dbw 1, ASTONISH
	dbw 1, CONSTRICT
	dbw 5, ACID
	dbw 9, LEECH_SEED
	dbw 13, CONFUSE_RAY
	dbw 17, ANCIENTPOWER
	dbw 21, BRINE
	dbw 26, MEGA_DRAIN
	dbw 31, AMNESIA
	dbw 36, MIRROR_COAT
	dbw 41, GIGA_DRAIN
	dbw 46, RECOVER
	dbw 52, ROCK_SLIDE
	db 0 ; no more level-up moves

CradilyEvosAttacks:
	db 0
	dbw 1, ASTONISH
	dbw 1, CONSTRICT
	dbw 5, ACID
	dbw 9, LEECH_SEED
	dbw 13, CONFUSE_RAY
	dbw 17, ANCIENTPOWER
	dbw 21, BRINE
	dbw 26, MEGA_DRAIN
	dbw 31, AMNESIA
	dbw 36, MIRROR_COAT
	dbw 44, GIGA_DRAIN
	dbw 52, RECOVER
	dbw 61, ROCK_SLIDE
	db 0 ; no more level-up moves

FeebasEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, MILOTIC
	db 0
	dbw 1, SPLASH
	dbw 10, TACKLE
	dbw 15, FLAIL
	db 0 ; no more level-up moves

MiloticEvosAttacks:
	db 0
	dbw 1, WATER_GUN
	dbw 5, WRAP
	dbw 15, HEAL_BELL
	dbw 20, WATER_PULSE
	dbw 25, TWISTER
	dbw 30, RECOVER
	dbw 35, RAIN_DANCE
	dbw 40, HYDRO_PUMP
	dbw 45, ATTRACT
	dbw 50, SAFEGUARD
	db 0 ; no more level-up moves

DuskullEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, DUSCLOPS
	db 0
	dbw 1, LEER
	dbw 1, NIGHT_SHADE
	dbw 5, DISABLE
	dbw 9, ASTONISH
	dbw 12, FORESIGHT
	dbw 16, SHADOW_SNEAK
	dbw 23, CONFUSE_RAY
	dbw 27, PURSUIT
	dbw 34, CURSE
	dbw 38, SHADOW_BALL
	dbw 45, WILL_O_WISP
	dbw 49, MEAN_LOOK
	dbw 54, FUTURE_SIGHT
	db 0 ; no more level-up moves

DusclopsEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, DUSKNOIR
	db 0
	dbw 1, BIND
	dbw 1, LEER
	dbw 1, NIGHT_SHADE
	dbw 1, DISABLE
	dbw 5, DISABLE
	dbw 9, ASTONISH
	dbw 12, FORESIGHT
	dbw 16, SHADOW_SNEAK
	dbw 23, CONFUSE_RAY
	dbw 27, PURSUIT
	dbw 34, CURSE
	dbw 37, SHADOW_PUNCH
	dbw 39, SHADOW_BALL
	dbw 47, WILL_O_WISP
	dbw 52, MEAN_LOOK
	dbw 58, FUTURE_SIGHT
	db 0 ; no more level-up moves

AbsolEvosAttacks:
	db 0
	dbw 1, SCRATCH
	dbw 5, LEER
	dbw 9, TAUNT
	dbw 13, QUICK_ATTACK
	dbw 17, RAZOR_WIND
	dbw 21, BITE
	dbw 26, SWORDS_DANCE
	dbw 31, DOUBLE_TEAM
	dbw 36, SLASH
	dbw 41, FUTURE_SIGHT
	dbw 46, PERISH_SONG
	db 0 ; no more level-up moves

SnoruntEvosAttacks:
	dbbw EVOLVE_ITEM, ICE_STONE, FROSLASS
	db 0
	dbw 1, POWDER_SNOW
	dbw 1, LEER
	dbw 7, DOUBLE_TEAM
	dbw 10, BITE
	dbw 16, ICY_WIND
	dbw 19, HEADBUTT
	dbw 25, PROTECT
	dbw 38, CRUNCH
	dbw 34, ICE_PUNCH
	dbw 37, ICE_BEAM
	dbw 43, BLIZZARD
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
	dbw 36, SWAGGER
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
	dbw 5, BITE
	dbw 9, LEER
	dbw 17, HEADBUTT
	dbw 21, FOCUS_ENERGY
	dbw 25, EMBER
	dbw 33, DRAGONBREATH
	dbw 37, SCARY_FACE
	dbw 41, CRUNCH
	dbw 39, DRAGON_CLAW
	dbw 53, DOUBLE_EDGE
	db 0 ; no more level-up moves

ShelgonEvosAttacks:
	dbbw EVOLVE_LEVEL, 50, SALAMENCE
	db 0
	dbw 1, RAGE
	dbw 1, BITE
	dbw 1, LEER
	dbw 1, HEADBUTT
	dbw 21, FOCUS_ENERGY
	dbw 25, EMBER
	dbw 30, PROTECT
	dbw 38, DRAGONBREATH
	dbw 47, SCARY_FACE
	dbw 56, CRUNCH
	dbw 69, DRAGON_CLAW
	dbw 78, DOUBLE_EDGE
	db 0 ; no more level-up moves

SalamenceEvosAttacks:
	db 0
	dbw 1, RAGE
	dbw 1, BITE
	dbw 1, LEER
	dbw 1, HEADBUTT
	dbw 21, FOCUS_ENERGY
	dbw 25, EMBER
	dbw 30, PROTECT
	dbw 38, DRAGONBREATH
	dbw 47, SCARY_FACE
	dbw 50, FLY
	dbw 61, CRUNCH
	dbw 79, DRAGON_CLAW
	dbw 93, DOUBLE_EDGE
	dbw 100, DRACO_METEOR
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
	dbw 20, CONFUSION
	dbw 20, METAL_CLAW
	dbw 26, SCARY_FACE
	dbw 32, PURSUIT
	dbw 38, PSYCHIC_M
	dbw 44, IRON_DEFENSE
	dbw 50, METEOR_MASH
	dbw 56, AGILITY
	dbw 62, HYPER_BEAM
	db 0 ; no more level-up moves

MetagrossEvosAttacks:
	db 0
	dbw 1, TAKE_DOWN
	dbw 1, CONFUSION
	dbw 1, METAL_CLAW
	dbw 1, SCARY_FACE
	dbw 32, PURSUIT
	dbw 38, PSYCHIC_M
	dbw 44, IRON_DEFENSE
	dbw 55, METEOR_MASH
	dbw 66, AGILITY
	dbw 77, HYPER_BEAM
	db 0 ; no more level-up moves

LatiosEvosAttacks:
	db 0
	dbw 1, PSYWAVE
	dbw 5, SAFEGUARD
	dbw 10, DRAGONBREATH
	dbw 15, PROTECT
	dbw 20, ZEN_HEADBUTT
	dbw 25, RECOVER
	dbw 30, PSYSHOCK
	dbw 35, DRAGON_DANCE
	dbw 40, PSYCHIC_M
	dbw 45, DRAGON_PULSE
	dbw 50, AURA_SPHERE
	dbw 55, DRACO_METEOR
	db 0 ; no more level-up moves

KyogreEvosAttacks:
	db 0
	dbw 1, WATER_GUN
	dbw 5, SCARY_FACE
	dbw 15, ANCIENTPOWER
	dbw 20, BODY_SLAM
	dbw 30, AQUA_RING
	dbw 35, ICE_BEAM
	dbw 45, CALM_MIND
	dbw 50, HYDRO_PUMP
	dbw 60, REST
	dbw 65, THUNDER
	dbw 75, MUDDY_WATER
	dbw 80, WATER_SPOUT
	db 0 ; no more level-up moves

GroudonEvosAttacks:
	db 0
	dbw 1, MUD_SLAP
	dbw 5, SCARY_FACE
	dbw 15, ANCIENTPOWER
	dbw 20, SLASH
	dbw 30, HAMMER_ARM
	dbw 35, EARTHQUAKE
	dbw 45, CURSE
	dbw 50, FIRE_BLAST
	dbw 60, REST
	dbw 65, SOLARBEAM
	dbw 75, EARTH_POWER
	dbw 80, FISSURE
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
	dbw 1, ASTONISH
	dbw 3, MUD_SLAP
	dbw 8, POISON_STING
	dbw 10, TAUNT
	dbw 15, PURSUIT
	dbw 17, FEINT_ATTACK
	dbw 22, REVENGE
	dbw 24, SWAGGER
	dbw 29, MUD_BOMB
	dbw 31, SUCKER_PUNCH
	dbw 36, NASTY_PLOT
	dbw 38, POISON_FANG ; Poison Jab
	dbw 43, SLUDGE_BOMB
	db 0 ; no more level-up moves

ToxicroakEvosAttacks:
	db 0
	dbw 1, ASTONISH
	dbw 1, MUD_SLAP
	dbw 1, POISON_STING
	dbw 10, TAUNT
	dbw 15, PURSUIT
	dbw 17, FEINT_ATTACK
	dbw 22, REVENGE
	dbw 24, SWAGGER
	dbw 29, MUD_BOMB
	dbw 31, SUCKER_PUNCH
	dbw 36, NASTY_PLOT
	dbw 41, POISON_FANG ; Poison Jab
	dbw 49, SLUDGE_BOMB
	db 0 ; no more level-up moves

LeafeonEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 8, SAND_ATTACK
	dbw 15, RAZOR_LEAF
	dbw 22, QUICK_ATTACK
	dbw 29, SYNTHESIS
	dbw 43, GIGA_DRAIN
	dbw 50, SOLARBEAM ; replacement for Last Resort
	dbw 57, SING ; replacement for Grasswhistle
	dbw 64, SUNNY_DAY
	dbw 78, SWORDS_DANCE
	db 0 ; no more level-up moves

GlaceonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 5, SAND_ATTACK
	dbw 9, ICY_WIND
	dbw 13, QUICK_ATTACK
	dbw 17, BITE
	dbw 17, AURORA_BEAM ; No Ice Fang, no PSS either so doesn't matter.
	dbw 25, ICE_SHARD
	dbw 29, BARRIER
	dbw 33, MIRROR_COAT
	dbw 41, ICE_BEAM ; Replacement for Last Resort, and because Ice Beam isn't a TM this gen, and fuck the postgame tutor.
	dbw 45, BLIZZARD
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
	db 0 ; no more level-up moves

FroslassEvosAttacks:
	db 0
	dbw 1, POWDER_SNOW
	dbw 1, LEER
	dbw 1, DOUBLE_TEAM
	dbw 1, ICE_SHARD
	dbw 5, DOUBLE_TEAM
	dbw 10, ICE_SHARD
	dbw 14, ICY_WIND
	dbw 19, ASTONISH
	dbw 23, DRAININGKISS
	dbw 28, WILL_O_WISP
	dbw 32, CONFUSE_RAY
	dbw 37, WAKE_UP_SLAP
	dbw 41, SHADOW_BALL
	dbw 47, BLIZZARD
	dbw 54, DESTINY_BOND
	db 0 ; no more level-up moves

DarkraiEvosAttacks:
	db 0
	dbw 1, DISABLE
	dbw 1, NIGHT_SHADE
	dbw 11, QUICK_ATTACK
	dbw 20, HYPNOSIS
	dbw 29, KNOCK_OFF
	dbw 38, NIGHTMARE
	dbw 47, DOUBLE_TEAM
	dbw 57, HAZE
	dbw 66, DARK_VOID
	dbw 75, NASTY_PLOT
	dbw 84, DREAM_EATER
	dbw 93, SUCKER_PUNCH
	db 0 ; no more level-up moves

PansageEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, SIMISAGE
	db 0
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 4, LEER
	dbw 7, LICK
	dbw 10, VINE_WHIP
	dbw 13, FURY_SWIPES
	dbw 16, LEECH_SEED
	dbw 19, BITE
	dbw 22, RAZOR_LEAF
	dbw 25, SWAGGER
	dbw 32, NEEDLE_ARM
	dbw 44, CRUNCH
	dbw 52, LEAF_STORM
	db 0 ; no more level-up moves

SimisageEvosAttacks:
	db 0
	dbw 1, LEER
	dbw 1, LICK
	dbw 1, FURY_SWIPES
	dbw 1, LEAF_STORM
	db 0 ; no more level-up moves

DrilburEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, EXCADRILL
	db 0
	dbw 1, SCRATCH
	dbw 1, MUD_SLAP ; Mud Sport
	dbw 5, RAPID_SPIN
	dbw 12, FURY_SWIPES
	dbw 15, METAL_CLAW
	dbw 19, DIG
	dbw 22, HONE_CLAWS
	dbw 26, SLASH
	dbw 29, ROCK_SLIDE
	dbw 33, EARTHQUAKE
	dbw 36, SWORDS_DANCE
	dbw 40, SANDSTORM
	dbw 47, FISSURE
	db 0 ; no more level-up moves

ExcadrillEvosAttacks:
	db 0
	dbw 1, SCRATCH
	dbw 1, MUD_SLAP ; Mud Sport
	dbw 1, RAPID_SPIN
	dbw 12, FURY_SWIPES
	dbw 15, METAL_CLAW
	dbw 19, DIG
	dbw 22, HONE_CLAWS
	dbw 26, SLASH
	dbw 29, ROCK_SLIDE
	dbw 31, HORN_DRILL
	dbw 36, EARTHQUAKE
	dbw 42, SWORDS_DANCE
	dbw 49, SANDSTORM
	dbw 62, FISSURE
	db 0 ; no more level-up moves

SandileEvosAttacks:
	dbbw EVOLVE_LEVEL, 29, KROKOROK
	db 0
	dbw 1, POWER_TRIP
	dbw 1, LEER
	dbw 3, SAND_ATTACK
	dbw 6, HONE_CLAWS
	dbw 9, BITE
	dbw 12, SAND_TOMB
	dbw 15, ASSURANCE
	dbw 18, DIG
	dbw 21, SWAGGER
	dbw 24, SCARY_FACE
	dbw 27, CRUNCH
	dbw 30, SANDSTORM
	dbw 33, FOUL_PLAY
	dbw 36, EARTHQUAKE
	dbw 39, THRASH
	db 0 ; no more level-up moves

KrokorokEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, KROOKODILE
	db 0
	dbw 1, POWER_TRIP
	dbw 1, LEER
	dbw 1, SAND_ATTACK
	dbw 1, HONE_CLAWS
	dbw 9, BITE
	dbw 12, SAND_TOMB
	dbw 15, ASSURANCE
	dbw 18, DIG
	dbw 21, SWAGGER
	dbw 24, SCARY_FACE
	dbw 27, CRUNCH
	dbw 32, SANDSTORM
	dbw 35, FOUL_PLAY
	dbw 42, EARTHQUAKE
	dbw 47, THRASH
	db 0 ; no more level-up moves

KrookodileEvosAttacks:
	db 0
	dbw 1, POWER_TRIP
	dbw 1, LEER
	dbw 1, SAND_ATTACK
	dbw 1, HONE_CLAWS
	dbw 9, BITE
	dbw 12, SAND_TOMB
	dbw 15, ASSURANCE
	dbw 18, DIG
	dbw 21, SWAGGER
	dbw 24, SCARY_FACE
	dbw 27, CRUNCH
	dbw 32, SANDSTORM
	dbw 35, FOUL_PLAY
	dbw 44, EARTHQUAKE
	dbw 51, THRASH
	dbw 58, OUTRAGE
	db 0 ; no more level-up moves

DucklettEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, SWANNA
	db 0
	dbw 1, WATER_GUN
	dbw 9, WING_ATTACK
	dbw 13, WATER_PULSE
	dbw 15, AERIAL_ACE
	dbw 19, BUBBLEBEAM
	dbw 24, AQUA_RING
	dbw 27, AIR_SLASH
	dbw 30, ROOST
	dbw 34, RAIN_DANCE
	dbw 41, BRAVE_BIRD
	db 0 ; no more level-up  moves

SwannaEvosAttacks:
	db 0
	dbw 1, WATER_GUN
	dbw 1, WING_ATTACK
	dbw 13, WATER_PULSE
	dbw 15, AERIAL_ACE
	dbw 19, BUBBLEBEAM
	dbw 24, AQUA_RING
	dbw 27, AIR_SLASH
	dbw 30, ROOST
	dbw 34, RAIN_DANCE
	dbw 47, BRAVE_BIRD
	db 0 ; no more level-up  moves

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
	dbw 39, CRUNCH
	dbw 44, THUNDERBOLT
	dbw 49, ZAP_CANNON
	dbw 54, THRASH
	db 0 ; no more level-up moves

EelektrossEvosAttacks:
	db 0
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
	dbw 7, FIRE_SPIN
	dbw 10, CONFUSE_RAY
	dbw 13, NIGHT_SHADE
	dbw 16, WILL_O_WISP
	dbw 20, FLAME_WHEEL
	dbw 38, CURSE
	dbw 49, SHADOW_BALL
	dbw 55, PAIN_SPLIT
	dbw 61, OVERHEAT
	db 0 ; no more level-up  moves

LampentEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, CHANDELURE
	db 0
	dbw 1, EMBER
	dbw 1, ASTONISH
	dbw 3, MINIMIZE
	dbw 7, FIRE_SPIN
	dbw 10, CONFUSE_RAY
	dbw 13, NIGHT_SHADE
	dbw 16, WILL_O_WISP
	dbw 20, FLAME_WHEEL
	dbw 38, CURSE
	dbw 53, SHADOW_BALL
	dbw 61, PAIN_SPLIT
	dbw 69, OVERHEAT
	db 0 ; no more level-up  moves

ChandelureEvosAttacks:
	db 0
	dbw 1, SMOG
	dbw 1, CONFUSE_RAY
	dbw 1, FLAME_WHEEL
	db 0 ; no more level-up  moves

ClauncherEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, CLAWITZER
	db 0
	dbw 1, SPLASH
	dbw 1, WATER_GUN
	dbw 9, VICEGRIP
	dbw 12, BUBBLE
	dbw 16, FLAIL
	dbw 20, BUBBLEBEAM
	dbw 25, SWORDS_DANCE
	dbw 30, CRABHAMMER
	dbw 34, WATER_PULSE
	dbw 43, AQUA_JET
	dbw 48, MUDDY_WATER
	db 0 ; no more level-up moves

ClawitzerEvosAttacks:
	db 0
	dbw 1, DRAGON_PULSE
	dbw 1, AURA_SPHERE
	dbw 1, SPLASH
	dbw 1, WATER_GUN
	dbw 9, VICEGRIP
	dbw 12, BUBBLE
	dbw 16, FLAIL
	dbw 20, BUBBLEBEAM
	dbw 15, SWORDS_DANCE
	dbw 30, CRABHAMMER
	dbw 34, WATER_PULSE
	dbw 47, AQUA_JET
	dbw 53, MUDDY_WATER
	dbw 63, DRAGON_PULSE
	dbw 67, AURA_SPHERE
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
	dbw 22, SHOCK_WAVE
	dbw 25, RAZOR_WIND
	dbw 31, THUNDER_WAVE
	dbw 35, CHARGE_BEAM
	dbw 40, BULLDOZE
	dbw 45, THUNDERBOLT
	db 0 ; no more level-up moves

HelioliskEvosAttacks:
	db 0
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
	dbw 1, TAIL_WHIP
	dbw 1, TACKLE
	dbw 5, SAND_ATTACK
	dbw 13, QUICK_ATTACK
	dbw 17, SWIFT
	dbw 20, DRAININGKISS
	dbw 33, LIGHT_SCREEN
	dbw 37, MOONBLAST
	dbw 41, MOONLIGHT ; replacement for Last Resort
	dbw 45, PSYCH_UP
	db 0 ; no more level-up moves

GoomyEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, SLIGGOO
	db 0
	dbw 1, TACKLE
	dbw 1, BUBBLE
	dbw 5, ABSORB
	dbw 9, PROTECT
	dbw 13, BIDE
	dbw 18, DRAGONBREATH
	dbw 25, RAIN_DANCE
	dbw 28, FLAIL
	dbw 32, BODY_SLAM
	dbw 38, MUDDY_WATER
	dbw 42, DRAGON_PULSE
	db 0 ; no more level-up moves

SliggooEvosAttacks:
	dbbw EVOLVE_LEVEL, 50, GOODRA
	db 0
	dbw 1, TACKLE
	dbw 1, BUBBLE
	dbw 1, ABSORB
	dbw 9, PROTECT
	dbw 13, BIDE
	dbw 18, DRAGONBREATH
	dbw 25, RAIN_DANCE
	dbw 28, FLAIL
	dbw 32, BODY_SLAM
	dbw 38, MUDDY_WATER
	dbw 47, DRAGON_PULSE
	db 0 ; no more level-up moves

GoodraEvosAttacks:
	db 0
	dbw 1, TACKLE
	dbw 1, BUBBLE
	dbw 1, ABSORB
	dbw 1, PROTECT
	dbw 13, BIDE
	dbw 18, DRAGONBREATH
	dbw 25, RAIN_DANCE
	dbw 28, FLAIL
	dbw 32, BODY_SLAM
	dbw 38, MUDDY_WATER
	dbw 47, DRAGON_PULSE
	dbw 55, OUTRAGE
	db 0 ; no more level-up moves

CrabrawlerEvosAttacks:
	dbbw EVOLVE_ITEM, ICE_STONE, CRABOMINABLE
	db 0
	dbw 1, BUBBLE
	dbw 5, ROCK_SMASH
	dbw 9, LEER
	dbw 13, PURSUIT
	dbw 17, BUBBLEBEAM
	dbw 22, DIZZY_PUNCH
	dbw 25, REVERSAL
	dbw 29, CRABHAMMER
	dbw 33, IRON_DEFENSE
	dbw 37, DYNAMICPUNCH
	dbw 42, CLOSE_COMBAT
	db 0 ; no more level-up moves

CrabominableEvosAttacks:
	db 0
	dbw 1, ICE_HAMMER
	dbw 1, BUBBLE
	dbw 1, ROCK_SMASH
	dbw 1, CLOSE_COMBAT
	db 0 ; no more level-up moves

CutieflyEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, RIBOMBEE
	db 0
	dbw 1, ABSORB
	dbw 7, STUN_SPORE
	dbw 16, DRAININGKISS
	dbw 21, SWEET_SCENT
	dbw 31, DAZZLINGLEAM
	dbw 41, QUIVER_DANCE
	db 0 ; no more level-up moves

RibombeeEvosAttacks:
	db 0
	dbw 1, ABSORB
	dbw 1, POLLEN_PUFF
	dbw 7, STUN_SPORE
	dbw 16, DRAININGKISS
	dbw 20, POLLEN_PUFF
	dbw 21, SWEET_SCENT
	dbw 35, DAZZLINGLEAM
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
