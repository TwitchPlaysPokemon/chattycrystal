SECTION "Evolutions and Attacks 1", ROMX

EvosAttacksPointers1::
	dw BulbasaurEvosAttacks
	dw IvysaurEvosAttacks
	dw VenusaurEvosAttacks
	dw CharmanderEvosAttacks
	dw CharmeleonEvosAttacks
	dw CharizardEvosAttacks
	dw SquirtleEvosAttacks
	dw WartortleEvosAttacks
	dw BlastoiseEvosAttacks
	dw CaterpieEvosAttacks
	dw MetapodEvosAttacks
	dw ButterfreeEvosAttacks
	dw WeedleEvosAttacks
	dw KakunaEvosAttacks
	dw BeedrillEvosAttacks
	dw PidgeyEvosAttacks
	dw PidgeottoEvosAttacks
	dw PidgeotEvosAttacks
	dw RattataEvosAttacks
	dw RaticateEvosAttacks
	dw SpearowEvosAttacks
	dw FearowEvosAttacks
	dw EkansEvosAttacks
	dw ArbokEvosAttacks
	dw PikachuEvosAttacks
	dw RaichuEvosAttacks
	dw SandshrewEvosAttacks
	dw SandslashEvosAttacks
	dw NidoranFEvosAttacks
	dw NidorinaEvosAttacks
	dw NidoqueenEvosAttacks
	dw NidoranMEvosAttacks
	dw NidorinoEvosAttacks
	dw NidokingEvosAttacks
	dw ClefairyEvosAttacks
	dw ClefableEvosAttacks
	dw VulpixEvosAttacks
	dw NinetalesEvosAttacks
	dw JigglypuffEvosAttacks
	dw WigglytuffEvosAttacks
	dw ZubatEvosAttacks
	dw GolbatEvosAttacks
	dw OddishEvosAttacks
	dw GloomEvosAttacks
	dw VileplumeEvosAttacks
	dw ParasEvosAttacks
	dw ParasectEvosAttacks
	dw VenonatEvosAttacks
	dw VenomothEvosAttacks
	dw DiglettEvosAttacks
	dw DugtrioEvosAttacks
	dw MeowthEvosAttacks
	dw PersianEvosAttacks
	dw PsyduckEvosAttacks
	dw GolduckEvosAttacks
	dw MankeyEvosAttacks
	dw PrimeapeEvosAttacks
	dw GrowlitheEvosAttacks
	dw ArcanineEvosAttacks
	dw PoliwagEvosAttacks
	dw PoliwhirlEvosAttacks
	dw PoliwrathEvosAttacks
	dw AbraEvosAttacks
	dw KadabraEvosAttacks
	dw AlakazamEvosAttacks
	dw MachopEvosAttacks
	dw MachokeEvosAttacks
	dw MachampEvosAttacks
	dw BellsproutEvosAttacks
	dw WeepinbellEvosAttacks
	dw VictreebelEvosAttacks
	dw TentacoolEvosAttacks
	dw TentacruelEvosAttacks
	dw GeodudeEvosAttacks
	dw GravelerEvosAttacks
	dw GolemEvosAttacks
	dw PonytaEvosAttacks
	dw RapidashEvosAttacks
	dw SlowpokeEvosAttacks
	dw SlowbroEvosAttacks
	dw MagnemiteEvosAttacks
	dw MagnetonEvosAttacks
	dw FarfetchDEvosAttacks
	dw DoduoEvosAttacks
	dw DodrioEvosAttacks
	dw SeelEvosAttacks
	dw DewgongEvosAttacks
	dw GrimerEvosAttacks
	dw MukEvosAttacks
	dw ShellderEvosAttacks
	dw CloysterEvosAttacks
	dw GastlyEvosAttacks
	dw HaunterEvosAttacks
	dw GengarEvosAttacks
	dw OnixEvosAttacks
	dw DrowzeeEvosAttacks
	dw HypnoEvosAttacks
	dw KrabbyEvosAttacks
	dw KinglerEvosAttacks
	dw VoltorbEvosAttacks
	dw ElectrodeEvosAttacks
	dw ExeggcuteEvosAttacks
	dw ExeggutorEvosAttacks
	dw CuboneEvosAttacks
	dw MarowakEvosAttacks
	dw HitmonleeEvosAttacks
	dw HitmonchanEvosAttacks
	dw LickitungEvosAttacks
	dw KoffingEvosAttacks
	dw WeezingEvosAttacks
	dw RhyhornEvosAttacks
	dw RhydonEvosAttacks
	dw ChanseyEvosAttacks
	dw TangelaEvosAttacks
	dw KangaskhanEvosAttacks
	dw HorseaEvosAttacks
	dw SeadraEvosAttacks
	dw GoldeenEvosAttacks
	dw SeakingEvosAttacks
	dw StaryuEvosAttacks
	dw StarmieEvosAttacks
	dw MrMimeEvosAttacks
	dw ScytherEvosAttacks
	dw JynxEvosAttacks
	dw ElectabuzzEvosAttacks
	dw MagmarEvosAttacks
	dw PinsirEvosAttacks
	dw TaurosEvosAttacks
	dw MagikarpEvosAttacks
	dw GyaradosEvosAttacks
	dw LaprasEvosAttacks
	dw DittoEvosAttacks
	dw EeveeEvosAttacks
	dw VaporeonEvosAttacks
	dw JolteonEvosAttacks
	dw FlareonEvosAttacks
	dw PorygonEvosAttacks
	dw OmanyteEvosAttacks
	dw OmastarEvosAttacks
	dw KabutoEvosAttacks
	dw KabutopsEvosAttacks
	dw AerodactylEvosAttacks
	dw SnorlaxEvosAttacks
	dw ArticunoEvosAttacks
	dw ZapdosEvosAttacks
	dw MoltresEvosAttacks
	dw DratiniEvosAttacks
	dw DragonairEvosAttacks
	dw DragoniteEvosAttacks
	dw MewtwoEvosAttacks
	dw MewEvosAttacks

BulbasaurEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 7, LEECH_SEED
	dbw 10, VINE_WHIP
	dbw 13, POISONPOWDER
	dbw 13, SLEEP_POWDER
	dbw 15, TAKE_DOWN
	dbw 20, RAZOR_LEAF
	dbw 23, SWEET_SCENT
	dbw 28, GROWTH
	dbw 34, DOUBLE_EDGE
	dbw 39, SYNTHESIS
	dbw 46, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, LEECH_SEED
	dbw 7, LEECH_SEED
	dbw 10, VINE_WHIP
	dbw 13, POISONPOWDER
	dbw 13, SLEEP_POWDER
	dbw 15, TAKE_DOWN
	dbw 22, RAZOR_LEAF
	dbw 26, SWEET_SCENT
	dbw 31, GROWTH
	dbw 38, DOUBLE_EDGE
	dbw 47, SYNTHESIS
	dbw 56, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, LEECH_SEED
	dbw 1, VINE_WHIP
	dbw 7, LEECH_SEED
	dbw 10, VINE_WHIP
	dbw 13, POISONPOWDER
	dbw 13, SLEEP_POWDER
	dbw 15, TAKE_DOWN
	dbw 22, RAZOR_LEAF
	dbw 26, SWEET_SCENT
	dbw 31, GROWTH
	dbw 32, PETAL_DANCE
	dbw 41, DOUBLE_EDGE
	dbw 53, SYNTHESIS
	dbw 65, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 7, EMBER
	dbw 10, SMOKESCREEN
	dbw 16, RAGE
	dbw 19, SCARY_FACE
	dbw 25, FIRE_FANG
	dbw 28, FLAMETHROWER
	dbw 34, SLASH
	dbw 37, DRAGON_RAGE
	dbw 43, FIRE_SPIN
	dbw 46, FLARE_BLITZ
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, EMBER
	dbw 7, EMBER
	dbw 10, SMOKESCREEN
	dbw 17, RAGE
	dbw 21, SCARY_FACE
	dbw 28, FIRE_FANG
	dbw 32, FLAMETHROWER
	dbw 39, SLASH
	dbw 43, DRAGON_RAGE
	dbw 50, FIRE_SPIN
	dbw 54, FLARE_BLITZ
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, EMBER
	dbw 1, SMOKESCREEN
	dbw 7, EMBER
	dbw 10, SMOKESCREEN
	dbw 17, RAGE
	dbw 21, SCARY_FACE
	dbw 28, FIRE_FANG
	dbw 32, FLAMETHROWER
	dbw 36, WING_ATTACK
	dbw 41, SLASH
	dbw 47, DRAGON_RAGE
	dbw 56, FIRE_SPIN
	dbw 62, FLARE_BLITZ
	dbw 71, HEAT_WAVE
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, TAIL_WHIP
	dbw 7, BUBBLE
	dbw 10, WITHDRAW
	dbw 13, WATER_GUN
	dbw 16, BITE
	dbw 19, RAPID_SPIN
	dbw 22, PROTECT
	dbw 25, WATER_PULSE
	dbw 28, AQUA_JET
	dbw 31, SKULL_BASH
	dbw 34, IRON_DEFENSE
	dbw 37, RAIN_DANCE
	dbw 40, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, TAIL_WHIP
	dbw 1, BUBBLE
	dbw 7, BUBBLE
	dbw 10, WITHDRAW
	dbw 13, WATER_GUN
	dbw 17, BITE
	dbw 21, RAPID_SPIN
	dbw 25, PROTECT
	dbw 29, WATER_PULSE
	dbw 33, AQUA_JET
	dbw 37, SKULL_BASH
	dbw 41, IRON_DEFENSE
	dbw 45, RAIN_DANCE
	dbw 49, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, TAIL_WHIP
	dbw 1, BUBBLE
	dbw 7, BUBBLE
	dbw 10, WITHDRAW
	dbw 13, WATER_GUN
	dbw 17, BITE
	dbw 21, RAPID_SPIN
	dbw 25, PROTECT
	dbw 29, WATER_PULSE
	dbw 33, AQUA_JET
	dbw 36, FLASH_CANNON
	dbw 40, SKULL_BASH
	dbw 47, IRON_DEFENSE
	dbw 54, RAIN_DANCE
	dbw 60, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	dbbw EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	dbbw EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 7, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GUST
	dbw 10, GUST
	dbw 11, CONFUSION
	dbw 13, POISONPOWDER
	dbw 14, STUN_SPORE
	dbw 15, SLEEP_POWDER
	dbw 18, PSYBEAM
	dbw 22, SUPERSONIC
	dbw 25, SAFEGUARD
	dbw 29, WHIRLWIND
	dbw 32, BUG_BUZZ
	dbw 37, AIR_SLASH
	dbw 40, QUIVER_DANCE
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	dbbw EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	dbbw EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 7, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TWINEEDLE
	dbw 10, TWINEEDLE
	dbw 11, FURY_ATTACK
	dbw 14, RAGE
	dbw 18, PURSUIT
	dbw 21, FOCUS_ENERGY
	dbw 25, ASSURANCE
	dbw 28, PIN_MISSILE
	dbw 32, POISON_JAB
	dbw 35, AGILITY
	dbw 39, OUTRAGE
	dbw 42, ENDEAVOR
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, SAND_ATTACK
	dbw 9, GUST
	dbw 13, QUICK_ATTACK
	dbw 17, WHIRLWIND
	dbw 21, TWISTER
	dbw 25, AGILITY
	dbw 29, WING_ATTACK
	dbw 33, ROOST
	dbw 37, MIRROR_MOVE
	dbw 41, AIR_SLASH
	dbw 45, RAZOR_WIND
	dbw 49, BRAVE_BIRD
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SAND_ATTACK
	dbw 1, GUST
	dbw 9, GUST
	dbw 13, QUICK_ATTACK
	dbw 17, WHIRLWIND
	dbw 22, TWISTER
	dbw 27, AGILITY
	dbw 32, WING_ATTACK
	dbw 37, ROOST
	dbw 42, MIRROR_MOVE
	dbw 47, AIR_SLASH
	dbw 52, RAZOR_WIND
	dbw 57, BRAVE_BIRD
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SAND_ATTACK
	dbw 1, GUST
	dbw 1, QUICK_ATTACK
	dbw 9, GUST
	dbw 13, QUICK_ATTACK
	dbw 17, WHIRLWIND
	dbw 22, TWISTER
	dbw 27, AGILITY
	dbw 32, WING_ATTACK
	dbw 38, ROOST
	dbw 44, MIRROR_MOVE
	dbw 50, AIR_SLASH
	dbw 56, RAZOR_WIND
	dbw 62, BRAVE_BIRD
	db 0 ; no more level-up moves

RattataEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 4, QUICK_ATTACK
	dbw 7, FOCUS_ENERGY
	dbw 10, BITE
	dbw 13, PURSUIT
	dbw 16, HYPER_FANG
	dbw 19, ASSURANCE
	dbw 22, CRUNCH
	dbw 25, SUCKER_PUNCH
	dbw 28, SUPER_FANG
	dbw 31, DOUBLE_EDGE
	dbw 34, ENDEAVOR
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 4, QUICK_ATTACK
	dbw 7, FOCUS_ENERGY
	dbw 10, BITE
	dbw 13, PURSUIT
	dbw 16, HYPER_FANG
	dbw 19, ASSURANCE
	dbw 20, SCARY_FACE
	dbw 24, CRUNCH
	dbw 29, SUCKER_PUNCH
	dbw 34, SUPER_FANG
	dbw 39, DOUBLE_EDGE
	dbw 44, ENDEAVOR
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 4, LEER
	dbw 8, PURSUIT
	dbw 11, FURY_ATTACK
	dbw 15, AERIAL_ACE
	dbw 18, MIRROR_MOVE
	dbw 22, ASSURANCE
	dbw 25, AGILITY
	dbw 29, FOCUS_ENERGY
	dbw 32, ROOST
	dbw 36, DRILL_PECK
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 4, LEER
	dbw 8, PURSUIT
	dbw 11, FURY_ATTACK
	dbw 15, AERIAL_ACE
	dbw 18, MIRROR_MOVE
	dbw 23, ASSURANCE
	dbw 27, AGILITY
	dbw 32, FOCUS_ENERGY
	dbw 36, ROOST
	dbw 41, DRILL_PECK
	db 0 ; no more level-up moves

EkansEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 7, POISON_STING
	dbw 12, BITE
	dbw 16, GLARE
	dbw 21, SCREECH
	dbw 25, ACID
	dbw 30, SLAM
	dbw 34, MUD_BOMB
	dbw 39, HAZE
	dbw 43, POISON_JAB
	dbw 48, TOXIC
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 1, POISON_STING
	dbw 1, BITE
	dbw 7, POISON_STING
	dbw 12, BITE
	dbw 16, GLARE
	dbw 21, SCREECH
	dbw 22, CRUNCH
	dbw 27, ACID
	dbw 32, SLAM
	dbw 38, MUD_BOMB
	dbw 43, HAZE
	dbw 49, POISON_JAB
	dbw 54, TOXIC
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	dbbw EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	dbw 1, THUNDERSHOCK
	dbw 1, GROWL
	dbw 6, TAIL_WHIP
	dbw 9, THUNDER_WAVE
	dbw 14, QUICK_ATTACK
	dbw 17, DOUBLE_TEAM
	dbw 22, SPARK
	dbw 25, NUZZLE
	dbw 30, SLAM
	dbw 33, DISCHARGE
	dbw 38, AGILITY
	dbw 41, THUNDERBOLT
	dbw 46, LIGHT_SCREEN
	dbw 49, THUNDER
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDERSHOCK
	dbw 1, TAIL_WHIP
	dbw 1, QUICK_ATTACK
	dbw 1, THUNDERBOLT
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, DEFENSE_CURL
	dbw 3, SAND_ATTACK
	dbw 5, POISON_STING
	dbw 7, ROLLOUT
	dbw 9, RAPID_SPIN
	dbw 11, FURY_CUTTER
	dbw 14, MAGNITUDE
	dbw 17, SWIFT
	dbw 20, FURY_SWIPES
	dbw 23, SAND_TOMB
	dbw 26, SLASH
	dbw 30, DIG
	dbw 34, SWORDS_DANCE
	dbw 38, SANDSTORM
	dbw 42, EARTHQUAKE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, DEFENSE_CURL
	dbw 3, SAND_ATTACK
	dbw 5, POISON_STING
	dbw 7, ROLLOUT
	dbw 9, RAPID_SPIN
	dbw 11, FURY_CUTTER
	dbw 14, MAGNITUDE
	dbw 17, SWIFT
	dbw 20, FURY_SWIPES
	dbw 24, SAND_TOMB
	dbw 28, SLASH
	dbw 33, DIG
	dbw 38, SWORDS_DANCE
	dbw 43, SANDSTORM
	dbw 48, EARTHQUAKE
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, POISON_STING
	dbw 6, SCRATCH
	dbw 10, TAIL_WHIP
	dbw 14, DOUBLE_KICK
	dbw 19, FURY_SWIPES
	dbw 23, BITE
	dbw 27, TOXIC
	dbw 32, POISON_FANG
	dbw 36, CHARM
	dbw 40, CRUNCH
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, POISON_STING
	dbw 6, SCRATCH
	dbw 10, TAIL_WHIP
	dbw 14, DOUBLE_KICK
	dbw 20, FURY_SWIPES
	dbw 25, BITE
	dbw 31, TOXIC
	dbw 37, POISON_FANG
	dbw 42, CHARM
	dbw 48, CRUNCH
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, TAIL_WHIP
	dbw 1, DOUBLE_KICK
	dbw 1, POISON_STING
	dbw 36, BODY_SLAM
	dbw 45, EARTH_POWER
	dbw 58, SUPERPOWER
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, POISON_STING
	dbw 6, PECK
	dbw 10, FOCUS_ENERGY
	dbw 14, DOUBLE_KICK
	dbw 19, FURY_ATTACK
	dbw 23, HORN_ATTACK
	dbw 27, TOXIC
	dbw 32, POISON_JAB
	dbw 36, SWAGGER
	dbw 40, HORN_DRILL
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, POISON_STING
	dbw 6, SCRATCH
	dbw 10, FOCUS_ENERGY
	dbw 14, DOUBLE_KICK
	dbw 20, FURY_ATTACK
	dbw 25, HORN_ATTACK
	dbw 31, TOXIC
	dbw 37, POISON_JAB
	dbw 42, SWAGGER
	dbw 48, HORN_DRILL
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, FOCUS_ENERGY
	dbw 1, DOUBLE_KICK
	dbw 1, POISON_STING
	dbw 36, THRASH
	dbw 45, EARTH_POWER
	dbw 58, MEGAHORN
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 4, ENCORE
	dbw 8, SING
	dbw 13, DOUBLESLAP
	dbw 17, DEFENSE_CURL
	dbw 22, MINIMIZE
	dbw 26, WAKE_UP_SLAP
	dbw 31, METRONOME
	dbw 35, BODY_SLAM
	dbw 40, MOONLIGHT
	dbw 44, MOONBLAST
	dbw 49, METEOR_MASH
	dbw 53, LIGHT_SCREEN
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SING
	dbw 1, DOUBLESLAP
	dbw 1, METRONOME
	dbw 1, MINIMIZE
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	dbbw EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, TAIL_WHIP
	dbw 5, DISABLE
	dbw 9, QUICK_ATTACK
	dbw 13, SPITE
	dbw 17, FIRE_SPIN
	dbw 21, CONFUSE_RAY
	dbw 25, WILL_O_WISP
	dbw 39, EXTRASENSORY
	dbw 33, FLAMETHROWER
	dbw 37, SAFEGUARD
	dbw 41, FIRE_BLAST
	dbw 45, MEMENTO
	dbw 49, HEAT_WAVE
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FLAMETHROWER
	dbw 1, QUICK_ATTACK
	dbw 1, CONFUSE_RAY
	dbw 1, SAFEGUARD
	dbw 43, NASTY_PLOT
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	dbw 1, SING
	dbw 5, DEFENSE_CURL
	dbw 9, POUND
	dbw 13, DISABLE
	dbw 17, DOUBLESLAP
	dbw 21, ROLLOUT
	dbw 25, ECHOED_VOICE
	dbw 29, WAKE_UP_SLAP
	dbw 33, REST
	dbw 37, BODY_SLAM
	dbw 41, MIMIC
	dbw 45, PLAY_ROUGH
	dbw 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SING
	dbw 1, DISABLE
	dbw 1, DEFENSE_CURL
	dbw 1, DOUBLESLAP
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	dbw 1, LEECH_LIFE
	dbw 5, SUPERSONIC
	dbw 8, ASTONISH
	dbw 12, BITE
	dbw 15, WING_ATTACK
	dbw 19, CONFUSE_RAY
	dbw 22, SWIFT
	dbw 26, CRUNCH
	dbw 29, AIR_CUTTER
	dbw 33, POISON_FANG
	dbw 36, MEAN_LOOK
	dbw 40, HAZE
	dbw 43, AIR_SLASH
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	dbw 1, LEECH_LIFE
	dbw 1, SUPERSONIC
	dbw 1, ASTONISH
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

OddishEvosAttacks:
	dbbw EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, GROWTH
	dbw 5, SWEET_SCENT
	dbw 10, ACID
	dbw 14, POISONPOWDER
	dbw 15, STUN_SPORE
	dbw 16, SLEEP_POWDER
	dbw 21, MEGA_DRAIN
	dbw 25, MOONLIGHT
	dbw 30, TOXIC
	dbw 34, GIGA_DRAIN
	dbw 41, MOONBLAST
	dbw 45, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	dbbw EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, GROWTH
	dbw 1, SWEET_SCENT
	dbw 5, SWEET_SCENT
	dbw 10, ACID
	dbw 14, POISONPOWDER
	dbw 15, STUN_SPORE
	dbw 16, SLEEP_POWDER
	dbw 23, MEGA_DRAIN
	dbw 28, MOONLIGHT
	dbw 35, TOXIC
	dbw 40, GIGA_DRAIN
	dbw 47, MOONBLAST
	dbw 52, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, MEGA_DRAIN
	dbw 1, GROWTH
	dbw 1, POISONPOWDER
	dbw 1, STUN_SPORE
	dbw 52, PETAL_DANCE
	dbw 60, SOLARBEAM
	db 0 ; no more level-up moves

ParasEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 4, SLEEP_POWDER
	dbw 6, STUN_SPORE
	dbw 8, POISONPOWDER
	dbw 11, ABSORB
	dbw 17, FURY_CUTTER
	dbw 22, SPORE
	dbw 27, SLASH
	dbw 33, GROWTH
	dbw 38, GIGA_DRAIN
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, SLEEP_POWDER
	dbw 6, STUN_SPORE
	dbw 8, POISONPOWDER
	dbw 11, ABSORB
	dbw 17, FURY_CUTTER
	dbw 22, SPORE
	dbw 29, SLASH
	dbw 37, GROWTH
	dbw 44, GIGA_DRAIN
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DISABLE
	dbw 1, FORESIGHT
	dbw 5, SUPERSONIC
	dbw 11, CONFUSION
	dbw 13, POISONPOWDER
	dbw 17, LEECH_LIFE
	dbw 23, STUN_SPORE
	dbw 25, PSYBEAM
	dbw 29, SLEEP_POWDER
	dbw 35, SIGNAL_BEAM
	dbw 37, ZEN_HEADBUTT
	dbw 41, POISON_FANG
	dbw 47, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DISABLE
	dbw 1, FORESIGHT
	dbw 5, SUPERSONIC
	dbw 11, CONFUSION
	dbw 13, POISONPOWDER
	dbw 17, LEECH_LIFE
	dbw 23, STUN_SPORE
	dbw 25, PSYBEAM
	dbw 29, SLEEP_POWDER
	dbw 31, GUST
	dbw 37, SIGNAL_BEAM
	dbw 41, ZEN_HEADBUTT
	dbw 47, POISON_FANG
	dbw 55, PSYCHIC_M
	dbw 59, BUG_BUZZ
	dbw 63, QUIVER_DANCE
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, SAND_ATTACK
	dbw 4, GROWL
	dbw 7, ASTONISH
	dbw 10, MUD_SLAP
	dbw 13, MAGNITUDE
	dbw 16, BULLDOZE
	dbw 19, SUCKER_PUNCH
	dbw 22, MUD_BOMB
	dbw 25, DIG
	dbw 28, SANDSTORM
	dbw 31, EARTH_POWER
	dbw 35, SLASH
	dbw 39, EARTHQUAKE
	dbw 43, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TRI_ATTACK
	dbw 1, SCRATCH
	dbw 1, SAND_ATTACK
	dbw 4, GROWL
	dbw 7, ASTONISH
	dbw 10, MUD_SLAP
	dbw 13, MAGNITUDE
	dbw 16, BULLDOZE
	dbw 19, SUCKER_PUNCH
	dbw 22, MUD_BOMB
	dbw 26, SAND_TOMB
	dbw 27, DIG
	dbw 33, SANDSTORM
	dbw 37, EARTH_POWER
	dbw 42, SLASH
	dbw 47, EARTHQUAKE
	dbw 51, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 6, BITE
	dbw 9, FAKE_OUT
	dbw 14, FURY_SWIPES
	dbw 17, SCREECH
	dbw 22, FEINT_ATTACK
	dbw 25, TAUNT
	dbw 30, PAY_DAY
	dbw 33, SLASH
	dbw 38, NASTY_PLOT
	dbw 41, ASSURANCE
	dbw 46, NIGHT_SLASH
	dbw 49, PLAY_ROUGH
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 6, BITE
	dbw 9, FAKE_OUT
	dbw 14, FURY_SWIPES
	dbw 17, SCREECH
	dbw 22, FEINT_ATTACK
	dbw 25, TAUNT
	dbw 28, SWIFT
	dbw 32, POWER_GEM
	dbw 37, SLASH
	dbw 44, NASTY_PLOT
	dbw 49, ASSURANCE
	dbw 56, NIGHT_SLASH
	dbw 61, PLAY_ROUGH
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 4, TAIL_WHIP
	dbw 8, WATER_GUN
	dbw 11, CONFUSION
	dbw 15, FURY_SWIPES
	dbw 18, WATER_PULSE
	dbw 22, DISABLE
	dbw 25, SCREECH
	dbw 29, ZEN_HEADBUTT
	dbw 32, PSYCH_UP
	dbw 36, AMNESIA
	dbw 39, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 4, TAIL_WHIP
	dbw 8, WATER_GUN
	dbw 11, CONFUSION
	dbw 15, FURY_SWIPES
	dbw 18, WATER_PULSE
	dbw 22, DISABLE
	dbw 25, SCREECH
	dbw 29, ZEN_HEADBUTT
	dbw 33, AQUA_JET
	dbw 34, PSYCH_UP
	dbw 39, AMNESIA
	dbw 44, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, LOW_KICK
	dbw 1, FOCUS_ENERGY
	dbw 9, FURY_SWIPES
	dbw 13, KARATE_CHOP
	dbw 17, PURSUIT
	dbw 21, SEISMIC_TOSS
	dbw 25, SWAGGER
	dbw 33, CROSS_CHOP
	dbw 37, ASSURANCE
	dbw 41, THRASH
	dbw 45, CLOSE_COMBAT
	dbw 49, SCREECH
	dbw 53, OUTRAGE
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, LOW_KICK
	dbw 1, FOCUS_ENERGY
	dbw 9, FURY_SWIPES
	dbw 13, KARATE_CHOP
	dbw 17, PURSUIT
	dbw 21, SEISMIC_TOSS
	dbw 25, SWAGGER
	dbw 28, RAGE
	dbw 35, CROSS_CHOP
	dbw 41, ASSURANCE
	dbw 47, THRASH
	dbw 53, CLOSE_COMBAT
	dbw 59, SCREECH
	dbw 63, OUTRAGE
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	dbbw EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, LEER
	dbw 5, HOWL
	dbw 9, BITE
	dbw 12, ODOR_SLEUTH
	dbw 16, FLAME_WHEEL
	dbw 20, REVERSAL
	dbw 23, TAKE_DOWN
	dbw 27, FIRE_FANG
	dbw 31, AGILITY
	dbw 34, FLAMETHROWER
	dbw 38, CRUNCH
	dbw 42, ROAR
	dbw 45, HEAT_WAVE
	dbw 49, OUTRAGE
	dbw 53, FLARE_BLITZ
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 1, ROAR
	dbw 1, FIRE_FANG
	dbw 45, EXTREMESPEED
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 7, HYPNOSIS
	dbw 11, WATER_GUN
	dbw 15, DOUBLESLAP
	dbw 18, MUD_SHOT
	dbw 21, BUBBLEBEAM
	dbw 25, RAIN_DANCE
	dbw 28, BODY_SLAM
	dbw 31, MUD_BOMB
	dbw 35, BELLY_DRUM
	dbw 38, WAKE_UP_SLAP
	dbw 41, HYDRO_PUMP
	dbw 45, EARTH_POWER
	dbw 48, DOUBLE_EDGE
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, POLIWRATH
	dbbw EVOLVE_TRADE, KINGS_ROCK, POLITOED
	dbbw EVOLVE_ITEM, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, HYPNOSIS
	dbw 7, HYPNOSIS
	dbw 11, WATER_GUN
	dbw 15, DOUBLESLAP
	dbw 18, MUD_SHOT
	dbw 21, BUBBLEBEAM
	dbw 27, RAIN_DANCE
	dbw 32, BODY_SLAM
	dbw 37, MUD_BOMB
	dbw 43, BELLY_DRUM
	dbw 48, WAKE_UP_SLAP
	dbw 53, HYDRO_PUMP
	dbw 59, EARTH_POWER
	dbw 64, DOUBLE_EDGE
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLEBEAM
	dbw 1, HYPNOSIS
	dbw 1, DOUBLESLAP
	dbw 1, SUBMISSION
	dbw 43, DYNAMICPUNCH
	dbw 53, MIND_READER
	db 0 ; no more level-up moves

AbraEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	dbbw EVOLVE_TRADE, -1, ALAKAZAM
	dbbw EVOLVE_LEVEL, 38, ALAKAZAM
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	dbw 1, KINESIS
	dbw 1, CONFUSION
	dbw 16, KINESIS
	dbw 16, CONFUSION
	dbw 20, DISABLE
	dbw 24, PSYBEAM
	dbw 28, REFLECT
	dbw 32, PSYCHO_CUT
	dbw 36, RECOVER
	dbw 40, PSYCHIC_M
	dbw 44, FUTURE_SIGHT
	dbw 48, CALM_MIND
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	dbw 1, KINESIS
	dbw 1, CONFUSION
	dbw 16, KINESIS
	dbw 16, CONFUSION
	dbw 20, DISABLE
	dbw 24, PSYBEAM
	dbw 28, REFLECT
	dbw 32, PSYCHO_CUT
	dbw 36, RECOVER
	dbw 40, PSYCHIC_M
	dbw 44, FUTURE_SIGHT
	dbw 48, CALM_MIND
	db 0 ; no more level-up moves

MachopEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	dbw 1, LOW_KICK
	dbw 1, LEER
	dbw 4, FOCUS_ENERGY
	dbw 8, KARATE_CHOP
	dbw 11, FORESIGHT
	dbw 15, SEISMIC_TOSS
	dbw 18, REVENGE
	dbw 22, KNOCK_OFF
	dbw 25, VITAL_THROW
	dbw 29, WAKE_UP_SLAP
	dbw 31, DUAL_CHOP
	dbw 35, SUBMISSION
	dbw 38, CROSS_CHOP
	dbw 42, SCARY_FACE
	dbw 45, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	dbbw EVOLVE_TRADE, -1, MACHAMP
	dbbw EVOLVE_LEVEL, 38, MACHAMP
	db 0 ; no more evolutions
	dbw 1, LOW_KICK
	dbw 1, LEER
	dbw 4, FOCUS_ENERGY
	dbw 8, KARATE_CHOP
	dbw 11, FORESIGHT
	dbw 15, SEISMIC_TOSS
	dbw 18, REVENGE
	dbw 22, KNOCK_OFF
	dbw 25, VITAL_THROW
	dbw 31, WAKE_UP_SLAP
	dbw 35, DUAL_CHOP
	dbw 41, SUBMISSION
	dbw 45, CROSS_CHOP
	dbw 51, SCARY_FACE
	dbw 55, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LOW_KICK
	dbw 1, LEER
	dbw 4, FOCUS_ENERGY
	dbw 8, KARATE_CHOP
	dbw 11, FORESIGHT
	dbw 15, SEISMIC_TOSS
	dbw 18, REVENGE
	dbw 22, KNOCK_OFF
	dbw 25, VITAL_THROW
	dbw 31, WAKE_UP_SLAP
	dbw 35, DUAL_CHOP
	dbw 41, SUBMISSION
	dbw 45, CROSS_CHOP
	dbw 51, SCARY_FACE
	dbw 55, DYNAMICPUNCH
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	dbbw EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 7, GROWTH
	dbw 11, WRAP
	dbw 13, SLEEP_POWDER
	dbw 15, POISONPOWDER
	dbw 17, STUN_SPORE
	dbw 21, ACID
	dbw 27, KNOCK_OFF
	dbw 31, SWEET_SCENT
	dbw 37, RAZOR_LEAF
	dbw 41, POISON_JAB
	dbw 47, SLAM
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 7, GROWTH
	dbw 11, WRAP
	dbw 13, SLEEP_POWDER
	dbw 15, POISONPOWDER
	dbw 17, STUN_SPORE
	dbw 24, ACID
	dbw 29, KNOCK_OFF
	dbw 36, SWEET_SCENT
	dbw 41, RAZOR_LEAF
	dbw 48, POISON_JAB
	dbw 53, SLAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 1, SLEEP_POWDER
	dbw 1, SWEET_SCENT
	dbw 1, RAZOR_LEAF
	dbw 44, LEAF_STORM
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 6, SUPERSONIC
	dbw 10, CONSTRICT
	dbw 14, ACID
	dbw 19, WATER_PULSE
	dbw 23, WRAP
	dbw 27, BUBBLEBEAM
	dbw 32, POISON_JAB
	dbw 36, ACID_ARMOR
	dbw 40, SCREECH
	dbw 45, HYDRO_PUMP
	dbw 49, SLUDGE_BOMB
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 6, SUPERSONIC
	dbw 10, CONSTRICT
	dbw 14, ACID
	dbw 19, WATER_PULSE
	dbw 23, WRAP
	dbw 27, BUBBLEBEAM
	dbw 33, POISON_JAB
	dbw 39, ACID_ARMOR
	dbw 45, SCREECH
	dbw 51, HYDRO_PUMP
	dbw 57, SLUDGE_BOMB
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, DEFENSE_CURL
	dbw 9, BIDE
	dbw 13, ROLLOUT
	dbw 17, MAGNITUDE
	dbw 21, ROCK_THROW
	dbw 25, BULLDOZE
	dbw 29, SELFDESTRUCT
	dbw 33, ROCK_BLAST
	dbw 37, EARTHQUAKE
	dbw 41, EXPLOSION
	dbw 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	dbbw EVOLVE_TRADE, -1, GOLEM
	dbbw EVOLVE_LEVEL, 38, GOLEM
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, DEFENSE_CURL
	dbw 9, BIDE
	dbw 13, ROLLOUT
	dbw 17, MAGNITUDE
	dbw 21, ROCK_THROW
	dbw 25, BULLDOZE
	dbw 31, SELFDESTRUCT
	dbw 36, ROCK_BLAST
	dbw 42, EARTHQUAKE
	dbw 47, EXPLOSION
	dbw 53, DOUBLE_EDGE
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, DEFENSE_CURL
	dbw 9, BIDE
	dbw 13, ROLLOUT
	dbw 17, MAGNITUDE
	dbw 21, ROCK_THROW
	dbw 25, BULLDOZE
	dbw 31, SELFDESTRUCT
	dbw 36, ROCK_BLAST
	dbw 42, EARTHQUAKE
	dbw 47, EXPLOSION
	dbw 53, DOUBLE_EDGE
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, TAIL_WHIP
	dbw 10, EMBER
	dbw 14, DOUBLE_KICK
	dbw 19, FLAME_WHEEL
	dbw 23, STOMP
	dbw 28, FIRE_SPIN
	dbw 32, AGILITY
	dbw 37, FIRE_BLAST
	dbw 41, TAKE_DOWN
	dbw 46, FLARE_BLITZ
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, TAIL_WHIP
	dbw 10, EMBER
	dbw 14, DOUBLE_KICK
	dbw 19, FLAME_WHEEL
	dbw 23, STOMP
	dbw 28, FIRE_SPIN
	dbw 32, AGILITY
	dbw 37, FIRE_BLAST
	dbw 40, FURY_ATTACK
	dbw 44, TAKE_DOWN
	dbw 50, FLARE_BLITZ
	dbw 57, MEGAHORN
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, SLOWBRO
	dbbw EVOLVE_TRADE, KINGS_ROCK, SLOWKING
	dbbw EVOLVE_ITEM, KINGS_ROCK, SLOWKING
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
	dbw 29, AMNESIA
	dbw 32, REST
	dbw 36, PSYCHIC_M
	dbw 39, RAIN_DANCE
	dbw 43, PSYCH_UP
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
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
	dbw 29, AMNESIA
	dbw 32, REST
	dbw 37, WITHDRAW
	dbw 38, PSYCHIC_M
	dbw 45, RAIN_DANCE
	dbw 51, PSYCH_UP
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, THUNDERSHOCK
	dbw 10, SUPERSONIC
	dbw 14, SONICBOOM
	dbw 19, THUNDER_WAVE
	dbw 23, SPARK
	dbw 28, METAL_SOUND
	dbw 32, FLASH_CANNON
	dbw 37, SCREECH
	dbw 41, DISCHARGE
	dbw 46, LIGHT_SCREEN
	dbw 50, LOCK_ON
	dbw 55, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, THUNDERSHOCK
	dbw 10, SUPERSONIC
	dbw 14, SONICBOOM
	dbw 19, THUNDER_WAVE
	dbw 23, SPARK
	dbw 28, METAL_SOUND
	dbw 30, TRI_ATTACK
	dbw 33, FLASH_CANNON
	dbw 39, SCREECH
	dbw 44, DISCHARGE
	dbw 50, LIGHT_SCREEN
	dbw 55, LOCK_ON
	dbw 61, ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, SAND_ATTACK
	dbw 4, LEER
	dbw 8, FURY_ATTACK
	dbw 13, AERIAL_ACE
	dbw 17, KNOCK_OFF
	dbw 21, SLASH
	dbw 26, AIR_CUTTER
	dbw 30, SWORDS_DANCE
	dbw 34, AGILITY
	dbw 39, NIGHT_SLASH
	dbw 43, FALSE_SWIPE
	dbw 47, AIR_SLASH
	dbw 52, BRAVE_BIRD
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 7, QUICK_ATTACK
	dbw 11, RAGE
	dbw 15, FURY_ATTACK
	dbw 21, PURSUIT
	dbw 25, AGILITY
	dbw 29, SWORDS_DANCE
	dbw 35, JUMP_KICK
	dbw 39, DRILL_PECK
	dbw 43, ENDEAVOR
	dbw 49, THRASH
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 7, QUICK_ATTACK
	dbw 11, RAGE
	dbw 15, FURY_ATTACK
	dbw 21, PURSUIT
	dbw 25, AGILITY
	dbw 29, SWORDS_DANCE
	dbw 31, TRI_ATTACK
	dbw 35, JUMP_KICK
	dbw 39, DRILL_PECK
	dbw 43, ENDEAVOR
	dbw 49, THRASH
	db 0 ; no more level-up moves

