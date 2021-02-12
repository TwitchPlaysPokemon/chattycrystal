; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - MonMenuIcons (see data/pokemon/menu_icons.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - EZChat_SortedPokemon (see data/pokemon/ezchat_order.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - Pokered_MonIndices (see data/pokemon/gen1_order.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
; - Footprints (see gfx/footprints.asm)
	const_def 1
	const BULBASAUR    ;   1
	const IVYSAUR      ;   2
	const VENUSAUR     ;   3
	const CHARMANDER   ;   4
	const CHARMELEON   ;   5
	const CHARIZARD    ;   6
	const SQUIRTLE     ;   7
	const WARTORTLE    ;   8
	const BLASTOISE    ;   9
	const CATERPIE     ;   a
	const METAPOD      ;   b
	const BUTTERFREE   ;   c
	const WEEDLE       ;   d
	const KAKUNA       ;   e
	const BEEDRILL     ;   f
	const PIDGEY       ;  10
	const PIDGEOTTO    ;  11
	const PIDGEOT      ;  12
	const RATTATA      ;  13
	const RATICATE     ;  14
	const SPEAROW      ;  15
	const FEAROW       ;  16
	const EKANS        ;  17
	const ARBOK        ;  18
	const PIKACHU      ;  19
	const RAICHU       ;  1a
	const SANDSHREW    ;  1b
	const SANDSLASH    ;  1c
	const NIDORAN_F    ;  1d
	const NIDORINA     ;  1e
	const NIDOQUEEN    ;  1f
	const NIDORAN_M    ;  20
	const NIDORINO     ;  21
	const NIDOKING     ;  22
	const CLEFAIRY     ;  23
	const CLEFABLE     ;  24
	const VULPIX       ;  25
	const NINETALES    ;  26
	const JIGGLYPUFF   ;  27
	const WIGGLYTUFF   ;  28
	const ZUBAT        ;  29
	const GOLBAT       ;  2a
	const ODDISH       ;  2b
	const GLOOM        ;  2c
	const VILEPLUME    ;  2d
	const PARAS        ;  2e
	const PARASECT     ;  2f
	const VENONAT      ;  30
	const VENOMOTH     ;  31
	const DIGLETT      ;  32
	const DUGTRIO      ;  33
	const MEOWTH       ;  34
	const PERSIAN      ;  35
	const PSYDUCK      ;  36
	const GOLDUCK      ;  37
	const MANKEY       ;  38
	const PRIMEAPE     ;  39
	const GROWLITHE    ;  3a
	const ARCANINE     ;  3b
	const POLIWAG      ;  3c
	const POLIWHIRL    ;  3d
	const POLIWRATH    ;  3e
	const ABRA         ;  3f
	const KADABRA      ;  40
	const ALAKAZAM     ;  41
	const MACHOP       ;  42
	const MACHOKE      ;  43
	const MACHAMP      ;  44
	const BELLSPROUT   ;  45
	const WEEPINBELL   ;  46
	const VICTREEBEL   ;  47
	const TENTACOOL    ;  48
	const TENTACRUEL   ;  49
	const GEODUDE      ;  4a
	const GRAVELER     ;  4b
	const GOLEM        ;  4c
	const PONYTA       ;  4d
	const RAPIDASH     ;  4e
	const SLOWPOKE     ;  4f
	const SLOWBRO      ;  50
	const MAGNEMITE    ;  51
	const MAGNETON     ;  52
	const FARFETCH_D   ;  53
	const DODUO        ;  54
	const DODRIO       ;  55
	const SEEL         ;  56
	const DEWGONG      ;  57
	const GRIMER       ;  58
	const MUK          ;  59
	const SHELLDER     ;  5a
	const CLOYSTER     ;  5b
	const GASTLY       ;  5c
	const HAUNTER      ;  5d
	const GENGAR       ;  5e
	const ONIX         ;  5f
	const DROWZEE      ;  60
	const HYPNO        ;  61
	const KRABBY       ;  62
	const KINGLER      ;  63
	const VOLTORB      ;  64
	const ELECTRODE    ;  65
	const EXEGGCUTE    ;  66
	const EXEGGUTOR    ;  67
	const CUBONE       ;  68
	const MAROWAK      ;  69
	const HITMONLEE    ;  6a
	const HITMONCHAN   ;  6b
	const LICKITUNG    ;  6c
	const KOFFING      ;  6d
	const WEEZING      ;  6e
	const RHYHORN      ;  6f
	const RHYDON       ;  70
	const CHANSEY      ;  71
	const TANGELA      ;  72
	const KANGASKHAN   ;  73
	const HORSEA       ;  74
	const SEADRA       ;  75
	const GOLDEEN      ;  76
	const SEAKING      ;  77
	const STARYU       ;  78
	const STARMIE      ;  79
	const MR__MIME     ;  7a
	const SCYTHER      ;  7b
	const JYNX         ;  7c
	const ELECTABUZZ   ;  7d
	const MAGMAR       ;  7e
	const PINSIR       ;  7f
	const TAUROS       ;  80
	const MAGIKARP     ;  81
	const GYARADOS     ;  82
	const LAPRAS       ;  83
	const DITTO        ;  84
	const EEVEE        ;  85
	const VAPOREON     ;  86
	const JOLTEON      ;  87
	const FLAREON      ;  88
	const PORYGON      ;  89
	const OMANYTE      ;  8a
	const OMASTAR      ;  8b
	const KABUTO       ;  8c
	const KABUTOPS     ;  8d
	const AERODACTYL   ;  8e
	const SNORLAX      ;  8f
	const ARTICUNO     ;  90
	const ZAPDOS       ;  91
	const MOLTRES      ;  92
	const DRATINI      ;  93
	const DRAGONAIR    ;  94
	const DRAGONITE    ;  95
	const MEWTWO       ;  96
	const MEW          ;  97
JOHTO_POKEMON EQU const_value
	const CHIKORITA    ;  98
	const BAYLEEF      ;  99
	const MEGANIUM     ;  9a
	const CYNDAQUIL    ;  9b
	const QUILAVA      ;  9c
	const TYPHLOSION   ;  9d
	const TOTODILE     ;  9e
	const CROCONAW     ;  9f
	const FERALIGATR   ;  a0
	const SENTRET      ;  a1
	const FURRET       ;  a2
	const HOOTHOOT     ;  a3
	const NOCTOWL      ;  a4
	const LEDYBA       ;  a5
	const LEDIAN       ;  a6
	const SPINARAK     ;  a7
	const ARIADOS      ;  a8
	const CROBAT       ;  a9
	const CHINCHOU     ;  aa
	const LANTURN      ;  ab
	const PICHU        ;  ac
	const CLEFFA       ;  ad
	const IGGLYBUFF    ;  ae
	const TOGEPI       ;  af
	const TOGETIC      ;  b0
	const NATU         ;  b1
	const XATU         ;  b2
	const MAREEP       ;  b3
	const FLAAFFY      ;  b4
	const AMPHAROS     ;  b5
	const BELLOSSOM    ;  b6
	const MARILL       ;  b7
	const AZUMARILL    ;  b8
	const SUDOWOODO    ;  b9
	const POLITOED     ;  ba
	const HOPPIP       ;  bb
	const SKIPLOOM     ;  bc
	const JUMPLUFF     ;  bd
	const AIPOM        ;  be
	const SUNKERN      ;  bf
	const SUNFLORA     ;  c0
	const YANMA        ;  c1
	const WOOPER       ;  c2
	const QUAGSIRE     ;  c3
	const ESPEON       ;  c4
	const UMBREON      ;  c5
	const MURKROW      ;  c6
	const SLOWKING     ;  c7
	const MISDREAVUS   ;  c8
	const UNOWN        ;  c9
	const WOBBUFFET    ;  ca
	const GIRAFARIG    ;  cb
	const PINECO       ;  cc
	const FORRETRESS   ;  cd
	const DUNSPARCE    ;  ce
	const GLIGAR       ;  cf
	const STEELIX      ;  d0
	const SNUBBULL     ;  d1
	const GRANBULL     ;  d2
	const QWILFISH     ;  d3
	const SCIZOR       ;  d4
	const SHUCKLE      ;  d5
	const HERACROSS    ;  d6
	const SNEASEL      ;  d7
	const TEDDIURSA    ;  d8
	const URSARING     ;  d9
	const SLUGMA       ;  da
	const MAGCARGO     ;  db
	const SWINUB       ;  dc
	const PILOSWINE    ;  dd
	const CORSOLA      ;  de
	const REMORAID     ;  df
	const OCTILLERY    ;  e0
	const DELIBIRD     ;  e1
	const MANTINE      ;  e2
	const SKARMORY     ;  e3
	const HOUNDOUR     ;  e4
	const HOUNDOOM     ;  e5
	const KINGDRA      ;  e6
	const PHANPY       ;  e7
	const DONPHAN      ;  e8
	const PORYGON2     ;  e9
	const STANTLER     ;  ea
	const SMEARGLE     ;  eb
	const TYROGUE      ;  ec
	const HITMONTOP    ;  ed
	const SMOOCHUM     ;  ee
	const ELEKID       ;  ef
	const MAGBY        ;  f0
	const MILTANK      ;  f1
	const BLISSEY      ;  f2
	const RAIKOU       ;  f3
	const ENTEI        ;  f4
	const SUICUNE      ;  f5
	const LARVITAR     ;  f6
	const PUPITAR      ;  f7
	const TYRANITAR    ;  f8
	const LUGIA        ;  f9
	const HO_OH        ;  fa
	const CELEBI       ;  fb
	const TREECKO      ;  fc
	const GROVYLE      ;  fd
	const SCEPTILE     ;  fe
	const TORCHIC      ;  ff - MISSING
	const COMBUSKEN    ; 100
	const BLAZIKEN     ; 101 - MISSING
	const MUDKIP       ; 102 - MISSING
	const MARSHTOMP    ; 103 - MISSING
	const SWAMPERT     ; 104 - MISSING
	const POOCHYENA    ; 105
	const MIGHTYENA    ; 106
	const ZIGZAGOON    ; 107
	const LINOONE      ; 108
	const LOTAD        ; 109
	const LOMBRE       ; 10a
	const LUDICOLO     ; 10b - MISSING
	const TAILLOW      ; 10c - MISSING
	const SWELLOW      ; 10d - MISSING
	const WINGULL      ; 10e - MISSING
	const PELIPPER     ; 10f - MISSING
	const RALTS        ; 110 - MISSING
	const KIRLIA       ; 111 - MISSING
	const GARDEVOIR    ; 112 - MISSING
	const SURSKIT      ; 113 - MISSING
	const MASQUERAIN   ; 114 - MISSING
	const WHISMUR      ; 115
	const LOUDRED      ; 116 - MISSING
	const EXPLOUD      ; 117 - MISSING
	const MAKUHITA     ; 118 - MISSING
	const HARIYAMA     ; 119 - MISSING
	const AZURILL      ; 11a - MISSING
	const SKITTY       ; 11b - MISSING
	const DELCATTY     ; 11c - MISSING
	const SABLEYE      ; 11d - MISSING
	const ARON         ; 11e - MISSING
	const LAIRON       ; 11f - MISSING
	const AGGRON       ; 120 - MISSING
	const ELECTRIKE    ; 121 - MISSING
	const MANECTRIC    ; 122 - MISSING
	const ROSELIA      ; 123 - MISSING
	const WAILMER      ; 124 - MISSING
	const WAILORD      ; 125 - MISSING
	const TRAPINCH     ; 126 - MISSING
	const VIBRAVA      ; 127 - MISSING
	const FLYGON       ; 128 - MISSING
	const SWABLU       ; 129 - MISSING
	const ALTARIA      ; 12a - MISSING
	const LILEEP       ; 12b - MISSING
	const CRADILY      ; 12c - MISSING
	const FEEBAS       ; 12d - MISSING
	const MILOTIC      ; 12e - MISSING
	const DUSKULL      ; 12f - MISSING
	const DUSCLOPS     ; 130 - MISSING
	const ABSOL        ; 131 - MISSING
	const SNORUNT      ; 132 - MISSING
	const SPHEAL       ; 133 - MISSING
	const SEALEO       ; 134 - MISSING
	const WALREIN      ; 135 - MISSING
	const BAGON        ; 136 - MISSING
	const SHELGON      ; 137 - MISSING
	const SALAMENCE    ; 138 - MISSING
	const BELDUM       ; 139 - MISSING
	const METANG       ; 13a - MISSING
	const METAGROSS    ; 13b - MISSING
	const LATIAS       ; 13c - MISSING
	const LATIOS       ; 13d - MISSING
	const GROUDON      ; 13e - MISSING
	const TURTWIG      ; 13f - MISSING
	const GROTLE       ; 140 - MISSING
	const TORTERRA     ; 141 - MISSING
	const CHIMCHAR     ; 142 - MISSING
	const MONFERNO     ; 143 - MISSING
	const INFERNAPE    ; 144 - MISSING
	const PIPLUP       ; 145 - MISSING
	const PRINPLUP     ; 146 - MISSING
	const EMPOLEON     ; 147 - MISSING
	const BIDOOF       ; 148 - MISSING
	const BIBAREL      ; 149 - MISSING
	const SHINX        ; 14a - MISSING
	const LUXIO        ; 14b - MISSING
	const LUXRAY       ; 14c - MISSING
	const BUDEW        ; 14d - MISSING
	const ROSERADE     ; 14e - MISSING
	const BURMY        ; 14f - MISSING
	const WORMADAM     ; 150 - MISSING
	const BUIZEL       ; 151 - MISSING
	const FLOATZEL     ; 152 - MISSING
	const SHELLOS      ; 153 - MISSING
	const GASTRODON    ; 154 - MISSING
	const BUNEARY      ; 155 - MISSING
	const LOPUNNY      ; 156 - MISSING
	const STUNKY       ; 157 - MISSING
	const SKUNTANK     ; 158 - MISSING
	const BRONZOR      ; 159 - MISSING
	const BRONZONG     ; 15a - MISSING
	const BONSLY       ; 15b - MISSING
	const CHATOT       ; 15c
	const CROAGUNK     ; 15d - MISSING
	const TOXICROAK    ; 15e - MISSING
	const LEAFEON      ; 15f - MISSING
	const GLACEON      ; 160
	const PORYGON_Z    ; 161 - MISSING
	const DUSKNOIR     ; 162 - MISSING
	const FROSLASS     ; 163 - MISSING
	const DARKRAI      ; 164 - MISSING
	const PANSAGE      ; 165 - MISSING
	const SIMISAGE     ; 166 - MISSING
	const DRILLBUR     ; 167 - MISSING
	const EXCADRILL    ; 168 - MISSING
	const SANDILE      ; 169 - MISSING
	const KROKOROK     ; 16a - MISSING
	const KROOKODILE   ; 16b - MISSING
	const DUCKLETT     ; 16c - MISSING
	const SWANNA       ; 16d - MISSING
	const TYNAMO       ; 16e - MISSING
	const EELEKTRIK    ; 16f - MISSING
	const EELEKTROSS   ; 170 - MISSING
	const LITWICK      ; 171 - MISSING
	const LAMPENT      ; 172 - MISSING
	const CHANDELURE   ; 173 - MISSING
	const CLAUNCHER    ; 174 - MISSING
	const CLAWITZER    ; 175 - MISSING
	const HELIOPTILE   ; 176 - MISSING
	const HELIOLISK    ; 177 - MISSING
	const AMAURA       ; 178 - MISSING
	const AURORUS      ; 179 - MISSING
	const SYLVEON      ; 17a - MISSING
	const GOOMY        ; 17b - MISSING
	const SLIGGOO      ; 17c - MISSING
	const GOODRA       ; 17d - MISSING
	const CRABRAWLER   ; 17e - MISSING
	const CRABOMINABLE ; 17f - MISSING
	const CUTIEFLY     ; 180 - MISSING
	const RIBOMBEE     ; 181 - MISSING
; Fused Crystal mons
	const ONIXTRET     ; 182 - MISSING
	const CHIQUIRTLE   ; 183 - MISSING
	const BAYTORTLE    ; 184 - MISSING
	const MEGASTOISE   ; 185
	const HOOTDUO      ; 186 - MISSING
	const NOCTDRIO     ; 187
	const TOGEKEY      ; 188 - MISSING
	const TOGETAPE     ; 189
	const HOPPORITA    ; 18a - MISSING
	const SKIPLEEF     ; 18b - MISSING
	const JUMPANIUM    ; 18c
	const WOOCHUM      ; 18d - MISSING
	const QUAGYNX      ; 18e
	const STEELURRET   ; 18f
; TPP's signature fakemon
	const PHANCERO     ; 190 - MISSING
NUM_POKEMON EQU const_value + -1

EGG EQU -3

; limits:
; 999: everything that prints dex counts
; 1407: size of wPokedexOrder
; 4095: hard limit; would require serious redesign to increase
if NUM_POKEMON > 999
	fail "Too many Pokémon defined!"
endc

; Unown forms
; indexes for:
; - UnownWords (see data/pokemon/unown_words.asm)
; - UnownPicPointers (see data/pokemon/unown_pic_pointers.asm)
; - UnownAnimationPointers (see gfx/pokemon/unown_anim_pointers.asm)
; - UnownAnimationIdlePointers (see gfx/pokemon/unown_idle_pointers.asm)
; - UnownBitmasksPointers (see gfx/pokemon/unown_bitmask_pointers.asm)
; - UnownFramesPointers (see gfx/pokemon/unown_frame_pointers.asm)
	const_def 1
	const UNOWN_A ;  1
	const UNOWN_B ;  2
	const UNOWN_C ;  3
	const UNOWN_D ;  4
	const UNOWN_E ;  5
	const UNOWN_F ;  6
	const UNOWN_G ;  7
	const UNOWN_H ;  8
	const UNOWN_I ;  9
	const UNOWN_J ; 10
	const UNOWN_K ; 11
	const UNOWN_L ; 12
	const UNOWN_M ; 13
	const UNOWN_N ; 14
	const UNOWN_O ; 15
	const UNOWN_P ; 16
	const UNOWN_Q ; 17
	const UNOWN_R ; 18
	const UNOWN_S ; 19
	const UNOWN_T ; 20
	const UNOWN_U ; 21
	const UNOWN_V ; 22
	const UNOWN_W ; 23
	const UNOWN_X ; 24
	const UNOWN_Y ; 25
	const UNOWN_Z ; 26
NUM_UNOWN EQU const_value + -1 ; 26
