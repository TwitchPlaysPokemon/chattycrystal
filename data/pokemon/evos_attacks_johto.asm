SECTION "Evolutions and Attacks 2", ROMX

EvosAttacksPointers2::
	dw ChikoritaEvosAttacks
	dw BayleefEvosAttacks
	dw MeganiumEvosAttacks
	dw CyndaquilEvosAttacks
	dw QuilavaEvosAttacks
	dw TyphlosionEvosAttacks
	dw TotodileEvosAttacks
	dw CroconawEvosAttacks
	dw FeraligatrEvosAttacks
	dw SentretEvosAttacks
	dw FurretEvosAttacks
	dw HoothootEvosAttacks
	dw NoctowlEvosAttacks
	dw LedybaEvosAttacks
	dw LedianEvosAttacks
	dw SpinarakEvosAttacks
	dw AriadosEvosAttacks
	dw CrobatEvosAttacks
	dw ChinchouEvosAttacks
	dw LanturnEvosAttacks
	dw PichuEvosAttacks
	dw CleffaEvosAttacks
	dw IgglybuffEvosAttacks
	dw TogepiEvosAttacks
	dw TogeticEvosAttacks
	dw NatuEvosAttacks
	dw XatuEvosAttacks
	dw MareepEvosAttacks
	dw FlaaffyEvosAttacks
	dw AmpharosEvosAttacks
	dw BellossomEvosAttacks
	dw MarillEvosAttacks
	dw AzumarillEvosAttacks
	dw SudowoodoEvosAttacks
	dw PolitoedEvosAttacks
	dw HoppipEvosAttacks
	dw SkiploomEvosAttacks
	dw JumpluffEvosAttacks
	dw AipomEvosAttacks
	dw SunkernEvosAttacks
	dw SunfloraEvosAttacks
	dw YanmaEvosAttacks
	dw WooperEvosAttacks
	dw QuagsireEvosAttacks
	dw EspeonEvosAttacks
	dw UmbreonEvosAttacks
	dw MurkrowEvosAttacks
	dw SlowkingEvosAttacks
	dw MisdreavusEvosAttacks
	dw UnownEvosAttacks
	dw WobbuffetEvosAttacks
	dw GirafarigEvosAttacks
	dw PinecoEvosAttacks
	dw ForretressEvosAttacks
	dw DunsparceEvosAttacks
	dw GligarEvosAttacks
	dw SteelixEvosAttacks
	dw SnubbullEvosAttacks
	dw GranbullEvosAttacks
	dw QwilfishEvosAttacks
	dw ScizorEvosAttacks
	dw ShuckleEvosAttacks
	dw HeracrossEvosAttacks
	dw SneaselEvosAttacks
	dw TeddiursaEvosAttacks
	dw UrsaringEvosAttacks
	dw SlugmaEvosAttacks
	dw MagcargoEvosAttacks
	dw SwinubEvosAttacks
	dw PiloswineEvosAttacks
	dw CorsolaEvosAttacks
	dw RemoraidEvosAttacks
	dw OctilleryEvosAttacks
	dw DelibirdEvosAttacks
	dw MantineEvosAttacks
	dw SkarmoryEvosAttacks
	dw HoundourEvosAttacks
	dw HoundoomEvosAttacks
	dw KingdraEvosAttacks
	dw PhanpyEvosAttacks
	dw DonphanEvosAttacks
	dw Porygon2EvosAttacks
	dw StantlerEvosAttacks
	dw SmeargleEvosAttacks
	dw TyrogueEvosAttacks
	dw HitmontopEvosAttacks
	dw SmoochumEvosAttacks
	dw ElekidEvosAttacks
	dw MagbyEvosAttacks
	dw MiltankEvosAttacks
	dw BlisseyEvosAttacks
	dw RaikouEvosAttacks
	dw EnteiEvosAttacks
	dw SuicuneEvosAttacks
	dw LarvitarEvosAttacks
	dw PupitarEvosAttacks
	dw TyranitarEvosAttacks
	dw LugiaEvosAttacks
	dw HoOhEvosAttacks
	dw CelebiEvosAttacks

ChikoritaEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 8, RAZOR_LEAF
	dbw 12, POISONPOWDER
	dbw 15, SYNTHESIS
	dbw 21, REFLECT
	dbw 26, ANCIENTPOWER
	dbw 30, SWEET_SCENT
	dbw 35, LIGHT_SCREEN
	dbw 41, BODY_SLAM
	dbw 45, SAFEGUARD
	dbw 50, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, RAZOR_LEAF
	dbw 12, POISONPOWDER
	dbw 15, SYNTHESIS
	dbw 22, REFLECT
	dbw 29, ANCIENTPOWER
	dbw 35, SWEET_SCENT
	dbw 42, LIGHT_SCREEN
	dbw 49, BODY_SLAM
	dbw 55, SAFEGUARD
	dbw 62, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, REFLECT
	dbw 1, RAZOR_LEAF
	dbw 12, POISONPOWDER
	dbw 15, SYNTHESIS
	dbw 22, REFLECT
	dbw 29, ANCIENTPOWER
	dbw 32, PETAL_DANCE
	dbw 37, SWEET_SCENT
	dbw 44, LIGHT_SCREEN
	dbw 52, BODY_SLAM
	dbw 59, SAFEGUARD
	dbw 67, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	dbbw EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 6, SMOKESCREEN
	dbw 11, EMBER
	dbw 15, QUICK_ATTACK
	dbw 20, DEFENSE_CURL
	dbw 24, FLAME_WHEEL
	dbw 29, SWIFT
	dbw 33, LAVA_PLUME
	dbw 38, ROLLOUT
	dbw 42, FLAMETHROWER
	dbw 48, DOUBLE_EDGE
	dbw 52, FLARE_BLITZ
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 1, SMOKESCREEN
	dbw 11, EMBER
	dbw 17, QUICK_ATTACK
	dbw 22, DEFENSE_CURL
	dbw 28, FLAME_WHEEL
	dbw 33, SWIFT
	dbw 39, LAVA_PLUME
	dbw 44, ROLLOUT
	dbw 50, FLAMETHROWER
	dbw 55, DOUBLE_EDGE
	dbw 61, FLARE_BLITZ
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 1, SMOKESCREEN
	dbw 1, EMBER
	dbw 17, QUICK_ATTACK
	dbw 22, DEFENSE_CURL
	dbw 28, FLAME_WHEEL
	dbw 33, SWIFT
	dbw 40, LAVA_PLUME
	dbw 47, ROLLOUT
	dbw 54, FLAMETHROWER
	dbw 61, DOUBLE_EDGE
	dbw 68, FLARE_BLITZ
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 6, RAGE
	dbw 10, WATER_GUN
	dbw 14, BITE
	dbw 19, SCARY_FACE
	dbw 23, ICE_FANG
	dbw 27, CRUNCH
	dbw 32, SLASH
	dbw 36, SCREECH
	dbw 40, THRASH
	dbw 45, AQUA_TAIL
	dbw 49, SUPERPOWER
	dbw 53, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, RAGE
	dbw 10, WATER_GUN
	dbw 14, BITE
	dbw 20, SCARY_FACE
	dbw 25, ICE_FANG
	dbw 30, CRUNCH
	dbw 36, SLASH
	dbw 41, SCREECH
	dbw 46, THRASH
	dbw 51, AQUA_TAIL
	dbw 56, SUPERPOWER
	dbw 61, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, RAGE
	dbw 1, WATER_GUN
	dbw 14, BITE
	dbw 20, SCARY_FACE
	dbw 25, ICE_FANG
	dbw 30, CRUNCH
	dbw 30, AGILITY
	dbw 37, SLASH
	dbw 43, SCREECH
	dbw 49, THRASH
	dbw 56, AQUA_TAIL
	dbw 62, SUPERPOWER
	dbw 68, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, FORESIGHT
	dbw 5, DEFENSE_CURL
	dbw 11, QUICK_ATTACK
	dbw 16, FURY_SWIPES
	dbw 22, SLAM
	dbw 27, REST
	dbw 33, SUCKER_PUNCH
	dbw 37, AMNESIA
	dbw 42, BATON_PASS
	dbw 46, HYPER_VOICE
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, FORESIGHT
	dbw 1, DEFENSE_CURL
	dbw 11, QUICK_ATTACK
	dbw 17, FURY_SWIPES
	dbw 24, SLAM
	dbw 29, REST
	dbw 35, SUCKER_PUNCH
	dbw 39, AMNESIA
	dbw 45, BATON_PASS
	dbw 50, HYPER_VOICE
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, FORESIGHT
	dbw 5, HYPNOSIS
	dbw 9, PECK
	dbw 13, CONFUSION
	dbw 17, ECHOED_VOICE
	dbw 21, EXTRASENSORY
	dbw 25, TAKE_DOWN
	dbw 29, REFLECT
	dbw 33, AIR_SLASH
	dbw 37, SECRET_POWER
	dbw 41, ZEN_HEADBUTT
	dbw 45, ROOST
	dbw 49, MOONBLAST
	dbw 53, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SKY_ATTACK
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, FORESIGHT
	dbw 1, HYPNOSIS
	dbw 9, PECK
	dbw 13, CONFUSION
	dbw 17, ECHOED_VOICE
	dbw 22, EXTRASENSORY
	dbw 27, TAKE_DOWN
	dbw 32, REFLECT
	dbw 37, AIR_SLASH
	dbw 42, SECRET_POWER
	dbw 47, ZEN_HEADBUTT
	dbw 52, ROOST
	dbw 57, MOONBLAST
	dbw 62, DREAM_EATER
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, SUPERSONIC
	dbw 9, SWIFT
	dbw 13, LIGHT_SCREEN
	dbw 13, REFLECT
	dbw 13, SAFEGUARD
	dbw 17, MACH_PUNCH
	dbw 21, COMET_PUNCH
	dbw 25, BATON_PASS
	dbw 29, AGILITY
	dbw 33, BUG_BUZZ
	dbw 37, AIR_SLASH
	dbw 41, DOUBLE_EDGE
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, SUPERSONIC
	dbw 9, SWIFT
	dbw 13, LIGHT_SCREEN
	dbw 13, REFLECT
	dbw 13, SAFEGUARD
	dbw 17, MACH_PUNCH
	dbw 22, COMET_PUNCH
	dbw 27, BATON_PASS
	dbw 32, AGILITY
	dbw 37, BUG_BUZZ
	dbw 42, AIR_SLASH
	dbw 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	dbw 1, CONSTRICT
	dbw 5, LEECH_LIFE
	dbw 10, SCARY_FACE
	dbw 14, NIGHT_SHADE
	dbw 19, SHADOW_SNEAK
	dbw 23, FURY_SWIPES
	dbw 28, SUCKER_PUNCH
	dbw 32, SPIDER_WEB
	dbw 37, AGILITY
	dbw 41, PIN_MISSILE
	dbw 46, PSYCHIC_M
	dbw 50, POISON_JAB
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	dbw 1, CONSTRICT
	dbw 1, LEECH_LIFE
	dbw 10, SCARY_FACE
	dbw 14, NIGHT_SHADE
	dbw 19, SHADOW_SNEAK
	dbw 22, SWORDS_DANCE
	dbw 24, FURY_SWIPES
	dbw 30, SUCKER_PUNCH
	dbw 35, SPIDER_WEB
	dbw 41, AGILITY
	dbw 46, PIN_MISSILE
	dbw 52, PSYCHIC_M
	dbw 57, POISON_JAB
	dbw 63, ATTACK_ORDER ; non-canon
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCREECH
	dbw 1, LEECH_LIFE
	dbw 1, SUPERSONIC
	dbw 1, ASTONISH
	dbw 1, BITE
	dbw 15, WING_ATTACK
	dbw 19, CONFUSE_RAY
	dbw 22, SWIFT
	dbw 27, CRUNCH
	dbw 31, AIR_CUTTER
	dbw 36, POISON_FANG
	dbw 40, MEAN_LOOK
	dbw 45, HAZE
	dbw 49, AIR_SLASH
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	dbbw EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, SUPERSONIC
	dbw 6, THUNDER_WAVE
	dbw 9, WATER_GUN
	dbw 14, CONFUSE_RAY
	dbw 17, BUBBLEBEAM
	dbw 22, SPARK
	dbw 25, SIGNAL_BEAM
	dbw 30, FLAIL
	dbw 33, DISCHARGE
	dbw 38, TAKE_DOWN
	dbw 41, AQUA_RING
	dbw 46, HYDRO_PUMP
	dbw 49, CHARGE
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, SUPERSONIC
	dbw 1, THUNDER_WAVE
	dbw 1, WATER_GUN
	dbw 14, CONFUSE_RAY
	dbw 17, BUBBLEBEAM
	dbw 22, SPARK
	dbw 25, SIGNAL_BEAM
	dbw 31, FLAIL
	dbw 35, DISCHARGE
	dbw 41, TAKE_DOWN
	dbw 47, AQUA_RING
	dbw 52, HYDRO_PUMP
	dbw 58, CHARGE
	db 0 ; no more level-up moves

PichuEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	dbw 1, VOLT_TACKLE
	dbw 1, THUNDERSHOCK
	dbw 1, CHARM
	dbw 5, TAIL_WHIP
	dbw 10, SWEET_KISS
	dbw 13, NASTY_PLOT
	dbw 18, THUNDER_WAVE
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, CHARM
	dbw 4, ENCORE
	dbw 8, SING
	dbw 13, SWEET_KISS
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	dbw 1, SING
	dbw 1, CHARM
	dbw 4, DEFENSE_CURL
	dbw 9, POUND
	dbw 14, SWEET_KISS
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, CHARM
	dbw 6, METRONOME
	dbw 13, SWEET_KISS
	dbw 18, ENCORE
	dbw 25, ANCIENTPOWER
	dbw 30, SAFEGUARD
	dbw 37, DOUBLE_EDGE
	dbw 42, BATON_PASS
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, CHARM
	dbw 6, METRONOME
	dbw 13, SWEET_KISS
	dbw 18, ENCORE
	dbw 25, ANCIENTPOWER
	dbw 30, SAFEGUARD
	dbw 37, DOUBLE_EDGE
	dbw 42, BATON_PASS
	db 0 ; no more level-up moves

NatuEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 7, NIGHT_SHADE
	dbw 14, TELEPORT
	dbw 21, CONFUSE_RAY
	dbw 28, PSYCHIC_M
	dbw 35, SECRET_POWER
	dbw 42, DRILL_PECK
	dbw 49, FUTURE_SIGHT
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 1, NIGHT_SHADE
	dbw 14, TELEPORT
	dbw 21, CONFUSE_RAY
	dbw 30, PSYCHIC_M
	dbw 39, SECRET_POWER
	dbw 48, DRILL_PECK
	dbw 57, FUTURE_SIGHT
	db 0 ; no more level-up moves

MareepEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 5, THUNDER_WAVE
	dbw 8, THUNDERSHOCK
	dbw 12, COTTON_SPORE
	dbw 15, CHARGE
	dbw 19, TAKE_DOWN
	dbw 22, SHOCK_WAVE
	dbw 26, CONFUSE_RAY
	dbw 29, POWER_GEM
	dbw 33, DISCHARGE
	dbw 36, SIGNAL_BEAM
	dbw 40, LIGHT_SCREEN
	dbw 43, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, THUNDER_WAVE
	dbw 8, THUNDERSHOCK
	dbw 12, COTTON_SPORE
	dbw 15, CHARGE
	dbw 20, TAKE_DOWN
	dbw 24, SHOCK_WAVE
	dbw 29, CONFUSE_RAY
	dbw 33, POWER_GEM
	dbw 38, DISCHARGE
	dbw 42, SIGNAL_BEAM
	dbw 47, LIGHT_SCREEN
	dbw 51, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, THUNDER_WAVE
	dbw 1, THUNDERSHOCK
	dbw 12, COTTON_SPORE
	dbw 15, CHARGE
	dbw 20, TAKE_DOWN
	dbw 24, SHOCK_WAVE
	dbw 29, CONFUSE_RAY
	dbw 30, THUNDERPUNCH
	dbw 35, POWER_GEM
	dbw 41, DISCHARGE
	dbw 47, SIGNAL_BEAM
	dbw 53, LIGHT_SCREEN
	dbw 59, THUNDER
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEAF_BLADE
	dbw 1, MEGA_DRAIN
	dbw 1, SWEET_SCENT
	dbw 1, STUN_SPORE
	dbw 1, SUNNY_DAY
	dbw 47, QUIVER_DANCE
	dbw 52, PETAL_DANCE
	dbw 60, LEAF_STORM
	db 0 ; no more level-up moves

MarillEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 3, BUBBLE
	dbw 6, TAIL_WHIP
	dbw 10, WATER_GUN
	dbw 13, DEFENSE_CURL
	dbw 17, ROLLOUT
	dbw 21, BUBBLEBEAM
	dbw 25, PLAY_ROUGH
	dbw 28, AQUA_RING
	dbw 32, RAIN_DANCE
	dbw 35, AQUA_TAIL
	dbw 39, DOUBLE_EDGE
	dbw 42, SUPERPOWER
	dbw 46, HYDRO_PUMP
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, BUBBLE
	dbw 1, TAIL_WHIP
	dbw 10, WATER_GUN
	dbw 13, DEFENSE_CURL
	dbw 17, ROLLOUT
	dbw 22, BUBBLEBEAM
	dbw 26, PLAY_ROUGH
	dbw 31, AQUA_RING
	dbw 35, RAIN_DANCE
	dbw 40, AQUA_TAIL
	dbw 44, DOUBLE_EDGE
	dbw 49, SUPERPOWER
	dbw 53, HYDRO_PUMP
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WOOD_HAMMER
	dbw 1, FLAIL
	dbw 1, LOW_KICK
	dbw 1, ROCK_THROW
	dbw 1, MIMIC
	dbw 10, ROCK_THROW
	dbw 15, MIMIC
	dbw 19, FEINT_ATTACK
	dbw 24, ROCK_TOMB
	dbw 28, COUNTER
	dbw 33, ROCK_SLIDE
	dbw 37, SUCKER_PUNCH
	dbw 42, DOUBLE_EDGE
	dbw 46, STONE_EDGE
	dbw 51, HAMMER_ARM
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLEBEAM
	dbw 1, HYPNOSIS
	dbw 1, DOUBLESLAP
	dbw 1, PERISH_SONG
	dbw 43, SWAGGER
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, SPLASH
	dbw 4, SYNTHESIS
	dbw 7, TAIL_WHIP
	dbw 10, TACKLE
	dbw 12, POISONPOWDER
	dbw 14, STUN_SPORE
	dbw 16, SLEEP_POWDER
	dbw 19, GUST
	dbw 22, LEECH_SEED
	dbw 25, MEGA_DRAIN
	dbw 28, COTTON_SPORE
	dbw 31, AMNESIA
	dbw 34, GIGA_DRAIN
	dbw 37, DOUBLE_EDGE
	dbw 40, MEMENTO
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	dbbw EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, SPLASH
	dbw 1, SYNTHESIS
	dbw 7, TAIL_WHIP
	dbw 10, TACKLE
	dbw 12, POISONPOWDER
	dbw 14, STUN_SPORE
	dbw 16, SLEEP_POWDER
	dbw 20, GUST
	dbw 24, LEECH_SEED
	dbw 28, MEGA_DRAIN
	dbw 32, COTTON_SPORE
	dbw 36, AMNESIA
	dbw 40, GIGA_DRAIN
	dbw 44, DOUBLE_EDGE
	dbw 48, MEMENTO
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, SPLASH
	dbw 1, SYNTHESIS
	dbw 1, TAIL_WHIP
	dbw 10, TACKLE
	dbw 12, POISONPOWDER
	dbw 14, STUN_SPORE
	dbw 16, SLEEP_POWDER
	dbw 20, GUST
	dbw 24, LEECH_SEED
	dbw 29, MEGA_DRAIN
	dbw 34, COTTON_SPORE
	dbw 39, AMNESIA
	dbw 44, GIGA_DRAIN
	dbw 49, DOUBLE_EDGE
	dbw 54, MEMENTO
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, TAIL_WHIP
	dbw 4, SAND_ATTACK
	dbw 8, ASTONISH
	dbw 11, BATON_PASS
	dbw 15, TICKLE
	dbw 18, FURY_SWIPES
	dbw 22, SWIFT
	dbw 25, SCREECH
	dbw 29, AGILITY
	dbw 32, TAIL_SLAP
	dbw 36, FAKE_OUT
	dbw 39, NASTY_PLOT
	dbw 43, BEAT_UP
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	dbbw EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 4, GROWTH
	dbw 9, MEGA_DRAIN
	dbw 13, LEECH_SEED
	dbw 18, RAZOR_LEAF
	dbw 22, GIGA_DRAIN
	dbw 27, ENDEAVOR
	dbw 31, SYNTHESIS
	dbw 36, SOLARBEAM
	dbw 40, DOUBLE_EDGE
	dbw 45, SUNNY_DAY
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, POUND
	dbw 1, GROWTH
	dbw 9, MEGA_DRAIN
	dbw 13, LEECH_SEED
	dbw 18, RAZOR_LEAF
	dbw 22, GIGA_DRAIN
	dbw 27, ENDEAVOR
	dbw 31, SYNTHESIS
	dbw 36, SOLARBEAM
	dbw 40, DOUBLE_EDGE
	dbw 45, SUNNY_DAY
	dbw 50, LEAF_STORM
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, FORESIGHT
	dbw 6, QUICK_ATTACK
	dbw 11, DOUBLE_TEAM
	dbw 14, SONICBOOM
	dbw 17, DETECT
	dbw 22, SUPERSONIC
	dbw 27, SIGNAL_BEAM
	dbw 30, PURSUIT
	dbw 33, ANCIENTPOWER
	dbw 38, HYPNOSIS
	dbw 43, WING_ATTACK
	dbw 46, SCREECH
	dbw 49, AIR_SLASH
	dbw 54, BUG_BUZZ
	db 0 ; no more level-up moves

WooperEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, TAIL_WHIP
	dbw 7, MUD_SHOT
	dbw 12, MIST
	dbw 12, HAZE
	dbw 16, SLAM
	dbw 22, MUD_BOMB
	dbw 27, AMNESIA
	dbw 31, RAIN_DANCE
	dbw 37, MUDDY_WATER
	dbw 42, TOXIC
	dbw 46, EARTHQUAKE
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, TAIL_WHIP
	dbw 1, MUD_SHOT
	dbw 12, MIST
	dbw 12, HAZE
	dbw 16, SLAM
	dbw 23, MUD_BOMB
	dbw 29, AMNESIA
	dbw 36, RAIN_DANCE
	dbw 42, MUDDY_WATER
	dbw 49, TOXIC
	dbw 55, EARTHQUAKE
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 6, SAND_ATTACK
	dbw 10, CONFUSION
	dbw 14, QUICK_ATTACK
	dbw 18, PSYBEAM
	dbw 23, SWIFT
	dbw 27, PSYCH_UP
	dbw 33, MORNING_SUN
	dbw 38, PSYCHIC_M
	dbw 45, REFLECT
	dbw 50, FUTURE_SIGHT
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 6, SAND_ATTACK
	dbw 10, PURSUIT
	dbw 14, QUICK_ATTACK
	dbw 18, CONFUSE_RAY
	dbw 23, FEINT_ATTACK
	dbw 27, SNATCH
	dbw 33, MOONLIGHT
	dbw 38, ASSURANCE
	dbw 45, MEAN_LOOK
	dbw 50, DARK_PULSE
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, ASTONISH
	dbw 5, PURSUIT
	dbw 11, HAZE
	dbw 15, WING_ATTACK
	dbw 21, NIGHT_SHADE
	dbw 25, ASSURANCE
	dbw 31, TAUNT
	dbw 35, FEINT_ATTACK
	dbw 41, MEAN_LOOK
	dbw 45, FOUL_PLAY
	dbw 51, SNATCH
	dbw 55, SUCKER_PUNCH
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TRUMP_CARD
	dbw 1, CURSE
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 11, CONFUSION
	dbw 15, DISABLE
	dbw 18, HEADBUTT
	dbw 22, WATER_PULSE
	dbw 25, ZEN_HEADBUTT
	dbw 29, NASTY_PLOT
	dbw 32, SWAGGER
	dbw 37, POWER_GEM
	dbw 38, PSYCHIC_M
	dbw 45, RAIN_DANCE
	dbw 51, PSYCH_UP
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, PSYWAVE
	dbw 5, SPITE
	dbw 10, ASTONISH
	dbw 14, CONFUSE_RAY
	dbw 19, MEAN_LOOK
	dbw 23, HEX
	dbw 28, PSYBEAM
	dbw 32, PAIN_SPLIT
	dbw 37, SUCKER_PUNCH
	dbw 41, SHADOW_BALL
	dbw 46, PERISH_SONG
	dbw 50, POWER_GEM
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COUNTER
	dbw 1, MIRROR_COAT
	dbw 1, SAFEGUARD
	dbw 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, CONFUSION
	dbw 5, ODOR_SLEUTH
	dbw 10, ASSURANCE
	dbw 14, STOMP
	dbw 19, PSYBEAM
	dbw 23, AGILITY
	dbw 28, DOUBLE_KICK
	dbw 32, ZEN_HEADBUTT
	dbw 37, CRUNCH
	dbw 41, BATON_PASS
	dbw 46, NASTY_PLOT
	dbw 50, PSYCHIC_M
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, PROTECT
	dbw 8, SELFDESTRUCT
	dbw 12, TAKE_DOWN
	dbw 16, RAPID_SPIN
	dbw 20, BIDE
	dbw 24, SECRET_POWER
	dbw 28, SPIKES
	dbw 32, PIN_MISSILE
	dbw 36, EXPLOSION
	dbw 40, IRON_DEFENSE
	dbw 44, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, PROTECT
	dbw 8, SELFDESTRUCT
	dbw 12, TAKE_DOWN
	dbw 16, RAPID_SPIN
	dbw 20, BIDE
	dbw 24, SECRET_POWER
	dbw 28, SPIKES
	dbw 33, PIN_MISSILE
	dbw 38, EXPLOSION
	dbw 44, IRON_DEFENSE
	dbw 50, DOUBLE_EDGE
	dbw 56, ZAP_CANNON
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, RAGE
	dbw 1, DEFENSE_CURL
	dbw 4, ROLLOUT
	dbw 7, SPITE
	dbw 10, PURSUIT
	dbw 13, SCREECH
	dbw 16, MUD_SLAP
	dbw 19, ANCIENTPOWER
	dbw 22, BODY_SLAM
	dbw 25, DRILL_RUN
	dbw 28, ROOST
	dbw 31, TAKE_DOWN
	dbw 34, GLARE
	dbw 37, DIG
	dbw 40, DOUBLE_EDGE
	dbw 43, ENDEAVOR
	dbw 46, AIR_SLASH
	dbw 49, ENDURE
	dbw 52, FLAIL
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 5, SAND_ATTACK
	dbw 9, HARDEN
	dbw 13, KNOCK_OFF
	dbw 17, QUICK_ATTACK
	dbw 21, FURY_CUTTER
	dbw 25, FEINT_ATTACK
	dbw 29, WING_ATTACK
	dbw 33, SLASH
	dbw 37, SCREECH
	dbw 41, X_SCISSOR
	dbw 45, SWORDS_DANCE
	dbw 49, GUILLOTINE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDER_FANG
	dbw 1, ICE_FANG
	dbw 1, FIRE_FANG
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 1, BIND
	dbw 1, CURSE
	dbw 10, ROCK_THROW
	dbw 14, ROCK_TOMB
	dbw 17, RAGE
	dbw 21, SANDSTORM
	dbw 24, SLAM
	dbw 28, DRAGONBREATH
	dbw 31, SCREECH
	dbw 35, ROCK_SLIDE
	dbw 38, SAND_TOMB
	dbw 42, IRON_TAIL
	dbw 45, DIG
	dbw 49, DOUBLE_EDGE
	dbw 52, STONE_EDGE
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	dbbw EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	dbw 1, ICE_FANG
	dbw 1, FIRE_FANG
	dbw 1, THUNDER_FANG
	dbw 1, TACKLE
	dbw 1, SCARY_FACE
	dbw 1, TAIL_WHIP
	dbw 1, CHARM
	dbw 7, BITE
	dbw 13, LICK
	dbw 19, HEADBUTT
	dbw 25, ROAR
	dbw 31, RAGE
	dbw 37, PLAY_ROUGH
	dbw 43, TAKE_DOWN
	dbw 49, CRUNCH
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ICE_FANG
	dbw 1, FIRE_FANG
	dbw 1, THUNDER_FANG
	dbw 1, TACKLE
	dbw 1, SCARY_FACE
	dbw 1, TAIL_WHIP
	dbw 1, CHARM
	dbw 7, BITE
	dbw 13, LICK
	dbw 19, HEADBUTT
	dbw 27, ROAR
	dbw 35, RAGE
	dbw 43, PLAY_ROUGH
	dbw 51, TAKE_DOWN
	dbw 59, CRUNCH
	dbw 67, OUTRAGE
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, SPIKES
	dbw 1, TACKLE
	dbw 1, POISON_STING
	dbw 9, HARDEN
	dbw 9, MINIMIZE
	dbw 13, WATER_GUN
	dbw 18, ROLLOUT
	dbw 22, REVENGE
	dbw 27, BRINE
	dbw 31, PIN_MISSILE
	dbw 36, TAKE_DOWN
	dbw 40, AQUA_TAIL
	dbw 45, POISON_JAB
	dbw 49, DESTINY_BOND
	dbw 54, HYDRO_PUMP
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 1, BULLET_PUNCH
	dbw 6, FOCUS_ENERGY
	dbw 10, PURSUIT
	dbw 14, FALSE_SWIPE
	dbw 19, AGILITY
	dbw 23, METAL_CLAW
	dbw 27, FURY_CUTTER
	dbw 32, SLASH
	dbw 36, RAZOR_WIND
	dbw 40, IRON_DEFENSE
	dbw 45, X_SCISSOR
	dbw 49, NIGHT_SLASH
	dbw 53, IRON_HEAD
	dbw 58, SWORDS_DANCE
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, WITHDRAW
	dbw 6, BIDE
	dbw 12, ROLLOUT
	dbw 16, ENCORE
	dbw 21, WRAP
	dbw 27, ROCK_THROW
	dbw 31, SAFEGUARD
	dbw 36, REST
	dbw 42, ROCK_SLIDE
	dbw 46, KNOCK_OFF
	dbw 51, STONE_EDGE
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ARM_THRUST
	dbw 1, NIGHT_SLASH
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 1, FURY_ATTACK
	dbw 1, ENDURE
	dbw 5, HORN_ATTACK
	dbw 10, AERIAL_ACE
	dbw 15, COUNTER
	dbw 21, HORN_LEECH ; non-canon, for fun
	dbw 26, BRICK_BREAK
	dbw 32, PIN_MISSILE
	dbw 37, THRASH
	dbw 43, SWORDS_DANCE
	dbw 48, REVERSAL
	dbw 54, MEGAHORN
	dbw 59, CLOSE_COMBAT
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, LEER
	dbw 7, QUICK_ATTACK
	dbw 10, FEINT_ATTACK
	dbw 16, ICY_WIND
	dbw 19, FURY_SWIPES
	dbw 25, AGILITY
	dbw 28, METAL_CLAW
	dbw 34, SCREECH
	dbw 37, BEAT_UP
	dbw 43, SLASH
	dbw 46, SNATCH
	dbw 52, ICE_SHARD
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, LICK
	dbw 7, FURY_SWIPES
	dbw 13, FEINT_ATTACK
	dbw 19, SWEET_SCENT
	dbw 25, SLASH
	dbw 31, CHARM
	dbw 37, REST
	dbw 37, SNORE
	dbw 43, THRASH
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, LICK
	dbw 1, FURY_SWIPES
	dbw 13, FEINT_ATTACK
	dbw 19, SWEET_SCENT
	dbw 25, SLASH
	dbw 33, SCARY_FACE
	dbw 41, REST
	dbw 41, SNORE
	dbw 49, THRASH
	dbw 56, HAMMER_ARM
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	dbw 1, SMOG
	dbw 5, EMBER
	dbw 9, ROCK_THROW
	dbw 13, HARDEN
	dbw 17, RECOVER
	dbw 21, FLAME_WHEEL
	dbw 25, ANCIENTPOWER
	dbw 29, AMNESIA
	dbw 33, LAVA_PLUME
	dbw 37, ROCK_SLIDE
	dbw 41, BODY_SLAM
	dbw 45, FLAMETHROWER
	dbw 49, EARTH_POWER
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SMOG
	dbw 1, EMBER
	dbw 1, ROCK_THROW
	dbw 13, HARDEN
	dbw 17, RECOVER
	dbw 21, FLAME_WHEEL
	dbw 25, ANCIENTPOWER
	dbw 29, AMNESIA
	dbw 33, LAVA_PLUME
	dbw 39, ROCK_SLIDE
	dbw 45, BODY_SLAM
	dbw 51, FLAMETHROWER
	dbw 57, EARTH_POWER
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, ODOR_SLEUTH
	dbw 8, POWDER_SNOW
	dbw 11, MUD_SLAP
	dbw 14, ENDURE
	dbw 18, MUD_BOMB
	dbw 21, ICY_WIND
	dbw 24, ICE_SHARD
	dbw 28, TAKE_DOWN
	dbw 35, MIST
	dbw 37, EARTHQUAKE
	dbw 40, FLAIL
	dbw 44, BLIZZARD
	dbw 48, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ANCIENTPOWER
	dbw 1, PECK
	dbw 1, TACKLE
	dbw 1, ODOR_SLEUTH
	dbw 1, POWDER_SNOW
	dbw 1, MUD_SLAP
	dbw 14, ENDURE
	dbw 18, MUD_BOMB
	dbw 21, ICY_WIND
	dbw 24, ICE_FANG
	dbw 28, TAKE_DOWN
	dbw 33, FURY_ATTACK
	dbw 37, MIST
	dbw 41, EARTHQUAKE
	dbw 46, THRASH
	dbw 52, BLIZZARD
	dbw 58, AMNESIA
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, HARDEN
	dbw 8, BUBBLE
	dbw 10, RECOVER
	dbw 13, BUBBLEBEAM
	dbw 17, ANCIENTPOWER
	dbw 20, SPIKE_CANNON
	dbw 23, BRINE
	dbw 27, IRON_DEFENSE
	dbw 29, ROCK_BLAST
	dbw 31, ENDURE
	dbw 35, AQUA_RING
	dbw 38, POWER_GEM
	dbw 41, MIRROR_COAT
	dbw 45, EARTH_POWER
	dbw 47, FLAIL
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 6, PSYBEAM
	dbw 10, AURORA_BEAM
	dbw 15, BUBBLEBEAM
	dbw 19, LOCK_ON
	dbw 24, WATER_PULSE
	dbw 28, SIGNAL_BEAM
	dbw 33, ICE_BEAM
	dbw 37, FOCUS_ENERGY
	dbw 42, HYDRO_PUMP
	dbw 46, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ROCK_BLAST
	dbw 1, WATER_GUN
	dbw 1, CONSTRICT
	dbw 1, PSYBEAM
	dbw 1, AURORA_BEAM
	dbw 15, BUBBLEBEAM
	dbw 19, LOCK_ON
	dbw 25, OCTAZOOKA
	dbw 31, SIGNAL_BEAM
	dbw 37, ICE_BEAM
	dbw 43, FOCUS_ENERGY
	dbw 49, HYDRO_PUMP
	dbw 55, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PRESENT
	dbw 25, DRILL_PECK
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PSYBEAM
	dbw 1, ROOST
	dbw 1, TACKLE
	dbw 1, BUBBLE
	dbw 1, SUPERSONIC
	dbw 1, BUBBLEBEAM
	dbw 19, CONFUSE_RAY
	dbw 23, WING_ATTACK
	dbw 28, HEADBUTT
	dbw 32, WATER_PULSE
	dbw 37, TAKE_DOWN
	dbw 41, AGILITY
	dbw 46, AIR_SLASH
	dbw 50, AQUA_RING
	dbw 55, HYDRO_PUMP
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 5, SAND_ATTACK
	dbw 10, FURY_ATTACK
	dbw 14, METAL_CLAW
	dbw 19, AGILITY
	dbw 23, WING_ATTACK
	dbw 28, SLASH
	dbw 32, STEEL_WING
	dbw 37, DRILL_PECK
	dbw 41, METAL_SOUND
	dbw 46, SPIKES
	dbw 50, IRON_DEFENSE
	dbw 55, BRAVE_BIRD
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, EMBER
	dbw 4, HOWL
	dbw 8, SMOG
	dbw 13, ROAR
	dbw 16, BITE
	dbw 20, ODOR_SLEUTH
	dbw 25, BEAT_UP
	dbw 28, FIRE_FANG
	dbw 32, FEINT_ATTACK
	dbw 37, FOUL_PLAY
	dbw 40, FLAMETHROWER
	dbw 44, CRUNCH
	dbw 49, NASTY_PLOT
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDER_FANG
	dbw 1, LEER
	dbw 1, EMBER
	dbw 1, HOWL
	dbw 1, SMOG
	dbw 13, ROAR
	dbw 16, BITE
	dbw 20, ODOR_SLEUTH
	dbw 26, BEAT_UP
	dbw 30, FIRE_FANG
	dbw 35, FEINT_ATTACK
	dbw 41, FOUL_PLAY
	dbw 45, FLAMETHROWER
	dbw 50, CRUNCH
	dbw 56, NASTY_PLOT
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, LEER
	dbw 1, SMOKESCREEN
	dbw 10, WATER_GUN
	dbw 14, TWISTER
	dbw 19, FOCUS_ENERGY
	dbw 23, BUBBLEBEAM
	dbw 28, DRAGONBREATH
	dbw 32, AGILITY
	dbw 39, BRINE
	dbw 45, DRAGON_PULSE
	dbw 52, HYDRO_PUMP
	dbw 58, DRAGON_DANCE
	dbw 64, RAIN_DANCE
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	dbw 1, ODOR_SLEUTH
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 6, DEFENSE_CURL
	dbw 10, FLAIL
	dbw 15, ROLLOUT
	dbw 19, MAGNITUDE
	dbw 24, SLAM
	dbw 28, TAKE_DOWN
	dbw 33, ENDURE
	dbw 37, CHARM
	dbw 42, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FIRE_FANG
	dbw 1, THUNDER_FANG
	dbw 1, HORN_ATTACK
	dbw 1, BULLDOZE
	dbw 1, GROWL
	dbw 1, DEFENSE_CURL
	dbw 10, RAPID_SPIN
	dbw 15, ROLLOUT
	dbw 19, MAGNITUDE
	dbw 24, SLAM
	dbw 25, FURY_ATTACK
	dbw 31, KNOCK_OFF
	dbw 37, SCARY_FACE
	dbw 44, EARTHQUAKE
	dbw 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	dbbw EVOLVE_TRADE, UP_GRADE, PORYGON_Z
	dbbw EVOLVE_ITEM, UP_GRADE, PORYGON_Z
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
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
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 3, LEER
	dbw 7, ASTONISH
	dbw 11, HYPNOSIS
	dbw 15, STOMP
	dbw 19, SAND_ATTACK
	dbw 23, TAKE_DOWN
	dbw 28, CONFUSE_RAY
	dbw 33, CALM_MIND
	dbw 38, DISABLE
	dbw 44, ZEN_HEADBUTT
	dbw 50, JUMP_KICK
	dbw 56, HORN_LEECH
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SKETCH
	dbw 11, SKETCH
	dbw 21, SKETCH
	dbw 31, SKETCH
	dbw 41, SKETCH
	dbw 51, SKETCH
	dbw 61, SKETCH
	dbw 71, SKETCH
	dbw 81, SKETCH
	dbw 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	dbbbw EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	dbbbw EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	dbbbw EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, FAKE_OUT
	dbw 1, FORESIGHT
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, REVENGE
	dbw 6, FOCUS_ENERGY
	dbw 10, PURSUIT
	dbw 15, QUICK_ATTACK
	dbw 19, RAPID_SPIN
	dbw 24, ROLLING_KICK
	dbw 28, COUNTER
	dbw 33, TRIPLE_KICK
	dbw 37, AGILITY
	dbw 42, SUCKER_PUNCH
	dbw 46, DETECT
	dbw 50, DIG
	dbw 55, CLOSE_COMBAT
	dbw 60, ENDEAVOR
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, LICK
	dbw 4, POWDER_SNOW
	dbw 8, DOUBLESLAP
	dbw 12, CONFUSION
	dbw 16, SING
	dbw 20, ICE_PUNCH
	dbw 24, MEAN_LOOK
	dbw 28, WAKE_UP_SLAP
	dbw 32, SWEET_KISS
	dbw 36, PSYCHIC_M
	dbw 40, BODY_SLAM
	dbw 46, PERISH_SONG
	dbw 50, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 4, THUNDERSHOCK
	dbw 8, CHARGE
	dbw 12, SWIFT
	dbw 16, SHOCK_WAVE
	dbw 20, THUNDER_WAVE
	dbw 24, SCREECH
	dbw 28, THUNDERPUNCH
	dbw 32, DISCHARGE
	dbw 36, LOW_KICK
	dbw 40, THUNDERBOLT
	dbw 44, LIGHT_SCREEN
	dbw 48, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	dbw 1, SMOG
	dbw 1, LEER
	dbw 4, EMBER
	dbw 8, SMOKESCREEN
	dbw 12, FEINT_ATTACK
	dbw 16, FLAME_WHEEL
	dbw 20, FIRE_SPIN
	dbw 24, CONFUSE_RAY
	dbw 28, FIRE_PUNCH
	dbw 32, LAVA_PLUME
	dbw 36, LOW_KICK
	dbw 40, FLAMETHROWER
	dbw 44, SUNNY_DAY
	dbw 48, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 9, DEFENSE_CURL
	dbw 13, STOMP
	dbw 18, MILK_DRINK
	dbw 22, ROLLOUT
	dbw 27, BIDE
	dbw 31, ZEN_HEADBUTT
	dbw 36, HEAL_BELL
	dbw 40, BODY_SLAM
	dbw 45, PLAY_ROUGH
	dbw 49, CHARM
	dbw 54, WAKE_UP_SLAP
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COVET
	dbw 1, CHARM
	dbw 1, POUND
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 1, DEFENSE_CURL
	dbw 12, DOUBLESLAP
	dbw 17, SING
	dbw 21, SECRET_POWER
	dbw 26, TAKE_DOWN
	dbw 30, MINIMIZE
	dbw 35, EGG_BOMB
	dbw 39, SOFTBOILED
	dbw 44, LIGHT_SCREEN
	dbw 48, DOUBLE_EDGE
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 8, THUNDERSHOCK
	dbw 15, QUICK_ATTACK
	dbw 22, SPARK
	dbw 29, ROAR
	dbw 36, REFLECT
	dbw 43, CRUNCH
	dbw 50, THUNDER_FANG
	dbw 57, DISCHARGE
	dbw 64, EXTRASENSORY
	dbw 71, RAIN_DANCE
	dbw 78, CALM_MIND
	dbw 85, THUNDER
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 8, EMBER
	dbw 15, FIRE_SPIN
	dbw 22, STOMP
	dbw 29, ROAR
	dbw 36, FLAMETHROWER
	dbw 43, SWAGGER
	dbw 50, FIRE_FANG
	dbw 57, LAVA_PLUME
	dbw 64, EXTRASENSORY
	dbw 71, FIRE_BLAST
	dbw 78, CALM_MIND
	dbw 85, HEAT_WAVE
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 8, BUBBLEBEAM
	dbw 15, RAIN_DANCE
	dbw 22, GUST
	dbw 29, AURORA_BEAM
	dbw 36, MIST
	dbw 43, MIRROR_COAT
	dbw 50, ICE_FANG
	dbw 57, SCALD
	dbw 64, EXTRASENSORY
	dbw 71, HYDRO_PUMP
	dbw 78, CALM_MIND
	dbw 85, BLIZZARD
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 6, SANDSTORM
	dbw 11, SCREECH
	dbw 17, ROCK_SLIDE
	dbw 22, SCARY_FACE
	dbw 27, THRASH
	dbw 33, DARK_PULSE
	dbw 38, CRUNCH
	dbw 43, EARTHQUAKE
	dbw 49, STONE_EDGE
	dbw 54, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	dbbw EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 1, SANDSTORM
	dbw 11, SCREECH
	dbw 17, ROCK_SLIDE
	dbw 22, SCARY_FACE
	dbw 27, THRASH
	dbw 30, IRON_DEFENSE
	dbw 35, DARK_PULSE
	dbw 43, CRUNCH
	dbw 51, EARTHQUAKE
	dbw 59, STONE_EDGE
	dbw 67, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 1, SANDSTORM
	dbw 1, SCREECH
	dbw 17, ROCK_SLIDE
	dbw 22, SCARY_FACE
	dbw 27, THRASH
	dbw 30, IRON_DEFENSE
	dbw 35, DARK_PULSE
	dbw 43, CRUNCH
	dbw 51, EARTHQUAKE
	dbw 62, STONE_EDGE
	dbw 73, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SWIFT
	dbw 1, WHIRLWIND
	dbw 9, GUST
	dbw 15, BRAVE_BIRD
	dbw 23, EXTRASENSORY
	dbw 29, RAIN_DANCE
	dbw 37, HYDRO_PUMP
	dbw 43, AEROBLAST
	dbw 50, ANCIENTPOWER
	dbw 57, SAFEGUARD
	dbw 65, RECOVER
	dbw 71, FUTURE_SIGHT
	dbw 79, CALM_MIND
	dbw 85, SKY_ATTACK
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SWIFT
	dbw 1, WHIRLWIND
	dbw 9, GUST
	dbw 15, BRAVE_BIRD
	dbw 23, EXTRASENSORY
	dbw 29, SUNNY_DAY
	dbw 37, FIRE_BLAST
	dbw 43, SACRED_FIRE
	dbw 50, ANCIENTPOWER
	dbw 57, SAFEGUARD
	dbw 65, RECOVER
	dbw 71, FUTURE_SIGHT
	dbw 79, CALM_MIND
	dbw 85, SKY_ATTACK
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, HEAL_BELL
	dbw 10, RAZOR_LEAF
	dbw 20, BATON_PASS
	dbw 30, ANCIENTPOWER
	dbw 40, LEECH_SEED
	dbw 50, RECOVER
	dbw 60, FUTURE_SIGHT
	dbw 70, LEAF_STORM
	dbw 80, PERISH_SONG
	db 0 ; no more level-up moves