SeelEvosAttacks:
	dbbw EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	dbw 1, HEADBUTT
	dbw 4, GROWL
	dbw 8, ICY_WIND
	dbw 12, ENCORE
	dbw 15, ICE_SHARD
	dbw 19, REST
	dbw 23, AQUA_RING
	dbw 26, AURORA_BEAM
	dbw 30, AQUA_JET
	dbw 34, BRINE
	dbw 37, TAKE_DOWN
	dbw 41, DIVE
	dbw 45, ICE_BEAM
	dbw 48, SAFEGUARD
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HEADBUTT
	dbw 4, GROWL
	dbw 8, ICY_WIND
	dbw 12, ENCORE
	dbw 15, ICE_SHARD
	dbw 19, REST
	dbw 23, AQUA_RING
	dbw 26, AURORA_BEAM
	dbw 30, AQUA_JET
	dbw 36, BRINE
	dbw 42, TAKE_DOWN
	dbw 48, DIVE
	dbw 54, ICE_BEAM
	dbw 60, SAFEGUARD
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, POISON_GAS
	dbw 4, HARDEN
	dbw 11, MUD_SLAP
	dbw 15, DISABLE
	dbw 20, SLUDGE
	dbw 24, MINIMIZE
	dbw 29, MUD_BOMB
	dbw 33, SCREECH
	dbw 38, SLUDGE_BOMB
	dbw 42, ACID_ARMOR
	dbw 47, TOXIC
	dbw 51, MEMENTO
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, POISON_GAS
	dbw 4, HARDEN
	dbw 11, MUD_SLAP
	dbw 15, DISABLE
	dbw 20, SLUDGE
	dbw 24, MINIMIZE
	dbw 29, MUD_BOMB
	dbw 33, SCREECH
	dbw 38, SLUDGE_BOMB
	dbw 44, ACID_ARMOR
	dbw 51, TOXIC
	dbw 57, MEMENTO
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, WITHDRAW
	dbw 6, WATER_GUN
	dbw 9, SUPERSONIC
	dbw 14, ICE_SHARD
	dbw 17, LEER
	dbw 22, CLAMP
	dbw 25, AURORA_BEAM
	dbw 30, PROTECT
	dbw 33, WHIRLPOOL
	dbw 38, BRINE
	dbw 42, IRON_DEFENSE
	dbw 47, ICE_BEAM
	dbw 50, HYDRO_PUMP
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WITHDRAW
	dbw 1, SUPERSONIC
	dbw 1, AURORA_BEAM
	dbw 1, PROTECT
	dbw 33, SPIKES
	dbw 42, SPIKE_CANNON
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	dbw 1, HYPNOSIS
	dbw 1, LICK
	dbw 1, SMOG
	dbw 5, SPITE
	dbw 8, MEAN_LOOK
	dbw 12, CURSE
	dbw 15, NIGHT_SHADE
	dbw 19, POISON_GAS
	dbw 22, CONFUSE_RAY
	dbw 26, SUCKER_PUNCH
	dbw 29, SHADOW_BALL
	dbw 33, DREAM_EATER
	dbw 36, DARK_PULSE
	dbw 40, DESTINY_BOND
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	dbbw EVOLVE_TRADE, -1, GENGAR
	dbbw EVOLVE_LEVEL, 38, GENGAR
	db 0 ; no more evolutions
	dbw 1, HYPNOSIS
	dbw 1, LICK
	dbw 1, SMOG
	dbw 5, SPITE
	dbw 8, MEAN_LOOK
	dbw 12, CURSE
	dbw 15, NIGHT_SHADE
	dbw 19, POISON_GAS
	dbw 22, CONFUSE_RAY
	dbw 25, SHADOW_PUNCH
	dbw 28, SUCKER_PUNCH
	dbw 33, SHADOW_BALL
	dbw 39, DREAM_EATER
	dbw 44, DARK_PULSE
	dbw 50, DESTINY_BOND
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HYPNOSIS
	dbw 1, LICK
	dbw 1, SMOG
	dbw 5, SPITE
	dbw 8, MEAN_LOOK
	dbw 12, CURSE
	dbw 15, NIGHT_SHADE
	dbw 19, POISON_GAS
	dbw 22, CONFUSE_RAY
	dbw 25, SHADOW_PUNCH
	dbw 28, SUCKER_PUNCH
	dbw 33, SHADOW_BALL
	dbw 39, DREAM_EATER
	dbw 44, DARK_PULSE
	dbw 50, DESTINY_BOND
	db 0 ; no more level-up moves

