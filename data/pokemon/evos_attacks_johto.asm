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
	dbw 8, RAZOR_LEAF
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
	dbw 8, RAZOR_LEAF
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
	dbw 6, SMOKESCREEN
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
	dbw 6, SMOKESCREEN
	dbw 11, EMBER
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
	dbw 6, RAGE
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
	dbw 6, RAGE
	dbw 10, WATER_GUN
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
	dbw 1, DEFENSE_CURL
	dbw 1, QUICK_ATTACK
	dbw 5, DEFENSE_CURL
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
	dbw 6, HYPNOSIS
	dbw 10, PECK
	dbw 15, CONFUSION
	dbw 19, ECHOED_VOICE
	dbw 24, EXTRASENSORY
	dbw 28, TAKE_DOWN
	dbw 33, REFLECT
	dbw 37, AIR_SLASH
	dbw 42, ROOST
	dbw 46, MOONBLAST
	dbw 51, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SKY_ATTACK
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, FORESIGHT
	dbw 1, HYPNOSIS
	dbw 10, PECK
	dbw 15, CONFUSION
	dbw 19, ECHOED_VOICE
	dbw 24, EXTRASENSORY
	dbw 28, TAKE_DOWN
	dbw 33, REFLECT
	dbw 37, AIR_SLASH
	dbw 42, ROOST
	dbw 46, MOONBLAST
	dbw 51, DREAM_EATER
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
	dbw 5, LEECH_LIFE
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
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCREECH
	dbw 1, LEECH_LIFE
	dbw 1, SUPERSONIC
	dbw 1, ASTONISH
	dbw 1, BITE
	dbw 8, ASTONISH
	dbw 12, BITE
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
	dbw 6, THUNDER_WAVE
	dbw 9, WATER_GUN
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
	dbw 6, NIGHT_SHADE
	dbw 10, TELEPORT
	dbw 20, CONFUSE_RAY
	dbw 30, PSYCHIC_M
	dbw 40, DRILL_PECK
	dbw 50, FUTURE_SIGHT
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 1, NIGHT_SHADE
	dbw 10, TELEPORT
	dbw 20, CONFUSE_RAY
	dbw 32, PSYCHIC_M
	dbw 44, DRILL_PECK
	dbw 56, FUTURE_SIGHT
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
	dbw 5, THUNDER_WAVE
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
	dbw 5, THUNDER_WAVE
	dbw 8, THUNDERSHOCK
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
	dbw 3, BUBBLE
	dbw 6, TAIL_WHIP
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
	dbw 4, SYNTHESIS
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
	dbw 4, SYNTHESIS
	dbw 7, TAIL_WHIP
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
	dbw 7, MUD_SHOT
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
	dbw 27, MEAN_LOOK
	dbw 33, MOONLIGHT
	dbw 38, ASSURANCE
	dbw 45, SCREECH
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
	dbw 51, DRILL_PECK
	dbw 55, SUCKER_PUNCH
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CURSE
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 8, WATER_GUN
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
	dbw 23, SHADOW_SNEAK
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
	dbw 50, PSYCHIC
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, PROTECT
	dbw 7, SELFDESTRUCT
	dbw 12, TAKE_DOWN
	dbw 16, RAPID_SPIN
	dbw 20, BIDE
	dbw 26, SPIKES
	dbw 31, PIN_MISSILE
	dbw 36, EXPLOSION
	dbw 40, IRON_DEFENSE
	dbw 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, PROTECT
	dbw 7, SELFDESTRUCT
	dbw 12, TAKE_DOWN
	dbw 16, RAPID_SPIN
	dbw 20, BIDE
	dbw 26, SPIKES
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
	dbw 8, SPITE
	dbw 11, PURSUIT
	dbw 15, SCREECH
	dbw 18, MUD_SLAP
	dbw 22, ANCIENTPOWER
	dbw 25, BODY_SLAM
	dbw 29, ROOST
	dbw 32, TAKE_DOWN
	dbw 36, GLARE
	dbw 39, DIG
	dbw 43, DOUBLE_EDGE
	dbw 46, ENDEAVOR
	dbw 50, AIR_SLASH
	dbw 53, ENDURE
	dbw 57, FLAIL
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
	dbw 1, TACKLE
	dbw 1, SCARY_FACE
	dbw 4, TAIL_WHIP
	dbw 8, CHARM
	dbw 13, BITE
	dbw 19, LICK
	dbw 26, ROAR
	dbw 34, RAGE
	dbw 43, TAKE_DOWN
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SCARY_FACE
	dbw 4, TAIL_WHIP
	dbw 8, CHARM
	dbw 13, BITE
	dbw 19, LICK
	dbw 28, ROAR
	dbw 38, RAGE
	dbw 51, TAKE_DOWN
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPIKES
	dbw 1, TACKLE
	dbw 1, POISON_STING
	dbw 10, HARDEN
	dbw 10, MINIMIZE
	dbw 19, WATER_GUN
	dbw 28, PIN_MISSILE
	dbw 37, TAKE_DOWN
	dbw 46, HYDRO_PUMP
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
	dbw 9, WRAP
	dbw 14, ENCORE
	dbw 23, SAFEGUARD
	dbw 28, BIDE
	dbw 37, REST
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 6, HORN_ATTACK
	dbw 12, ENDURE
	dbw 19, FURY_ATTACK
	dbw 27, COUNTER
	dbw 35, TAKE_DOWN
	dbw 44, REVERSAL
	dbw 54, MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 9, QUICK_ATTACK
	dbw 17, SCREECH
	dbw 25, FEINT_ATTACK
	dbw 33, FURY_SWIPES
	dbw 41, AGILITY
	dbw 49, SLASH
	dbw 57, BEAT_UP
	dbw 65, METAL_CLAW
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 8, LICK
	dbw 15, FURY_SWIPES
	dbw 22, FEINT_ATTACK
	dbw 29, REST
	dbw 36, SLASH
	dbw 43, SNORE
	dbw 50, THRASH
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, LICK
	dbw 1, FURY_SWIPES
	dbw 8, LICK
	dbw 15, FURY_SWIPES
	dbw 22, FEINT_ATTACK
	dbw 29, REST
	dbw 39, SLASH
	dbw 49, SNORE
	dbw 59, THRASH
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	dbw 1, SMOG
	dbw 8, EMBER
	dbw 15, ROCK_THROW
	dbw 22, HARDEN
	dbw 29, AMNESIA
	dbw 36, FLAMETHROWER
	dbw 43, ROCK_SLIDE
	dbw 50, BODY_SLAM
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SMOG
	dbw 1, EMBER
	dbw 1, ROCK_THROW
	dbw 8, EMBER
	dbw 15, ROCK_THROW
	dbw 22, HARDEN
	dbw 29, AMNESIA
	dbw 36, FLAMETHROWER
	dbw 48, ROCK_SLIDE
	dbw 60, BODY_SLAM
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 10, POWDER_SNOW
	dbw 19, ENDURE
	dbw 28, TAKE_DOWN
	dbw 37, MIST
	dbw 46, BLIZZARD
	dbw 55, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HORN_ATTACK
	dbw 1, POWDER_SNOW
	dbw 1, ENDURE
	dbw 10, POWDER_SNOW
	dbw 19, ENDURE
	dbw 28, TAKE_DOWN
	dbw 33, FURY_ATTACK
	dbw 42, MIST
	dbw 56, BLIZZARD
	dbw 70, AMNESIA
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 7, HARDEN
	dbw 13, BUBBLE
	dbw 19, RECOVER
	dbw 25, BUBBLEBEAM
	dbw 31, SPIKE_CANNON
	dbw 37, MIRROR_COAT
	dbw 43, ANCIENTPOWER
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 11, LOCK_ON
	dbw 22, PSYBEAM
	dbw 22, AURORA_BEAM
	dbw 22, BUBBLEBEAM
	dbw 33, FOCUS_ENERGY
	dbw 44, ICE_BEAM
	dbw 55, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 11, CONSTRICT
	dbw 22, PSYBEAM
	dbw 22, AURORA_BEAM
	dbw 22, BUBBLEBEAM
	dbw 25, OCTAZOOKA
	dbw 38, FOCUS_ENERGY
	dbw 54, ICE_BEAM
	dbw 70, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PRESENT
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, BUBBLE
	dbw 10, SUPERSONIC
	dbw 18, BUBBLEBEAM
	dbw 25, TAKE_DOWN
	dbw 32, AGILITY
	dbw 40, WING_ATTACK
	dbw 49, CONFUSE_RAY
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, PECK
	dbw 13, SAND_ATTACK
	dbw 19, SWIFT
	dbw 25, AGILITY
	dbw 37, FURY_ATTACK
	dbw 49, STEEL_WING
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, EMBER
	dbw 7, ROAR
	dbw 13, SMOG
	dbw 20, BITE
	dbw 27, FEINT_ATTACK
	dbw 35, FLAMETHROWER
	dbw 43, CRUNCH
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, EMBER
	dbw 7, ROAR
	dbw 13, SMOG
	dbw 20, BITE
	dbw 30, FEINT_ATTACK
	dbw 41, FLAMETHROWER
	dbw 52, CRUNCH
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, LEER
	dbw 5, SMOKESCREEN
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
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 9, DEFENSE_CURL
	dbw 17, FLAIL
	dbw 25, TAKE_DOWN
	dbw 33, ROLLOUT
	dbw 41, ENDURE
	dbw 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HORN_ATTACK
	dbw 1, GROWL
	dbw 9, DEFENSE_CURL
	dbw 17, FLAIL
	dbw 25, FURY_ATTACK
	dbw 33, ROLLOUT
	dbw 41, RAPID_SPIN
	dbw 49, EARTHQUAKE
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
	dbw 8, LEER
	dbw 15, HYPNOSIS
	dbw 23, STOMP
	dbw 31, SAND_ATTACK
	dbw 40, TAKE_DOWN
	dbw 49, CONFUSE_RAY
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
	dbw 1, ROLLING_KICK
	dbw 7, FOCUS_ENERGY
	dbw 13, PURSUIT
	dbw 19, QUICK_ATTACK
	dbw 25, RAPID_SPIN
	dbw 31, COUNTER
	dbw 37, AGILITY
	dbw 43, DETECT
	dbw 49, TRIPLE_KICK
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
	dbw 8, DEFENSE_CURL
	dbw 13, STOMP
	dbw 19, MILK_DRINK
	dbw 26, BIDE
	dbw 34, ROLLOUT
	dbw 43, BODY_SLAM
	dbw 53, HEAL_BELL
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 4, GROWL
	dbw 7, TAIL_WHIP
	dbw 10, SOFTBOILED
	dbw 13, DOUBLESLAP
	dbw 18, MINIMIZE
	dbw 23, SING
	dbw 28, EGG_BOMB
	dbw 33, DEFENSE_CURL
	dbw 40, LIGHT_SCREEN
	dbw 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 11, THUNDERSHOCK
	dbw 21, ROAR
	dbw 31, QUICK_ATTACK
	dbw 41, SPARK
	dbw 51, REFLECT
	dbw 61, CRUNCH
	dbw 71, THUNDER
	dbw 81, CALM_MIND
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 11, EMBER
	dbw 21, ROAR
	dbw 31, FIRE_SPIN
	dbw 41, STOMP
	dbw 51, FLAMETHROWER
	dbw 61, SWAGGER
	dbw 71, FIRE_BLAST
	dbw 81, CALM_MIND
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 11, BUBBLEBEAM
	dbw 21, RAIN_DANCE
	dbw 31, GUST
	dbw 41, AURORA_BEAM
	dbw 51, MIST
	dbw 61, MIRROR_COAT
	dbw 71, HYDRO_PUMP
	dbw 81, CALM_MIND
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 8, SANDSTORM
	dbw 15, SCREECH
	dbw 22, ROCK_SLIDE
	dbw 29, THRASH
	dbw 36, SCARY_FACE
	dbw 43, CRUNCH
	dbw 50, EARTHQUAKE
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	dbbw EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 1, SANDSTORM
	dbw 1, SCREECH
	dbw 8, SANDSTORM
	dbw 15, SCREECH
	dbw 22, ROCK_SLIDE
	dbw 29, THRASH
	dbw 38, SCARY_FACE
	dbw 47, CRUNCH
	dbw 56, EARTHQUAKE
	dbw 65, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 1, SANDSTORM
	dbw 1, SCREECH
	dbw 8, SANDSTORM
	dbw 15, SCREECH
	dbw 22, ROCK_SLIDE
	dbw 29, THRASH
	dbw 38, SCARY_FACE
	dbw 47, CRUNCH
	dbw 61, EARTHQUAKE
	dbw 75, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WHIRLWIND
	dbw 11, SAFEGUARD
	dbw 22, GUST
	dbw 33, RECOVER
	dbw 44, HYDRO_PUMP
	dbw 55, RAIN_DANCE
	dbw 66, SWIFT
	dbw 77, AEROBLAST
	dbw 88, ANCIENTPOWER
	dbw 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WHIRLWIND
	dbw 11, SAFEGUARD
	dbw 22, GUST
	dbw 33, RECOVER
	dbw 44, FIRE_BLAST
	dbw 55, SUNNY_DAY
	dbw 66, SWIFT
	dbw 77, SACRED_FIRE
	dbw 88, ANCIENTPOWER
	dbw 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEECH_SEED
	dbw 1, CONFUSION
	dbw 1, RECOVER
	dbw 1, HEAL_BELL
	dbw 10, SAFEGUARD
	dbw 20, ANCIENTPOWER
	dbw 30, FUTURE_SIGHT
	dbw 40, BATON_PASS
	dbw 50, PERISH_SONG
	db 0 ; no more level-up moves