OnixEvosAttacks:
	dbbw EVOLVE_TRADE, METAL_COAT, STEELIX
	dbbw EVOLVE_ITEM, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 4, BIND
	dbw 7, CURSE
	dbw 10, ROCK_THROW
	dbw 14, ROCK_TOMB
	dbw 17, RAGE
	dbw 21, SANDSTORM
	dbw 24, SLAM
	dbw 28, DRAGONBREATH
	dbw 31, SCREECH
	dbw 35, SAND_TOMB
	dbw 38, IRON_TAIL
	dbw 42, DIG
	dbw 45, DOUBLE_EDGE
	dbw 49, ROCK_SLIDE
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, HYPNOSIS
	dbw 5, DISABLE
	dbw 8, CONFUSION
	dbw 12, HEADBUTT
	dbw 15, POISON_GAS
	dbw 19, MEDITATE
	dbw 22, PSYBEAM
	dbw 26, WAKE_UP_SLAP
	dbw 29, PSYCH_UP
	dbw 33, ZEN_HEADBUTT
	dbw 36, SWAGGER
	dbw 40, PSYCHIC_M
	dbw 43, NASTY_PLOT
	dbw 47, PSYSHOCK
	dbw 50, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, HYPNOSIS
	dbw 5, DISABLE
	dbw 8, CONFUSION
	dbw 12, HEADBUTT
	dbw 15, POISON_GAS
	dbw 19, MEDITATE
	dbw 22, PSYBEAM
	dbw 27, WAKE_UP_SLAP
	dbw 31, PSYCH_UP
	dbw 36, ZEN_HEADBUTT
	dbw 40, SWAGGER
	dbw 45, PSYCHIC_M
	dbw 49, NASTY_PLOT
	dbw 54, PSYSHOCK
	dbw 58, FUTURE_SIGHT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, LEER
	dbw 5, VICEGRIP
	dbw 9, HARDEN
	dbw 11, METAL_CLAW
	dbw 15, MUD_SHOT
	dbw 19, PROTECT
	dbw 21, BUBBLEBEAM
	dbw 25, STOMP
	dbw 29, FLAIL
	dbw 31, DIVE
	dbw 35, SLAM
	dbw 39, SWORDS_DANCE
	dbw 41, CRABHAMMER
	dbw 45, GUILLOTINE
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, LEER
	dbw 5, VICEGRIP
	dbw 9, HARDEN
	dbw 11, METAL_CLAW
	dbw 15, MUD_SHOT
	dbw 19, PROTECT
	dbw 21, BUBBLEBEAM
	dbw 25, STOMP
	dbw 32, FLAIL
	dbw 37, DIVE
	dbw 44, SLAM
	dbw 51, SWORDS_DANCE
	dbw 56, CRABHAMMER
	dbw 63, GUILLOTINE
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, CHARGE
	dbw 5, SONICBOOM
	dbw 9, SPARK
	dbw 13, ROLLOUT
	dbw 17, SCREECH
	dbw 21, CHARGE_BEAM
	dbw 25, SELFDESTRUCT
	dbw 29, SWIFT
	dbw 33, LIGHT_SCREEN
	dbw 37, DISCHARGE
	dbw 41, EXPLOSION
	dbw 45, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, CHARGE
	dbw 5, SONICBOOM
	dbw 9, SPARK
	dbw 13, ROLLOUT
	dbw 17, SCREECH
	dbw 21, CHARGE_BEAM
	dbw 25, SELFDESTRUCT
	dbw 29, SWIFT
	dbw 35, LIGHT_SCREEN
	dbw 40, DISCHARGE
	dbw 46, EXPLOSION
	dbw 51, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	dbw 1, BARRAGE
	dbw 1, HYPNOSIS
	dbw 4, ABSORB
	dbw 9, REFLECT
	dbw 13, LEECH_SEED
	dbw 18, MEGA_DRAIN
	dbw 22, CONFUSION
	dbw 24, STUN_SPORE
	dbw 26, POISONPOWDER
	dbw 28, SLEEP_POWDER
	dbw 33, SYNTHESIS
	dbw 37, GIGA_DRAIN
	dbw 42, EXTRASENSORY
	dbw 46, SOLARBEAM
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BARRAGE
	dbw 1, HYPNOSIS
	dbw 1, ABSORB
	dbw 1, CONFUSION
	dbw 22, STOMP
	dbw 30, PSYSHOCK
	dbw 38, EGG_BOMB
	dbw 46, WOOD_HAMMER
	dbw 54, LEAF_STORM
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 5, TAIL_WHIP
	dbw 9, BONE_CLUB
	dbw 13, HEADBUTT
	dbw 17, LEER
	dbw 21, FOCUS_ENERGY
	dbw 25, BONE_RUSH
	dbw 29, RAGE
	dbw 33, FALSE_SWIPE
	dbw 37, THRASH
	dbw 41, BONEMERANG
	dbw 45, ENDEAVOR
	dbw 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 1, BONE_CLUB
	dbw 1, HEADBUTT
	dbw 13, HEADBUTT
	dbw 17, LEER
	dbw 21, FOCUS_ENERGY
	dbw 25, BONE_RUSH
	dbw 32, RAGE
	dbw 38, FALSE_SWIPE
	dbw 44, THRASH
	dbw 50, BONEMERANG
	dbw 56, ENDEAVOR
	dbw 62, DOUBLE_EDGE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, REVENGE
	dbw 1, MEDITATE
	dbw 6, ROLLING_KICK
	dbw 11, JUMP_KICK
	dbw 15, BRICK_BREAK
	dbw 20, DOUBLE_KICK
	dbw 25, FOCUS_ENERGY
	dbw 29, HI_JUMP_KICK
	dbw 34, MIND_READER
	dbw 39, FORESIGHT
	dbw 43, BLAZE_KICK
	dbw 48, ENDURE
	dbw 53, MEGA_KICK
	dbw 57, CLOSE_COMBAT
	dbw 62, REVERSAL
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, REVENGE
	dbw 1, AGILITY
	dbw 6, PURSUIT
	dbw 11, MACH_PUNCH
	dbw 15, BULLET_PUNCH
	dbw 20, COMET_PUNCH
	dbw 25, FOCUS_ENERGY
	dbw 29, THUNDERPUNCH
	dbw 29, ICE_PUNCH
	dbw 29, FIRE_PUNCH
	dbw 34, DRAIN_PUNCH
	dbw 39, DETECT
	dbw 43, MEGA_PUNCH
	dbw 48, COUNTER
	dbw 53, CLOSE_COMBAT
	dbw 57, REVERSAL
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LICK
	dbw 5, DEFENSE_CURL
	dbw 9, SUPERSONIC
	dbw 13, KNOCK_OFF
	dbw 17, WRAP
	dbw 21, STOMP
	dbw 25, DISABLE
	dbw 29, SLAM
	dbw 33, ROLLOUT
	dbw 37, SCREECH
	dbw 41, THRASH
	dbw 45, AMNESIA
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	dbw 1, POISON_GAS
	dbw 1, TACKLE
	dbw 5, SMOG
	dbw 10, SMOKESCREEN
	dbw 14, ASSURANCE
	dbw 19, SLUDGE
	dbw 23, SELFDESTRUCT
	dbw 28, HAZE
	dbw 32, TOXIC
	dbw 37, SLUDGE_BOMB
	dbw 41, EXPLOSION
	dbw 46, DESTINY_BOND
	dbw 50, MEMENTO
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_GAS
	dbw 1, TACKLE
	dbw 5, SMOG
	dbw 10, SMOKESCREEN
	dbw 14, ASSURANCE
	dbw 19, SLUDGE
	dbw 23, SELFDESTRUCT
	dbw 28, HAZE
	dbw 32, TOXIC
	dbw 37, SLUDGE_BOMB
	dbw 41, EXPLOSION
	dbw 46, DESTINY_BOND
	dbw 50, MEMENTO
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 7, FURY_ATTACK
	dbw 10, ROCK_THROW
	dbw 16, BULLDOZE
	dbw 19, HORN_ATTACK
	dbw 25, SCARY_FACE
	dbw 28, STOMP
	dbw 34, ROCK_BLAST
	dbw 37, TAKE_DOWN
	dbw 43, ROCK_SLIDE
	dbw 46, EARTHQUAKE
	dbw 52, MEGAHORN
	dbw 55, HORN_DRILL
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 7, FURY_ATTACK
	dbw 10, ROCK_THROW
	dbw 16, BULLDOZE
	dbw 19, HORN_ATTACK
	dbw 25, SCARY_FACE
	dbw 28, STOMP
	dbw 34, ROCK_BLAST
	dbw 37, TAKE_DOWN
	dbw 45, ROCK_SLIDE
	dbw 50, EARTHQUAKE
	dbw 57, MEGAHORN
	dbw 62, HORN_DRILL
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 4, GROWL
	dbw 7, TAIL_WHIP
	dbw 10, DEFENSE_CURL
	dbw 13, DOUBLESLAP
	dbw 18, SING
	dbw 23, MINIMIZE
	dbw 28, EGG_BOMB
	dbw 33, SOFTBOILED
	dbw 40, LIGHT_SCREEN
	dbw 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, CONSTRICT
	dbw 5, STUN_SPORE
	dbw 9, GROWTH
	dbw 13, MEGA_DRAIN
	dbw 17, BIND
	dbw 21, VINE_WHIP
	dbw 25, POISONPOWDER
	dbw 29, KNOCK_OFF
	dbw 33, SLEEP_POWDER
	dbw 37, GIGA_DRAIN
	dbw 41, ANCIENTPOWER
	dbw 45, TICKLE
	dbw 49, SLAM
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COMET_PUNCH
	dbw 1, TAIL_WHIP
	dbw 1, FAKE_OUT
	dbw 5, GROWL
	dbw 9, BITE
	dbw 14, RAGE
	dbw 19, MEGA_PUNCH
	dbw 24, FOCUS_ENERGY
	dbw 28, DIZZY_PUNCH
	dbw 33, CRUNCH
	dbw 37, ENDURE
	dbw 42, REVERSAL
	dbw 46, SUCKER_PUNCH
	dbw 51, OUTRAGE
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, SEADRA
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
	dbw 37, BRINE
	dbw 41, DRAGON_PULSE
	dbw 46, HYDRO_PUMP
	dbw 50, DRAGON_DANCE
	dbw 55, RAIN_DANCE
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	dbbw EVOLVE_TRADE, DRAGON_SCALE, KINGDRA
	dbbw EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
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

GoldeenEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, TAIL_WHIP
	dbw 5, SUPERSONIC
	dbw 8, HORN_ATTACK
	dbw 13, FLAIL
	dbw 16, WATER_PULSE
	dbw 21, AQUA_RING
	dbw 24, FURY_ATTACK
	dbw 29, AGILITY
	dbw 32, WATERFALL
	dbw 37, HORN_DRILL
	dbw 40, MEGAHORN
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, TAIL_WHIP
	dbw 5, SUPERSONIC
	dbw 8, HORN_ATTACK
	dbw 13, FLAIL
	dbw 16, WATER_PULSE
	dbw 21, AQUA_RING
	dbw 24, FURY_ATTACK
	dbw 29, AGILITY
	dbw 32, WATERFALL
	dbw 40, HORN_DRILL
	dbw 46, MEGAHORN
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 5, WATER_GUN
	dbw 8, RAPID_SPIN
	dbw 12, MINIMIZE
	dbw 15, PSYWAVE
	dbw 19, SWIFT
	dbw 22, BUBBLEBEAM
	dbw 26, PSYBEAM
	dbw 29, RECOVER
	dbw 33, BRINE
	dbw 37, POWER_GEM
	dbw 40, CONFUSE_RAY
	dbw 43, PSYCHIC_M
	dbw 47, LIGHT_SCREEN
	dbw 50, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, RAPID_SPIN
	dbw 1, RECOVER
	dbw 1, SWIFT
	dbw 33, CONFUSE_RAY
	dbw 50, HYDRO_PUMP
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BARRIER
	dbw 5, CONFUSION
	dbw 9, MEDITATE
	dbw 13, DOUBLESLAP
	dbw 17, MIMIC
    dbw 17, PSYWAVE
	dbw 21, LIGHT_SCREEN
	dbw 21, REFLECT
	dbw 25, PSYBEAM
	dbw 29, ENCORE
	dbw 33, SUBSTITUTE
	dbw 37, PSYCHIC_M
	dbw 41, BATON_PASS
	dbw 46, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	dbbw EVOLVE_TRADE, METAL_COAT, SCIZOR
	dbbw EVOLVE_ITEM, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 6, FOCUS_ENERGY
	dbw 10, PURSUIT
	dbw 15, FALSE_SWIPE
	dbw 19, AGILITY
	dbw 24, WING_ATTACK
	dbw 28, FURY_CUTTER
	dbw 33, SLASH
	dbw 37, RAZOR_WIND
	dbw 42, DOUBLE_TEAM
	dbw 46, NIGHT_SLASH
	dbw 51, AIR_SLASH
	dbw 55, SWORDS_DANCE
	db 0 ; no more level-up moves

JynxEvosAttacks:
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
	dbw 33, LOVELY_KISS
	dbw 39, PSYCHIC
	dbw 44, BODY_SLAM
	dbw 50, PERISH_SONG
	dbw 55, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
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
	dbw 33, DISCHARGE
	dbw 39, LOW_KICK
	dbw 44, THUNDERBOLT
	dbw 50, LIGHT_SCREEN 
	dbw 55, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
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
	;dbw 33, LAVA_PLUME
	dbw 39, LOW_KICK
	dbw 44, FLAMETHROWER
	dbw 50, SUNNY_DAY 
	dbw 55, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, VICEGRIP
	dbw 1, FOCUS_ENERGY
	dbw 5, BIND
	dbw 9, SEISMIC_TOSS
	dbw 13, HARDEN
	dbw 17, REVENGE
	dbw 21, VITAL_THROW
	dbw 25, BRICK_BREAK
	;dbw 29, X_SCISSOR
	dbw 33, SUBMISSION
	dbw 37, SWORDS_DANCE
	dbw 41, THRASH
	dbw 45, SUPERPOWER
	dbw 49, GUILLOTINE
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 4, RAGE
	dbw 9, HORN_ATTACK
	dbw 15, SCARY_FACE
	dbw 19, PURSUIT
	dbw 24, REST
	dbw 30, ASSURANCE
	dbw 34, WORK_UP
	dbw 39, TAKE_DOWN
	dbw 45, ZEN_HEADBUTT
	dbw 49, SWAGGER
	dbw 54, THRASH
	dbw 60, DOUBLE_EDGE
	dbw 64, OUTRAGE
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 15, TACKLE
	dbw 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THRASH
	dbw 20, BITE
	dbw 21, LEER
	dbw 24, TWISTER
	;dbw 27, ICE_FANG
	dbw 30, BRINE
	dbw 33, SCARY_FACE
	dbw 36, DRAGON_RAGE
	dbw 39, CRUNCH
	dbw 42, HYDRO_PUMP
	dbw 45, DRAGON_DANCE
	;dbw 48, HURRICANE
	dbw 51, RAIN_DANCE
	dbw 54, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, GROWL
	dbw 1, SING
	dbw 8, MIST
	dbw 15, BODY_SLAM
	dbw 22, CONFUSE_RAY
	dbw 29, PERISH_SONG
	dbw 36, ICE_BEAM
	dbw 43, RAIN_DANCE
	dbw 50, SAFEGUARD
	dbw 57, HYDRO_PUMP
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	dbbw EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	dbbw EVOLVE_ITEM, WATER_STONE, VAPOREON
	dbbw EVOLVE_ITEM, FIRE_STONE, FLAREON
	dbbw EVOLVE_ITEM, LEAF_STONE, LEAFEON
	dbbw EVOLVE_ITEM, ICE_STONE, GLACEON
	dbbw EVOLVE_ITEM, MOON_STONE, SYLVEON
	dbbw EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	dbbw EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, GROWL
	dbw 23, QUICK_ATTACK
	dbw 30, BITE
	dbw 36, BATON_PASS
	dbw 42, TAKE_DOWN
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, WATER_GUN
	dbw 23, QUICK_ATTACK
	dbw 30, BITE
	dbw 36, AURORA_BEAM
	dbw 42, HAZE
	dbw 47, ACID_ARMOR
	dbw 52, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, THUNDERSHOCK
	dbw 23, QUICK_ATTACK
	dbw 30, DOUBLE_KICK
	dbw 36, PIN_MISSILE
	dbw 42, THUNDER_WAVE
	dbw 47, AGILITY
	dbw 52, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, EMBER
	dbw 23, QUICK_ATTACK
	dbw 30, BITE
	dbw 36, FIRE_SPIN
	dbw 42, SMOG
	dbw 47, LEER
	dbw 52, FLAMETHROWER
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	dbbw EVOLVE_TRADE, UP_GRADE, PORYGON2
	dbbw EVOLVE_ITEM, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	dbw 1, CONVERSION2
	dbw 1, TACKLE
	dbw 1, CONVERSION
	dbw 9, AGILITY
	dbw 12, PSYBEAM
	dbw 20, RECOVER
	dbw 24, SHARPEN
	dbw 32, LOCK_ON
	dbw 36, TRI_ATTACK
	dbw 44, ZAP_CANNON
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, WITHDRAW
	dbw 13, BITE
	dbw 19, WATER_GUN
	dbw 31, LEER
	dbw 37, PROTECT
	dbw 49, ANCIENTPOWER
	dbw 55, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, WITHDRAW
	dbw 1, BITE
	dbw 13, BITE
	dbw 19, WATER_GUN
	dbw 31, LEER
	dbw 37, PROTECT
	dbw 40, SPIKE_CANNON
	dbw 54, ANCIENTPOWER
	dbw 65, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 10, ABSORB
	dbw 19, LEER
	dbw 28, SAND_ATTACK
	dbw 37, ENDURE
	dbw 46, MEGA_DRAIN
	dbw 55, ANCIENTPOWER
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 1, ABSORB
	dbw 10, ABSORB
	dbw 19, LEER
	dbw 28, SAND_ATTACK
	dbw 37, ENDURE
	dbw 40, SLASH
	dbw 51, MEGA_DRAIN
	dbw 65, ANCIENTPOWER
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WING_ATTACK
	dbw 8, AGILITY
	dbw 15, BITE
	dbw 22, SUPERSONIC
	dbw 29, ANCIENTPOWER
	dbw 36, SCARY_FACE
	dbw 43, TAKE_DOWN
	dbw 50, HYPER_BEAM
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 8, AMNESIA
	dbw 15, DEFENSE_CURL
	dbw 22, BELLY_DRUM
	dbw 29, HEADBUTT
	dbw 36, SNORE
	dbw 36, REST
	dbw 43, BODY_SLAM
	dbw 50, ROLLOUT
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GUST
	dbw 1, POWDER_SNOW
	dbw 13, MIST
	dbw 25, AGILITY
	dbw 37, MIND_READER
	dbw 49, ICE_BEAM
	dbw 61, REFLECT
	dbw 73, BLIZZARD
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, THUNDERSHOCK
	dbw 13, THUNDER_WAVE
	dbw 25, AGILITY
	dbw 37, DETECT
	dbw 49, DRILL_PECK
	dbw 61, LIGHT_SCREEN
	dbw 73, THUNDER
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WING_ATTACK
	dbw 1, EMBER
	dbw 13, FIRE_SPIN
	dbw 25, AGILITY
	dbw 37, ENDURE
	dbw 49, FLAMETHROWER
	dbw 61, SAFEGUARD
	dbw 73, SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 8, THUNDER_WAVE
	dbw 15, TWISTER
	dbw 22, DRAGON_RAGE
	dbw 29, SLAM
	dbw 36, AGILITY
	dbw 43, SAFEGUARD
	dbw 50, OUTRAGE
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	dbbw EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 1, THUNDER_WAVE
	dbw 1, TWISTER
	dbw 8, THUNDER_WAVE
	dbw 15, TWISTER
	dbw 22, DRAGON_RAGE
	dbw 29, SLAM
	dbw 38, AGILITY
	dbw 47, SAFEGUARD
	dbw 56, OUTRAGE
	dbw 65, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 1, THUNDER_WAVE
	dbw 1, TWISTER
	dbw 8, THUNDER_WAVE
	dbw 15, TWISTER
	dbw 22, DRAGON_RAGE
	dbw 29, SLAM
	dbw 38, AGILITY
	dbw 47, SAFEGUARD
	dbw 55, WING_ATTACK
	dbw 61, OUTRAGE
	dbw 75, HYPER_BEAM
	dbw 82, DRAGON_PULSE
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DISABLE
	dbw 11, BARRIER
	dbw 22, SWIFT
	dbw 33, PSYCH_UP
	dbw 44, FUTURE_SIGHT
	dbw 55, MIST
	dbw 66, PSYCHIC_M
	dbw 77, AMNESIA
	dbw 88, RECOVER
	dbw 99, SAFEGUARD
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 10, TRANSFORM
	dbw 20, MEGA_PUNCH
	dbw 30, METRONOME
	dbw 40, PSYCHIC_M
	dbw 50, ANCIENTPOWER
	db 0 ; no more level-up moves
