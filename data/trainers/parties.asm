specialtrainer: MACRO
	if _NARG > 1
		db TRAINERTYPE_SPECIAL | (\2)
	else
		db TRAINERTYPE_SPECIAL | BANK(\1)
	endc
	dw \1
ENDM

SECTION "Enemy Trainer Parties 1", ROMX

GSCKrisGroup:
	next_list_item ; EWWYPPP
	db "EWWYPPP@",  TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 73
	dw MAGNETON
	db NO_ITEM
	dw THUNDERBOLT, ZAP_CANNON, SWIFT, THUNDERSHOCK
	bigdw $0FFF
	bigdw 185
	bigdw 137
	bigdw 187
	bigdw 142
	bigdw 215
	bigdw 142
	db "::::;n;;<PK>-@"

	db 70
	dw FURRET
	db EON_MAIL
	dw HEADBUTT, SURF, SLASH, STRENGTH
	bigdw $0FFF
	bigdw 234
	bigdw 146
	bigdw 128
	bigdw 166
	bigdw 96
	bigdw 110
	db "HHHIIIIHGH@"

	db 69
	dw MAGMAR
	db NO_ITEM
	dw FIRE_BLAST, THUNDERPUNCH, FLAMETHROWER, FIRE_PUNCH
	bigdw $0FFF
	bigdw 198
	bigdw 159
	bigdw 114
	bigdw 168
	bigdw 175
	bigdw 154
	db "-@"

	db 70
	dw EXEGGUTOR
	db MIRACLE_SEED
	dw LEECH_SEED, CONFUSION, SOLARBEAM, GIGA_DRAIN
	bigdw $0FFF
	bigdw 241
	bigdw 163
	bigdw 163
	bigdw 120
	bigdw 215
	bigdw 131
	db "OOOOOOPOOO@"

	db 73
	dw DEWGONG
	db NO_ITEM
	dw ICE_BEAM, SURF, AURORA_BEAM, WHIRLPOOL
	bigdw $FFFF
	bigdw 249
	bigdw 142
	bigdw 156
	bigdw 140
	bigdw 141
	bigdw 178
	db "WWww y@"

	db 72
	dw FERALIGATR
	db EON_MAIL
	dw SURF, CRUNCH, SLASH, STRENGTH
	bigdw $FFFF
	bigdw 241
	bigdw 195
	bigdw 179
	bigdw 164
	bigdw 155
	bigdw 161
	db "YZZZQQQC@"

	db -1 ; end

	end_list_items

ACChrisGroup:
	next_list_item ; EVAN1
	db "EVAN@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 5
	dw BULBASAUR
	db NO_ITEM
	dw TACKLE, GROWL, NO_MOVE, NO_MOVE
	bigdw $FFFF
	bigdw 20
	bigdw 10
	bigdw 11
	bigdw 9
	bigdw 12
	bigdw 12
	db "ul:::utx@"

	db -1

	next_list_item ; EVAN2
	db "EVAN@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 25
	dw OMANYTE
	db METAL_POWDER
	dw THIEF, WATER_GUN, LEER, BITE
	bigdw $FFFF
	bigdw 60
	bigdw 33
	bigdw 62
	bigdw 28
	bigdw 58
	bigdw 40
	db " QH@"

	db 17
	dw VENONAT
	db BITTER_BERRY
	dw FLASH, POISONPOWDER, CONFUSION, THIEF
	bigdw $0FFF
	bigdw 50
	bigdw 26
	bigdw 22
	bigdw 20
	bigdw 23
	bigdw 23
	db "KJJKLLLLLL@"

	db 19
	dw SPINARAK
	db NO_ITEM
	dw LEECH_LIFE, SCARY_FACE, SLUDGE, BATON_PASS
	bigdw $FFFF
	bigdw 45
	bigdw 31
	bigdw 25
	bigdw 20
	bigdw 24
	bigdw 24
	db "BCCCCCCuB?@"

	db 51
	dw VENUSAUR
	db POKE_BALL
	dw RAZOR_LEAF, CUT, LEECH_SEED, HEADBUTT
	bigdw $FFFF
	bigdw 175
	bigdw 118
	bigdw 125
	bigdw 108
	bigdw 133
	bigdw 133
	db "ul:::utx@"

	db 30
	dw NOCTOWL
	db FLOWER_MAIL
	dw TAKE_DOWN, CONFUSION, WING_ATTACK, SWIFT
	bigdw $FFFF
	bigdw 108
	bigdw 50
	bigdw 42
	bigdw 54
	bigdw 65
	bigdw 71
	db "KENYA@"
	db -1

	next_list_item ; EVAN3
	db "EVAN@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 43
	dw NOCTOWL
	db FLOWER_MAIL
	dw THIEF, HYPER_BEAM, WING_ATTACK, SWIFT
	bigdw $0FFF
	bigdw 160
	bigdw 78
	bigdw 68
	bigdw 84
	bigdw 100
	bigdw 108
	db "KENYA@"

	db 36
	dw AERODACTYL
	db ESCAPE_ROPE
	dw BITE, SUPERSONIC, ROCK_THROW, SKY_ATTACK
	bigdw $FFFF
	bigdw 119
	bigdw 89
	bigdw 64
	bigdw 108
	bigdw 61
	bigdw 71
	db "JHH@"

	db 68
	dw VENUSAUR
	db GUARD_SPEC
	dw FLASH, CUT, FURY_CUTTER, SOLARBEAM
	bigdw $FFFF
	bigdw 239
	bigdw 164
	bigdw 172
	bigdw 150
	bigdw 183
	bigdw 183
	db "ul:::utx@"

	db 54
	dw MILTANK
	db MAX_POTION
	dw SURF, STRENGTH, ROLLOUT, BODY_SLAM
	bigdw $0FFF
	bigdw 187
	bigdw 123
	bigdw 148
	bigdw 138
	bigdw 69
	bigdw 102
	db "!L@"

	db 41
	dw SEADRA
	db NUGGET
	dw OCTAZOOKA, DRAGON_RAGE, DRAGONBREATH, ICY_WIND
	bigdw $0FFF
	bigdw 109
	bigdw 69
	bigdw 91
	bigdw 94
	bigdw 98
	bigdw 57
	db "---sxjxKKK@"

	db 30
	dw JOLTEON
	db GOLD_LEAF
	dw ENDURE, FLAIL, BATON_PASS, CHARM
	bigdw $FFFF
	bigdw 85
	bigdw 62
	bigdw 53
	bigdw 94
	bigdw 81
	bigdw 72
	db "FOX,/!!!)u@"

	db -1

	next_list_item ; EVAN4
	db "EVAN@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 61
	dw AERODACTYL
	db SURF_MAIL
	dw STEEL_WING, SUPERSONIC, ROCK_THROW, SKY_ATTACK
	bigdw $FFFF
	bigdw 210
	bigdw 164
	bigdw 111
	bigdw 194
	bigdw 113
	bigdw 131
	db "JHH@"

	db 61
	dw MILTANK
	db GOLD_LEAF
	dw SURF, STRENGTH, ROLLOUT, BODY_SLAM
	bigdw $0FFF
	bigdw 212
	bigdw 142
	bigdw 170
	bigdw 158
	bigdw 80
	bigdw 158
	db "!L@"

	db 38
	dw JOLTEON
	db ULTRA_BALL
	dw HYPER_BEAM, FLAIL, BATON_PASS, CHARM
	bigdw $FFFF
	bigdw 108
	bigdw 80
	bigdw 69
	bigdw 119
	bigdw 103
	bigdw 92
	db "FOX,/!!!)u@"

	db 52
	dw SEADRA
	db NUGGET
	dw OCTAZOOKA, HYDRO_PUMP, DRAGONBREATH, ICY_WIND
	bigdw $0FFF
	bigdw 142
	bigdw 92
	bigdw 122
	bigdw 124
	bigdw 128
	bigdw 76
	db "---sxjxKKK@"

	db 63
	dw NOCTOWL
	db FLOWER_MAIL
	dw THIEF, HYPER_BEAM, WING_ATTACK, SUNNY_DAY
	bigdw $0FFF
	bigdw 237
	bigdw 120
	bigdw 105
	bigdw 128
	bigdw 151
	bigdw 164
	db "KENYA@"

	db 75
	dw VENUSAUR
	db SUN_STONE
	dw FLASH, CUT, FURY_CUTTER, BODY_SLAM
	bigdw $FFFF
	bigdw 265
	bigdw 183
	bigdw 193
	bigdw 167
	bigdw 205
	bigdw 205
	db "ul:::utx@"

	db -1

	next_list_item ; EVAN5
	db "EVAN@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 62
	dw JOLTEON
	db AWAKENING
	dw THUNDERBOLT, FLAIL, BATON_PASS, BITE
	bigdw $FFFF
	bigdw 178
	bigdw 132
	bigdw 113
	bigdw 196
	bigdw 170
	bigdw 151
	db "FOX,/!!!)u@"

	db 69
	dw AERODACTYL
	db SURF_MAIL
	dw ROCK_SLIDE, SUPERSONIC, ROCK_THROW, SKY_ATTACK
	bigdw $FFFF
	bigdw 240
	bigdw 187
	bigdw 136
	bigdw 220
	bigdw 129
	bigdw 150
	db "JHH@"

	db 62
	dw KINGDRA
	db NUGGET
	dw WATERFALL, HYDRO_PUMP, DRAGONBREATH, ICY_WIND
	bigdw $0FFF
	bigdw 195
	bigdw 148
	bigdw 146
	bigdw 148
	bigdw 154
	bigdw 154
	db "---sxjxKKK@"

	db 66
	dw MILTANK
	db GOLD_LEAF
	dw SURF, STRENGTH, ROLLOUT, BODY_SLAM
	bigdw $0FFF
	bigdw 231
	bigdw 154
	bigdw 184
	bigdw 172
	bigdw 88
	bigdw 127
	db "!L@"

	db 72
	dw NOCTOWL
	db FLOWER_MAIL
	dw NIGHTMARE, HYPER_BEAM, WING_ATTACK, SUNNY_DAY
	bigdw $0FFF
	bigdw 272
	bigdw 138
	bigdw 120
	bigdw 147
	bigdw 174
	bigdw 188
	db "KENYA@"

	db 75
	dw VENUSAUR
	db MASTER_BALL
	dw FLASH, CUT, FURY_CUTTER, PETAL_DANCE
	bigdw $FFFF
	bigdw 288
	bigdw 199
	bigdw 214
	bigdw 183
	bigdw 222
	bigdw 222
	db "ul:::utx@"

	db -1

	next_list_item ; EVAN6
	db "EVAN@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 100
	dw NOCTOWL
	db FLOWER_MAIL
	dw HEAT_WAVE, AIR_SLASH, PSYCHIC_M, HYPER_BEAM
	bigdw $0FFF
	bigdw 388
	bigdw 204
	bigdw 180
	bigdw 215
	bigdw 253
	bigdw 273
	db "KENYA@"

	db 100
	dw AERODACTYL
	db NO_ITEM
	dw CRUNCH, EARTHQUAKE, ROCK_SLIDE, FLY
	bigdw $FFFF
	bigdw 357
	bigdw 284
	bigdw 212
	bigdw 333
	bigdw 202
	bigdw 232
	db "JHH@"

	db 100
	dw MILTANK
	db LEFTOVERS
	dw MILK_DRINK, RETURN, TOXIC, EARTHQUAKE
	bigdw $0FFF
	bigdw 363
	bigdw 251
	bigdw 294
	bigdw 278
	bigdw 152
	bigdw 212
	db "!L@"

	db 100
	dw KINGDRA
	db KINGS_ROCK
	dw WATERFALL, SURF, ICE_BEAM, OUTRAGE
	bigdw $0FFF
	bigdw 328
	bigdw 255
	bigdw 252
	bigdw 254
	bigdw 263
	bigdw 263
	db "---sxjxKKK@"

	db 100
	dw VENUSAUR
	db LEFTOVERS
	dw GROWTH, SLUDGE_BOMB, SLEEP_POWDER, PETAL_DANCE
	bigdw $FFFF
	bigdw 359
	bigdw 250
	bigdw 264
	bigdw 232
	bigdw 282
	bigdw 282
	db "ul:::utx@"

	db 100
	dw JOLTEON
	db LEFTOVERS
	dw GROWTH, THUNDERBOLT, SHADOW_BALL, THUNDER
	bigdw $FFFF
	bigdw 301
	bigdw 227
	bigdw 199
	bigdw 334
	bigdw 290
	bigdw 260
	db "FOX,/!!!)u@"

	db -1

	end_list_items

FCChrisGroup:
	next_list_item ; Y_FUSEDCRYSTAL
	db "Y@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 47
	dw MEGASTOISE
	db SURF_MAIL
	dw WATERFALL, PROTECT, POISONPOWDER, WHIRLPOOL
	bigdw $0FFF
	bigdw 149
	bigdw 96
	bigdw 113
	bigdw 97
	bigdw 103
	bigdw 121
	db "FOOLK@"

	db 50
	dw TOGETAPE
	db SURF_MAIL
	dw STRENGTH, FLY, CROSS_CHOP, ROCK_SMASH
	bigdw $FFFF
	bigdw 147
	bigdw 111
	bigdw 96
	bigdw 91
	bigdw 100
	bigdw 118
	db "FEB@"

	db 47
	dw QUAGYNX
	db SURF_MAIL
	dw SURF, EARTHQUAKE, ICE_PUNCH, BODY_SLAM
	bigdw $FFFF
	bigdw 149
	bigdw 99
	bigdw 82
	bigdw 89
	bigdw 120
	bigdw 111
	db "JKilt@"

	db 50
	dw JUMPANIUM
	db SURF_MAIL
	dw MEGA_DRAIN, CUT, LEECH_SEED, STRENGTH
	bigdw $FFFF
	bigdw 160
	bigdw 103
	bigdw 120
	bigdw 123
	bigdw 94
	bigdw 108
	db "bbbii@"

	db 46
	dw STEELURRET
	db SURF_MAIL
	dw STRENGTH, SURF, ROCK_THROW, SLAM
	bigdw $FFFF
	bigdw 145
	bigdw 103
	bigdw 140
	bigdw 76
	bigdw 86
	bigdw 76
	db "IIIRRRJJS@"

	db 52
	dw NOCTDRIO
	db SURF_MAIL
	dw ROCK_SMASH, FLY, PECK, AGILITY
	bigdw $0FFF
	bigdw 176
	bigdw 109
	bigdw 97
	bigdw 125
	bigdw 109
	bigdw 99
	db "T  SS@"

	db -1 ;end

	end_list_items

FRLGLeafGroup:
	next_list_item ; A_FIRERED
	db "A@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 22
	dw SURSKIT
	db THUNDERSTONE
	dw HYDRO_PUMP, MEGAHORN, HYPER_BEAM, LEECH_LIFE
	bigdw $FFFF
	bigdw 53
	bigdw 27
	bigdw 20
	bigdw 38
	bigdw 27
	bigdw 33
	db "Surskit@"

	db 28
	dw SKITTY
	db BRIGHTPOWDER
	dw PSYCHIC_M, RAZOR_WIND, HYPER_FANG, MEAN_LOOK
	bigdw $FFFF
	bigdw 77
	bigdw 38
	bigdw 37
	bigdw 43
	bigdw 29
	bigdw 31
	db "ZDNNNG@"

	db 11
	dw SANDSLASH
	db NO_ITEM
	dw TACKLE, SCRATCH, FLAMETHROWER, NO_MOVE
	bigdw $0FFF
	bigdw 37
	bigdw 29
	bigdw 34
	bigdw 21
	bigdw 16
	bigdw 16
	db "Sandslash@"

	db -1 ; end
	end_list_items

ColoWesGroup:
	next_list_item ; AAAAAAA1
	db "AAAAAAA@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 51
	dw MISDREAVUS
	db BURN_HEAL
	dw SHADOW_BALL, CONFUSE_RAY, PSYBEAM, MEAN_LOOK
	bigdw $FFFF
	bigdw 134
	bigdw 87
	bigdw 75
	bigdw 101
	bigdw 111
	bigdw 101
	db "AAAAAAAAAA@"

	db 37
	dw ESPEON
	db POKE_BALL
	dw CONFUSION, REFLECT, PSYBEAM, NO_MOVE
	bigdw $FFFF
	bigdw 103
	bigdw 57
	bigdw 53
	bigdw 88
	bigdw 99
	bigdw 92
	db "ESPEON@"

	db 44
	dw UMBREON
	db NO_ITEM
	dw MEAN_LOOK, SNATCH, TAUNT, SECRET_POWER
	bigdw $FFFF
	bigdw 151
	bigdw 79
	bigdw 117
	bigdw 70
	bigdw 57
	bigdw 124
	db "UMBREON@"

	db 44
	dw JUMPLUFF
	db NO_ITEM
	dw MEGA_DRAIN, COTTON_SPORE, SLEEP_POWDER, SYNTHESIS
	bigdw $0FFF
	bigdw 131
	bigdw 64
	bigdw 86
	bigdw 110
	bigdw 56
	bigdw 72
	db "AAAAKLV@"

	db 44
	dw BAYLEEF
	db NO_ITEM
	dw TOXIC, SYNTHESIS, RAZOR_LEAF, BODY_SLAM
	bigdw $FFFF
	bigdw 121
	bigdw 64
	bigdw 79
	bigdw 73
	bigdw 70
	bigdw 82
	db "BAYLEEF@"
	db -1 ; end

	next_list_item ; ACCC
	db "ACCC@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 48
	dw OCTILLERY
	db NO_ITEM
	dw MUDDY_WATER, BUBBLE, MUD_SLAP, TAIL_WHIP
	bigdw $0FFF
	bigdw 140
	bigdw 115
	bigdw 88
	bigdw 52
	bigdw 115
	bigdw 81
	db "AA0@"

	db 42
	dw LUDICOLO
	db NO_ITEM
	dw NEEDLE_ARM, SWAGGER, TEETER_DANCE, DISABLE
	bigdw $FFFF
	bigdw 132
	bigdw 76
	bigdw 76
	bigdw 77
	bigdw 93
	bigdw 102
	db "AAPGllj@"

	db 44
	dw PERSIAN
	db NO_ITEM
	dw TWINEEDLE, WILL_O_WISP, SYNTHESIS, ROCK_TOMB
	bigdw $0FFF
	bigdw 117
	bigdw 80
	bigdw 77
	bigdw 119
	bigdw 57
	bigdw 71
	db "''@"

	db 44
	dw WALREIN
	db NO_ITEM
	dw ICE_BEAM, SOLARBEAM, BATON_PASS, DRAGON_DANCE
	bigdw $0FFF
	bigdw 158
	bigdw 88
	bigdw 86
	bigdw 73
	bigdw 98
	bigdw 95
	db "Walrein@"

	db 39
	dw PILOSWINE
	db NO_ITEM
	dw TICKLE, POUND, SURF, ACID_ARMOR
	bigdw $0FFF
	bigdw 129
	bigdw 89
	bigdw 74
	bigdw 51
	bigdw 54
	bigdw 60
	db "XNNCCGG@"

	db 44
	dw HO_OH
	db SUN_STONE
	dw METRONOME, COUNTER, IRON_TAIL, LEER
	bigdw $0FFF
	bigdw 162
	bigdw 136
	bigdw 102
	bigdw 100
	bigdw 118
	bigdw 155
	db "Ho-Oh@"
	db -1 ; end

	next_list_item ; AAAAAAA2
	db "AAAAAAA@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 65
	dw MEGANIUM
	db ULTRA_BALL
	dw TOXIC, SYNTHESIS, RAZOR_LEAF, SOLARBEAM
	bigdw $FFFF
	bigdw 211
	bigdw 128
	bigdw 148
	bigdw 147
	bigdw 137
	bigdw 148
	db "MEGANIUM@"

	db 65
	dw ESPEON
	db POKE_BALL
	dw MORNING_SUN, REFLECT, PSYCHIC_M, NO_MOVE
	bigdw $FFFF
	bigdw 189
	bigdw 106
	bigdw 99
	bigdw 165
	bigdw 181
	bigdw 163
	db "ABLLVVWW♀@"

	db 50
	dw JUMPLUFF
	db SPELL_TAG
	dw MEGA_DRAIN, COTTON_SPORE, SLEEP_POWDER, SYNTHESIS
	bigdw $0FFF
	bigdw 150
	bigdw 76
	bigdw 101
	bigdw 127
	bigdw 66
	bigdw 83
	db "AAAAKLV@"

	db 67
	dw MISDREAVUS
	db BURN_HEAL
	dw SHADOW_BALL, CONFUSE_RAY, PSYBEAM, MEAN_LOOK
	bigdw $FFFF
	bigdw 183
	bigdw 119
	bigdw 102
	bigdw 140
	bigdw 152
	bigdw 140
	db "AAAAAAAAAA@"

	db 59
	dw UMBREON
	db TM_GIGA_DRAIN
	dw MEAN_LOOK, SCREECH, TAUNT, SECRET_POWER
	bigdw $FFFF
	bigdw 206
	bigdw 111
	bigdw 160
	bigdw 104
	bigdw 81
	bigdw 169
	db "UMBREON@"

	db 50
	dw QUAGSIRE
	db TM_RAIN_DANCE
	dw SURF, MUD_SHOT, AMNESIA, EARTHQUAKE
	bigdw $0FFF
	bigdw 171
	bigdw 88
	bigdw 106
	bigdw 61
	bigdw 79
	bigdw 95
	db "UUUUV???@"

	db -1 ; end

	end_list_items

XDMichaelGroup:
	next_list_item ; STARS
	db "STARS@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 59
	dw VAPOREON
	db BRIGHTPOWDER
	dw HYDRO_PUMP, FREEZE_DRY, BITE, SCALD
	bigdw $FFFF
	bigdw 243
	bigdw 89
	bigdw 104
	bigdw 98
	bigdw 153
	bigdw 154
	db "Vaporeon@"

	db 56
	dw SCEPTILE
	db DRAGON_SCALE
	dw GIGA_DRAIN, DRAGONBREATH, HIDDEN_POWER, STUN_SPORE
	bigdw $ecfe
	bigdw 162
	bigdw 141
	bigdw 93
	bigdw 160
	bigdw 151
	bigdw 102
	db "CCC    /@"

	db 58
	dw SWAMPERT
	db LEFTOVERS
	dw WATERFALL, ICE_HAMMER, BULLDOZE, HAMMER_ARM
	bigdw $FFFF
	bigdw 216
	bigdw 164
	bigdw 129
	bigdw 95
	bigdw 125
	bigdw 134
	db "AB-@"

	db 61
	dw BLAZIKEN
	db NO_ITEM
	dw HI_JUMP_KICK, BRAVE_BIRD, BLAZE_KICK, OVERHEAT
	bigdw $FFFF
	bigdw 188
	bigdw 200 ; intergrated muscle band
	bigdw 95
	bigdw 119
	bigdw 166
	bigdw 121
	db "ABBBBBBBQ@"

	db 59
	dw METAGROSS
	db AMULET_COIN
	dw BULLET_PUNCH, IRON_HEAD, METEOR_MASH, PSYCHO_CUT
	bigdw $FFFF
	bigdw 194
	bigdw 192
	bigdw 184
	bigdw 121
	bigdw 102
	bigdw 128
	db "BCCMMW   @"

	db 56
	dw SALAMENCE
	db BRICK_PIECE
	dw DRAGON_CLAW, FIRE_FANG, AIR_SLASH, CRUNCH
	bigdw $FFFF
	bigdw 202
	bigdw 183
	bigdw 115
	bigdw 128
	bigdw 128
	bigdw 134
	db "Salamence@"

	db -1 ; end

	end_list_items

PTLucasGroup:
	next_list_item ; NQPPPNL
	db "nqpppnl@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 58
	dw SHINX
	db FLOWER_MAIL
	dw THUNDERBOLT, RETURN, DISCHARGE, ROAR
	bigdw $0FFF
	bigdw 149
	bigdw 97
	bigdw 47
	bigdw 90
	bigdw 86
	bigdw 90
	db "0''? ?0???@"

	db 59
	dw BIBAREL
	db EXP_SHARE
	dw HEADBUTT, SUPERPOWER, SURF, ROCK_CLIMB
	bigdw $0FFF
	bigdw 176
	bigdw 122
	bigdw 86
	bigdw 132
	bigdw 91
	bigdw 87
	db "00 00 06@"

	db 66
	dw FLAREON
	db LOVELY_MAIL
	dw ROCK_SMASH, FIRE_BLAST, STRENGTH, FIRE_FANG
	bigdw $FFFF
	bigdw 184
	bigdw 193
	bigdw 107
	bigdw 130
	bigdw 145
	bigdw 130
	db "FLAREON@"

	db 62
	dw ROSERADE
	db FLOWER_MAIL
	dw STUN_SPORE, ABSORB, PETAL_DANCE, CUT
	bigdw $0FFF
	bigdw 169
	bigdw 136
	bigdw 84
	bigdw 137
	bigdw 174
	bigdw 145
	db "!?!!?! !:1@"

	db 54
	dw BRONZONG
	db FLOWER_MAIL
	dw CONFUSE_RAY, FUTURE_SIGHT, EXTRASENSORY, FEINT_ATTACK
	bigdw $0FFF
	bigdw 159
	bigdw 124
	bigdw 172
	bigdw 67
	bigdw 97
	bigdw 145
	db "BRONZONG@"

	db 50
	dw GOLBAT
	db BLUESKY_MAIL
	dw CONFUSE_RAY, AERIAL_ACE, LEECH_LIFE, AIR_CUTTER
	bigdw $FFFF
	bigdw 148
	bigdw 98
	bigdw 100
	bigdw 124
	bigdw 80
	bigdw 96
	db "GOLBAT@"

	db -1
	end_list_items

HGSSLyraGroup:
	next_list_item ; AOOOO
	db "aoooo@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 16
	dw BONSLY
	db DRAGON_FANG
	dw ROCK_SLIDE, BARRAGE, MEGA_PUNCH, NIGHT_SHADE
	bigdw $0FFF
	bigdw 44
	bigdw 33
	bigdw 40
	bigdw 9
	bigdw 12
	bigdw 18
	db "A@"

	db 28
	dw TRAPINCH
	db NO_ITEM
	dw SWIFT, HAMMER_ARM, TRUMP_CARD, NO_MOVE
	bigdw $0FFF
	bigdw 73
	bigdw 68
	bigdw 38
	bigdw 18
	bigdw 32
	bigdw 36
	db "TRAPINCH@"

	db 14
	dw DIGLETT
	db NO_ITEM
	dw MAGNITUDE, MUD_SLAP, STRENGTH, MUD_BOMB
	bigdw $FFFF
	bigdw 28
	bigdw 22
	bigdw 16
	bigdw 35
	bigdw 15
	bigdw 25
	db "?? ((GG6W@"

	db 33
	dw GROUDON
	db TM_FURY_CUTTER
	dw SURF, CUT, FOCUS_BLAST, SAND_TOMB
	bigdw $0FFF
	bigdw 115
	bigdw 113
	bigdw 93
	bigdw 80
	bigdw 78
	bigdw 72
	db "Kenya@"
	db -1
	end_list_items

B2W2NateGroup:
	next_list_item ; R_BLACK21
	db "♀♀R@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 7
	dw MEOWTH
	db NO_ITEM
	dw SCRATCH, GROWL, BITE, NO_MOVE
	bigdw $FFFF
	bigdw 24
	bigdw 13
	bigdw 10
	bigdw 16
	bigdw 11
	bigdw 13
	db "aaaaaaakw@"

	db 14
	dw LOTAD
	db NO_ITEM
	dw GROWL, ABSORB, TRI_ATTACK, NO_MOVE
	bigdw $0FFF
	bigdw 37
	bigdw 15
	bigdw 16
	bigdw 12
	bigdw 17
	bigdw 22
	db "Lotad00 R@"

	db 10
	dw HOOTHOOT
	db NO_ITEM
	dw TACKLE, FORESIGHT, PECK, HYPNOSIS
	bigdw $0FFF
	bigdw 34
	bigdw 13
	bigdw 12
	bigdw 18
	bigdw 14
	bigdw 19
	db "Hoothootww@"

	db 8
	dw SWINUB
	db NO_ITEM
	dw TACKLE, POWDER_SNOW, ODOR_SLEUTH, NO_MOVE
	bigdw $0FFF
	bigdw 27
	bigdw 15
	bigdw 12
	bigdw 15
	bigdw 11
	bigdw 10
	db "Swinub@"

	db 7
	dw TYROGUE
	db NO_ITEM
	dw TACKLE, FORESIGHT, NO_MOVE, FAKE_OUT
	bigdw $FFFF
	bigdw 22
	bigdw 10
	bigdw 11
	bigdw 9
	bigdw 9
	bigdw 10
	db "Tyrogue@"
	db -1 ; end

	end_list_items

NateLeaderGroup:
	next_list_item ; AAAALK
	db "AAALK'@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 38
	dw SIMISAGE
	db NO_ITEM
	dw MILK_DRINK, DRILL_PECK, VOLT_TACKLE, NO_MOVE
	bigdw $FFFF
	bigdw 108
	bigdw 90
	bigdw 63
	bigdw 92
	bigdw 88
	bigdw 58
	db "Simisage@"

	db 46
	dw FLOATZEL
	db MIRAGE_MAIL
	dw FIRE_BLAST, AURA_SPHERE, STEAMROLLER, SURF
	bigdw $FFFF
	bigdw 148
	bigdw 119
	bigdw 63
	bigdw 135
	bigdw 98
	bigdw 60
	db "GD LREd@"

	db 58
	dw ABSOL
	db LUCKY_EGG
	dw ATTACK_ORDER, FLY, PSYSHOCK, DRAIN_PUNCH
	bigdw $0FFF
	bigdw 164
	bigdw 192
	bigdw 85
	bigdw 127
	bigdw 118
	bigdw 98
	db "Absol@"

	db 57
	dw BLASTOISE
	db NO_ITEM
	dw STRENGTH, BLUE_FLARE, SCALD, TRI_ATTACK
	bigdw $FFFF
	bigdw 177
	bigdw 123
	bigdw 131
	bigdw 115
	bigdw 122
	bigdw 144
	db "OLLEELVvv@"

	db 46
	dw ARTICUNO
	db NO_ITEM
	dw SECRET_POWER, HORN_LEECH, TAIL_SLAP, NO_MOVE
	bigdw $FFFF
	bigdw 140
	bigdw 87
	bigdw 115
	bigdw 85
	bigdw 101
	bigdw 130
	db "Articun@"

	db 51
	dw LAMPENT
	db NO_ITEM
	dw FOUL_PLAY, SHOCK_WAVE, LEAF_STORM, BLUE_FLARE
	bigdw $FFFF
	bigdw 136
	bigdw 61
	bigdw 85
	bigdw 77
	bigdw 140
	bigdw 87
	db "gqvvvqqolq@"

	db -1 ; end

	end_list_items

SMUSUMElioGroup:
	next_list_item ; L_SUN
	db "9'l@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 40
	dw FEAROW
	db STAR_PIECE
	dw FLY, AERIAL_ACE, MIRROR_MOVE, ASSURANCE
	bigdw $FFFF
	bigdw 106
	bigdw 95
	bigdw 53
	bigdw 107
	bigdw 60
	bigdw 67
	db "cc5cch8ccc@"

	db 38
	dw KADABRA
	db TINYMUSHROOM
	dw PSYCHO_CUT, PSYCHIC_M, KINESIS, NO_MOVE
	bigdw $FFFF
	bigdw 79
	bigdw 42
	bigdw 36
	bigdw 98
	bigdw 105
	bigdw 60
	db "cccc55gg11@"

	db 38
	dw RIBOMBEE
	db STAR_PIECE
	dw POLLEN_PUFF, PSYCHIC_M, DRAININGKISS, DAZZLINGLEAM
	bigdw $FFFF
	bigdw 101
	bigdw 57
	bigdw 68
	bigdw 107
	bigdw 83
	bigdw 58
	db "Ribombee@"

	db 41
	dw ARIADOS
	db NO_ITEM
	dw SHADOW_SNEAK, SUCKER_PUNCH, AGILITY, NIGHT_SHADE
	bigdw $0FFF
	bigdw 117
	bigdw 86
	bigdw 72
	bigdw 52
	bigdw 62
	bigdw 85
	db "Ariados@"

	db 39
	dw FEAROW
	db MYSTIC_WATER
	dw FLY, MIRROR_MOVE, ECHOED_VOICE, AGILITY
	bigdw $FFFF
	bigdw 102
	bigdw 84
	bigdw 64
	bigdw 78
	bigdw 54
	bigdw 59
	db "Fearow@"

	db 38
	dw CRABRAWLER
	db BURNT_BERRY
	dw PURSUIT, BUBBLEBEAM, CRABHAMMER, DIZZY_PUNCH
	bigdw $FFFF
	bigdw 95
	bigdw 88
	bigdw 48
	bigdw 75
	bigdw 50
	bigdw 46
	db "Uuuc77czzp@"
	db -1 ; end

	end_list_items

GlazedGroup:
	next_list_item ; AHUNIgg
	db "AHUNIgg@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 24
	dw GROTLE
	db POKE_BALL
	dw RAZOR_LEAF, BITE, ABSORB, CURSE
	bigdw $FFFF
	bigdw 73
	bigdw 45
	bigdw 53
	bigdw 24
	bigdw 36
	bigdw 37
	db "Grotle@"

	db 12
	dw POOCHYENA
	db NO_ITEM
	dw SAND_ATTACK, HOWL, TACKLE, NO_MOVE
	bigdw $0FFF
	bigdw 31
	bigdw 18
	bigdw 12
	bigdw 15
	bigdw 13
	bigdw 15
	db "BBBC Hbvvv@"

	db 10
	dw CATERPIE
	db NO_ITEM
	dw TACKLE, STRING_SHOT, NO_MOVE, NO_MOVE
	bigdw $0FFF
	bigdw 32
	bigdw 13
	bigdw 13
	bigdw 16
	bigdw 11
	bigdw 9
	db "BBHHCEQ@"

	db 8
	dw EKANS
	db NO_ITEM
	dw WRAP, LEER, POISON_STING, NO_MOVE
	bigdw $0FFF
	bigdw 25
	bigdw 15
	bigdw 13
	bigdw 16
	bigdw 11
	bigdw 14
	db "Ekans@"

	db 10
	dw CROAGUNK
	db NO_ITEM
	dw POISON_STING, MUD_SLAP, ASTONISH, TAUNT
	bigdw $0FFF
	bigdw 30
	bigdw 18
	bigdw 13
	bigdw 18
	bigdw 19
	bigdw 11
	db "BBBBBBAAA@"

	db 11
	dw BUDEW
	db NO_ITEM
	dw ABSORB, GROWTH, STUN_SPORE, NO_MOVE
	bigdw $0FFF
	bigdw 30
	bigdw 12
	bigdw 12
	bigdw 20
	bigdw 18
	bigdw 21
	db "HA@"
	db -1 ; end

	end_list_items

RedLarryGroup:
	next_list_item ; LARRY_R1
	db "LARRY@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 53
	dw VAPOREON
	db NO_ITEM
	dw ICE_BEAM, SURF, WATER_GUN, BLIZZARD
	bigdw $0337
	bigdw 223
	bigdw 90
	bigdw 87
	bigdw 93
	bigdw 144
	bigdw 144
	db "WEEB@"

	db 25
	dw FLAREON
	db NO_ITEM
	dw TACKLE, SAND_ATTACK, NO_MOVE, NO_MOVE
	bigdw $7260
	bigdw 71
	bigdw 73
	bigdw 36
	bigdw 40
	bigdw 60
	bigdw 60
	db "GG@"

	db 25
	dw JOLTEON
	db NO_ITEM
	dw TACKLE, SAND_ATTACK, THUNDER_WAVE, NO_MOVE
	bigdw $AF0E
	bigdw 48
	bigdw 25
	bigdw 26
	bigdw 46
	bigdw 24
	bigdw 24
	db "SUNRA@"

	db 4
	dw PHANCERO
	db NO_ITEM
	dw CUT, DIG, STRENGTH, NO_MOVE
	bigdw $AF0E
	bigdw 115
	bigdw 8
	bigdw 12
	bigdw 7
	bigdw 8
	bigdw 8
	db "1@"

	db 20
	dw PHANCERO
	db NO_ITEM
	dw PECK, GROWL, FLY, NO_MOVE
	bigdw $AF0E
	bigdw 50
	bigdw 43
	bigdw 23
	bigdw 49
	bigdw 23
	bigdw 23
	db "CUCKO@"

	db -1 ; end

	next_list_item ; LARRY_R2
	db "LARRY@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 73
	dw MEWTWO
	db NO_ITEM
	dw THUNDERBOLT, PSYCHIC_M, BARRIER, RECOVER
	bigdw $0337
	bigdw 253
	bigdw 188
	bigdw 155
	bigdw 212
	bigdw 260
	bigdw 260
	db "MOM@"

	db 57
	dw VAPOREON
	db NO_ITEM
	dw ICE_BEAM, SURF, HYDRO_PUMP, BLIZZARD
	bigdw $0337
	bigdw 240
	bigdw 97
	bigdw 94
	bigdw 100
	bigdw 155
	bigdw 155
	db "WEEB@"

	db 25
	dw FLAREON
	db NO_ITEM
	dw TACKLE, SAND_ATTACK, NO_MOVE, NO_MOVE
	bigdw $7260
	bigdw 71
	bigdw 73
	bigdw 36
	bigdw 40
	bigdw 60
	bigdw 60
	db "GG@"

	db 25
	dw JOLTEON
	db NO_ITEM
	dw TACKLE, SAND_ATTACK, THUNDER_WAVE, NO_MOVE
	bigdw $AF0E
	bigdw 48
	bigdw 25
	bigdw 26
	bigdw 46
	bigdw 24
	bigdw 24
	db "SUNRA@"

	db 4
	dw PHANCERO
	db NO_ITEM
	dw CUT, TAKE_DOWN, STRENGTH, DOUBLE_TEAM
	bigdw $AF0E
	bigdw 115
	bigdw 8
	bigdw 12
	bigdw 7
	bigdw 8
	bigdw 8
	db "1@"

	db 20
	dw PHANCERO
	db NO_ITEM
	dw PECK, GROWL, FLY, NO_MOVE
	bigdw $AF0E
	bigdw 50
	bigdw 43
	bigdw 23
	bigdw 49
	bigdw 23
	bigdw 23
	db "CUCKO@"

	db -1 ; end

	end_list_items

GreenMayGroup:
	next_list_item ; A_EMERALD
	db "A@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 79
	dw HARIYAMA
	db NUGGET
	dw BRICK_BREAK, STRENGTH, REVERSAL, ROCK_SMASH
	bigdw $0FFF
	bigdw 343
	bigdw 240
	bigdw 237
	bigdw 106
	bigdw 76
	bigdw 111
	db "A♀Nllllc33@"

	db 50
	dw MIGHTYENA
	db DRAGON_SCALE
	dw STRENGTH, CRUNCH, SHADOW_BALL, DOUBLE_EDGE
	bigdw $FFFF
	bigdw 146
	bigdw 122
	bigdw 72
	bigdw 87
	bigdw 86
	bigdw 88
	db "MIGHTYENA@"

	db 49
	dw VILEPLUME
	db POKE_BALL
	dw SLUDGE_BOMB, PETAL_DANCE, GIGA_DRAIN, SLEEP_POWDER
	bigdw $0FFF
	bigdw 150
	bigdw 106
	bigdw 97
	bigdw 64
	bigdw 93
	bigdw 102
	db "VILEPLUME@"

	db 68
	dw GRAVELER
	db TM_CURSE
	dw STRENGTH, DOUBLE_EDGE, ROCK_THROW, ROCK_BLAST
	bigdw $0FFF
	bigdw 188
	bigdw 131
	bigdw 195
	bigdw 101
	bigdw 81
	bigdw 91
	db " -5'''7''Y@"

	db 80
	dw TENTACRUEL
	db MYSTIC_WATER
	dw SURF, DIVE, HIDDEN_POWER, WATERFALL
	bigdw $6FFF
	bigdw 269
	bigdw 135
	bigdw 169
	bigdw 205
	bigdw 143
	bigdw 217
	db "GJKLFFZ@"

	db 100
	dw AZUMARILL
	db NO_ITEM
	dw ROLLOUT, SURF, STRENGTH, ROCK_SMASH
	bigdw $0FFF
	bigdw 340
	bigdw 146
	bigdw 197
	bigdw 171
	bigdw 160
	bigdw 181
	db "M ---/'/'4@"

	db -1 ; end

	end_list_items

BrownGroup:
	next_list_item ; PAUL_B
	db "Paul@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 82
	dw CROBAT
	db NO_ITEM
	dw WING_ATTACK, HYPER_BEAM, SWIFT, FLY
	bigdw $FFFF
	bigdw 289
	bigdw 210
	bigdw 198
	bigdw 277
	bigdw 173
	bigdw 173
	db "-<PK><PK><PK><PK><PK><PK><PK>)(@"

	db 60
	dw SYLVEON
	db NO_ITEM
	dw MOONBLAST, DRAININGKISS, AMNESIA, THUNDERBOLT
	bigdw $0FFF
	bigdw 204
	bigdw 105
	bigdw 114
	bigdw 109
	bigdw 184
	bigdw 184
	db "BBbkkkkk@"

	db 57
	dw GOLEM
	db NO_ITEM
	dw ROCK_SLIDE, STRENGTH, ROCK_THROW, EARTHQUAKE
	bigdw $0FFF
	bigdw 180
	bigdw 160
	bigdw 171
	bigdw 79
	bigdw 90
	bigdw 90
	db "AJJJJJJaaa@"

	db 49
	dw BEEDRILL
	db NO_ITEM
	dw CUT, SWORDS_DANCE, DOUBLE_EDGE, HYPER_BEAM
	bigdw $FFFF
	bigdw 137
	bigdw 114
	bigdw 56
	bigdw 95
	bigdw 68
	bigdw 68
	db "[[........@"

	db 56
	dw VENUSAUR
	db NO_ITEM
	dw CUT, LEECH_SEED, GIGA_DRAIN, WOOD_HAMMER
	bigdw $0FFF
	bigdw 174
	bigdw 115
	bigdw 118
	bigdw 117
	bigdw 139
	bigdw 139
	db "----------@"

	db 62
	dw GOLDUCK
	db NO_ITEM
	dw SURF, STRENGTH, PSYBEAM, ICE_BEAM
	bigdw $0FFF
	bigdw 207
	bigdw 134
	bigdw 127
	bigdw 134
	bigdw 139
	bigdw 139
	db "AAAAAAAAFF@"

	db -1
	end_list_items

BABAGroup:
	next_list_item ; BABA1
	db "BABA@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 14
	dw CYNDAQUIL
	db NO_ITEM
	dw TACKLE, LEER, EMBER, SMOKESCREEN
	bigdw $FFFF
	bigdw 39
	bigdw 23
	bigdw 19
	bigdw 24
	bigdw 26
	bigdw 23
	db "BEST@"

	db 6
	dw POLIWAG
	db NO_ITEM
	dw BUBBLE, NO_MOVE, NO_MOVE, NO_MOVE
	bigdw $0FFF
	bigdw 21
	bigdw 11
	bigdw 11
	bigdw 16
	bigdw 11
	bigdw 11
	db "ORGY@"

	db 7
	dw PIDGEY
	db NO_ITEM
	dw TACKLE, SAND_ATTACK, NO_MOVE, NO_MOVE
	bigdw $0FFF
	bigdw 22
	bigdw 12
	bigdw 11
	bigdw 15
	bigdw 11
	bigdw 11
	db "EVER@"
	db -1 ; end

	next_list_item ; BABA2
	db "BABA@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 32
	dw QUILAVA
	db NO_ITEM
	dw FLAME_WHEEL, CUT, QUICK_ATTACK, TACKLE
	bigdw $FFFF
	bigdw 92
	bigdw 58
	bigdw 51
	bigdw 64
	bigdw 71
	bigdw 64
	db "BEST@"

	db 9
	dw POLIWAG
	db NO_ITEM
	dw BUBBLE, HYPNOSIS, NO_MOVE, NO_MOVE
	bigdw $0FFF
	bigdw 26
	bigdw 15
	bigdw 14
	bigdw 21
	bigdw 14
	bigdw 14
	db "ORGY@"

	db 10
	dw PIDGEY
	db NO_ITEM
	dw TACKLE, SAND_ATTACK, GUST, NO_MOVE
	bigdw $0FFF
	bigdw 28
	bigdw 14
	bigdw 19
	bigdw 14
	bigdw 14
	bigdw 14
	db "EVER@"

	db 20
	dw SUDOWOODO
	db NO_ITEM
	dw ROCK_THROW, MIMIC, FLAIL, LOW_KICK
	bigdw $0FFF
	bigdw 63
	bigdw 47
	bigdw 51
	bigdw 18
	bigdw 17
	bigdw 31
	db "FAKE@"
	db -1 ; end

	next_list_item ; BABA3
	db "BABA@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 50
	dw TYPHLOSION
	db AMULET_COIN
	dw FIRE_PUNCH, CUT, THUNDERPUNCH, FLAME_WHEEL
	bigdw $FFFF
	bigdw 164
	bigdw 115
	bigdw 103
	bigdw 123
	bigdw 143
	bigdw 119
	db "BEST@"

	db 12
	dw POLIWAG
	db NO_ITEM
	dw BUBBLE, HYPNOSIS, SURF, NO_MOVE
	bigdw $0FFF
	bigdw 32
	bigdw 18
	bigdw 18
	bigdw 27
	bigdw 17
	bigdw 17
	db "ORGY@"

	db 10
	dw PIDGEY
	db NO_ITEM
	dw TACKLE, SAND_ATTACK, GUST, FLY
	bigdw $0FFF
	bigdw 28
	bigdw 14
	bigdw 19
	bigdw 14
	bigdw 14
	bigdw 14
	db "EVER@"

	db 20
	dw SUDOWOODO
	db NO_ITEM
	dw ROCK_THROW, STRENGTH, FLAIL, LOW_KICK
	bigdw $0FFF
	bigdw 63
	bigdw 47
	bigdw 51
	bigdw 18
	bigdw 17
	bigdw 31
	db "FAKE@"

	db 20
	dw TENTACRUEL
	db NO_ITEM
	dw POISON_STING, SUPERSONIC, CONSTRICT, ACID
	bigdw $0FFF
	bigdw 64
	bigdw 33
	bigdw 37
	bigdw 46
	bigdw 37
	bigdw 53
	db "GAY@"

	db 30
	dw GYARADOS
	db NO_ITEM
	dw THRASH, BITE, DRAGON_RAGE, LEER
	bigdw $AAAA
	bigdw 97
	bigdw 88
	bigdw 58
	bigdw 59
	bigdw 47
	bigdw 71
	db "DADA@"
	db -1 ; end

	next_list_item ; BABA4
	db "BABA@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 76
	dw TYPHLOSION
	db LEFTOVERS
	dw FLAMETHROWER, STRENGTH, THUNDERPUNCH, EARTHQUAKE
	bigdw $FFFF
	bigdw 257
	bigdw 185
	bigdw 167
	bigdw 197
	bigdw 228
	bigdw 191
	db "BEST@"

	db 45
	dw SUICUNE
	db NO_ITEM
	dw SURF, ICY_WIND, AURORA_BEAM, CUT
	bigdw $0FFF
	bigdw 155
	bigdw 90
	bigdw 127
	bigdw 96
	bigdw 91
	bigdw 113
	db "DONG@"

	db 10
	dw PIDGEY
	db NO_ITEM
	dw TACKLE, SAND_ATTACK, GUST, FLY
	bigdw $0FFF
	bigdw 28
	bigdw 14
	bigdw 19
	bigdw 14
	bigdw 14
	bigdw 14
	db "EVER@"

	db 31
	dw GYARADOS
	db NO_ITEM
	dw THRASH, BITE, DRAGON_RAGE, LEER
	bigdw $AAAA
	bigdw 101
	bigdw 92
	bigdw 61
	bigdw 62
	bigdw 49
	bigdw 74
	db "DADA@"

	db 12
	dw POLIWAG
	db NO_ITEM
	dw WATERFALL, HYPNOSIS, SURF, WHIRLPOOL
	bigdw $0FFF
	bigdw 32
	bigdw 18
	bigdw 18
	bigdw 27
	bigdw 17
	bigdw 17
	db "ORGY@"

	db 5
	dw TOGEPI
	db NO_ITEM
	dw GROWL, CHARM, FLASH, NO_MOVE
	bigdw $FFFF
	bigdw 18
	bigdw 8
	bigdw 12
	bigdw 8
	bigdw 9
	bigdw 12
	db "DEKU@"

	db -1 ; end

	end_list_items

URFGroup:
	next_list_item ; URF1
	db "URF@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 58
	dw KYOGRE
	db GOLD_BERRY
	dw SURF, ICE_BEAM, THUNDER, CALM_MIND
	bigdw $FFFF
	bigdw 200
	bigdw 132
	bigdw 116
	bigdw 110
	bigdw 185
	bigdw 187
	db "UwU@"

	db 58
	dw SWAMPERT
	db SOFT_SAND
	dw EARTHQUAKE, WATERFALL, SURF, ICE_BEAM
	bigdw $FFFF
	bigdw 201
	bigdw 169
	bigdw 136
	bigdw 98
	bigdw 128
	bigdw 123
	db "BUTT@"

	db 9
	dw ZIGZAGOON
	db NO_ITEM
	dw TACKLE, ROCK_SMASH, CUT, TAIL_WHIP
	bigdw $0FFF
	bigdw 26
	bigdw 14
	bigdw 11
	bigdw 16
	bigdw 12
	bigdw 14
	db "Racc@"

	db 22
	dw LILEEP
	db LEFTOVERS
	dw GIGA_DRAIN, PROTECT, TOXIC, NO_MOVE ;INGRAIN
	bigdw $FFFF
	bigdw 61
	bigdw 24
	bigdw 39
	bigdw 18
	bigdw 32
	bigdw 53
	db "WAH@"

	db 16
	dw ARON
	db MINT_BERRY
	dw DIG, STRENGTH, MUD_SLAP, HEADBUTT
	bigdw $FFFF
	bigdw 44
	bigdw 30
	bigdw 41
	bigdw 15
	bigdw 21
	bigdw 21
	db "Tiny@"

	db -1

	end_list_items

GSCHGSSChrisRivalGroup:
	next_list_item
	db "AJDNNW@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME ; AJDNNW1
	db 9
	dw TOGEPI
	db NO_ITEM
	dw GROWL, CHARM, METRONOME, NO_MOVE
	bigdw $FFFF
	bigdw 29
	bigdw 11
	bigdw 18
	bigdw 9
	bigdw 13
	bigdw 18
	db "TOGEPI@"

	db 8
	dw PIDGEY
	db NO_ITEM
	dw TACKLE, SAND_ATTACK, NO_MOVE, NO_MOVE
	bigdw $FFFF
	bigdw 25
	bigdw 14
	bigdw 12
	bigdw 15
	bigdw 10
	bigdw 10
	db "PIDGEY@"

	db 6
	dw SENTRET
	db NO_ITEM
	dw TACKLE, DEFENSE_CURL, NO_MOVE, NO_MOVE
	bigdw $FFFF
	bigdw 22
	bigdw 11
	bigdw 10
	bigdw 8
	bigdw 9
	bigdw 10
	db "ADiiiiihhh@"

	db 5
	dw CATERPIE
	db NO_ITEM
	dw TACKLE, STRING_SHOT, NO_MOVE, NO_MOVE
	bigdw $0FFF
	bigdw 19
	bigdw 8
	bigdw 8
	bigdw 9
	bigdw 8
	bigdw 8
	db "OXXOZZ-:@"

	db 6
	dw WOOPER
	db NO_ITEM
	dw TAIL_WHIP, WATER_GUN, NO_MOVE, NO_MOVE
	bigdw $FFFF
	bigdw 24
	bigdw 11
	bigdw 12
	bigdw 8
	bigdw 8
	bigdw 8
	db "WOOPER@"

	db 24
	dw TOTODILE
	db NO_ITEM
	dw SCRATCH, BITE, RAGE, WATER_GUN
	bigdw $FFFF
	bigdw 71
	bigdw 51
	bigdw 46
	bigdw 35
	bigdw 39
	bigdw 41
	db "TOTODILE@"
	db -1 ; end

	next_list_item
	db "AJDNNW@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME ; AJDNNW2
	db 14
	dw KOFFING
	db NO_ITEM
	dw POISON_GAS, SMOG, TACKLE, NO_MOVE
	bigdw $FFFF
	bigdw 38
	bigdw 27
	bigdw 34
	bigdw 18
	bigdw 23
	bigdw 18
	db "WWWEEE@"

	db 38
	dw FERALIGATR
	db NO_ITEM
	dw SURF, SCRATCH, RAGE, WATER_GUN
	bigdw $FFFF
	bigdw 134
	bigdw 109
	bigdw 98
	bigdw 82
	bigdw 90
	bigdw 87
	db "FERALIGATR@"

	db 7
	dw METAPOD
	db POKE_BALL
	dw TACKLE, STRING_SHOT, HARDEN, NO_MOVE
	bigdw $0FFF
	bigdw 24
	bigdw 8
	bigdw 13
	bigdw 9
	bigdw 10
	bigdw 10
	db "OXXOZZ-:@"

	db 21
	dw EEVEE
	db NO_ITEM
	dw TACKLE, TAIL_WHIP, SAND_ATTACK, GROWL
	bigdw $FFFF
	bigdw 54
	bigdw 32
	bigdw 31
	bigdw 34
	bigdw 26
	bigdw 35
	db "EEVEE@"

	db 11
	dw TOGEPI
	db ANTIDOTE
	dw METRONOME, CHARM, FLASH, GROWL
	bigdw $FFFF
	bigdw 30
	bigdw 12
	bigdw 21
	bigdw 11
	bigdw 16
	bigdw 21
	db "TOGEPI@"

	db 16
	dw RATICATE
	db POKE_BALL
	dw TACKLE, TAIL_WHIP, QUICK_ATTACK, HYPER_FANG
	bigdw $0FFF
	bigdw 44
	bigdw 31
	bigdw 26
	bigdw 39
	bigdw 24
	bigdw 30
	db "ABBBDDDDDD@"

	db -1 ; end

	next_list_item
	db "AJDNNW@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME ; AJDNNW3

	db 20
	dw SHUCKLE
	db AMULET_COIN
	dw STRENGTH, CONSTRICT, WRAP, ENCORE
	bigdw $FFFF
	bigdw 42
	bigdw 15
	bigdw 98
	bigdw 10
	bigdw 12
	bigdw 100
	db "SHUCKIE@"

	db 31
	dw HOOTHOOT
	db TINYMUSHROOM
	dw PECK, HYPNOSIS, REFLECT, TAKE_DOWN
	bigdw $FFFF
	bigdw 86
	bigdw 33
	bigdw 27
	bigdw 42
	bigdw 31
	bigdw 43
	db "HOOTHOOT@"

	db 44
	dw PIDGEOT
	db TINYMUSHROOM
	dw FLY, QUICK_ATTACK, WHIRLWIND, WING_ATTACK
	bigdw $FFFF
	bigdw 143
	bigdw 99
	bigdw 88
	bigdw 104
	bigdw 75
	bigdw 75
	db "BBBBBD@"

	db 52
	dw FERALIGATR
	db X_SPECIAL
	dw SURF, WHIRLPOOL, RAGE, CUT
	bigdw $FFFF
	bigdw 184
	bigdw 152
	bigdw 138
	bigdw 116
	bigdw 123
	bigdw 127
	db "AAAAAtttta@"

	db 37
	dw ESPEON
	db EXP_SHARE
	dw BITE, TAIL_WHIP, SAND_ATTACK, GROWL
	bigdw $FFFF
	bigdw 102
	bigdw 66
	bigdw 63
	bigdw 104
	bigdw 110
	bigdw 84
	db "AAAS  RJ-I@"

	db 15
	dw DRATINI
	db NO_ITEM
	dw WRAP, LEER, THUNDER_WAVE, TWISTER
	bigdw $0FFF
	bigdw 38
	bigdw 24
	bigdw 19
	bigdw 22
	bigdw 20
	bigdw 20
	db "KT@"

	next_list_item
	db "AJDNNW@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME ; AJDNNW4

	db 51
	dw ESPEON
	db POKE_BALL
	dw BITE, ATTRACT, SAND_ATTACK, PSYCHIC_M
	bigdw $FFFF
	bigdw 140
	bigdw 93
	bigdw 89
	bigdw 145
	bigdw 154
	bigdw 119
	db "AAAS  RJ-I@"

	db 49
	dw STEELIX
	db NO_ITEM
	dw STRENGTH, ROCK_THROW, EARTHQUAKE, IRON_TAIL
	bigdw $FFFF
	bigdw 145
	bigdw 104
	bigdw 218
	bigdw 54
	bigdw 83
	bigdw 93
	db "AAJRR RRR@"

	db 78
	dw FERALIGATR
	db TINYMUSHROOM
	dw SURF, CUT, ICY_WIND, NO_MOVE
	bigdw $FFFF
	bigdw 281
	bigdw 238
	bigdw 217
	bigdw 181
	bigdw 192
	bigdw 198
	db "AAAAAtttta@"

	db 49
	dw DRAGONAIR
	db EXP_SHARE
	dw WATERFALL, DRAGONBREATH, TWISTER, SAFEGUARD
	bigdw $0FFF
	bigdw 131
	bigdw 103
	bigdw 84
	bigdw 93
	bigdw 85
	bigdw 85
	db "KT @"

	db 37
	dw RATICATE
	db ICE_BERRY
	dw QUICK_ATTACK, HYPER_FANG, SCARY_FACE, PURSUIT
	bigdw $FFFF
	bigdw 96
	bigdw 77
	bigdw 60
	bigdw 82
	bigdw 53
	bigdw 68
	db "A@"

	db 62
	dw PIDGEOT
	db SLOWPOKETAIL
	dw FLY, QUICK_ATTACK, MIRROR_MOVE, WING_ATTACK
	bigdw $FFFF
	bigdw 205
	bigdw 145
	bigdw 129
	bigdw 151
	bigdw 112
	bigdw 112
	db "BBBBBD@"
	db -1 ; end

	end_list_items

AzureGroup:
	next_list_item ; AZURE1
	db "AZURE@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS

	db 100
	dw ARTICUNO
	db LEFTOVERS
	dw ICE_BEAM, HIDDEN_POWER, BUBBLEBEAM, REFLECT
	bigdw $FFFF
	bigdw 383
	bigdw 268
	bigdw 298
	bigdw 268
	bigdw 288
	bigdw 348

	db 100
	dw ZAPDOS
	db LEFTOVERS
	dw THUNDERBOLT, DRILL_PECK, HIDDEN_POWER, THUNDER_WAVE
	bigdw $FFFF
	bigdw 383
	bigdw 278
	bigdw 268
	bigdw 298
	bigdw 348
	bigdw 278

	db 100
	dw MOLTRES
	db LEFTOVERS
	dw FIRE_BLAST, FLAMETHROWER, HIDDEN_POWER, DOUBLE_EDGE
	bigdw $FFFF
	bigdw 383
	bigdw 298
	bigdw 278
	bigdw 278
	bigdw 348
	bigdw 268

	db 100
	dw SNORLAX
	db LEFTOVERS
	dw CURSE, EARTHQUAKE, BODY_SLAM, REST
	bigdw $FFFF
	bigdw 523
	bigdw 318
	bigdw 228
	bigdw 158
	bigdw 228
	bigdw 318

	db 100
	dw LAPRAS
	db LEFTOVERS
	dw ICE_BEAM, SURF, THUNDERBOLT, CONFUSE_RAY
	bigdw $FFFF
	bigdw 463
	bigdw 268
	bigdw 258
	bigdw 218
	bigdw 268
	bigdw 288

	db 100
	dw MEW
	db LEFTOVERS
	dw PSYCHIC_M, SOFTBOILED, ICE_BEAM, EARTHQUAKE
	bigdw $FFFF
	bigdw 403
	bigdw 298
	bigdw 298
	bigdw 298
	bigdw 298
	bigdw 298

	db -1 ; end

	end_list_items

FCLarryGroup:
	next_list_item ; LARRY_GREEN
	db "LARRY@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 50
	dw VAPOREON
	db NO_ITEM
	dw ICE_BEAM, SURF, WATER_GUN, ACID_ARMOR
	bigdw $0337
	bigdw 210
	bigdw 84
	bigdw 81
	bigdw 87
	bigdw 135
	bigdw 135
	db "WEEB@"

	db 25
	dw FLAREON
	db NO_ITEM
	dw TACKLE, SAND_ATTACK, NO_MOVE, NO_MOVE
	bigdw $7260
	bigdw 71
	bigdw 73
	bigdw 36
	bigdw 40
	bigdw 60
	bigdw 60
	db "GG@"

	db 25
	dw JOLTEON
	db NO_ITEM
	dw TACKLE, SAND_ATTACK, THUNDER_WAVE, NO_MOVE
	bigdw $AF0E
	bigdw 48
	bigdw 25
	bigdw 26
	bigdw 46
	bigdw 24
	bigdw 24
	db "SUNRA@"

	db 4
	dw PHANCERO
	db NO_ITEM
	dw CUT, DIG, STRENGTH, NO_MOVE
	bigdw $AF0E
	bigdw 115
	bigdw 8
	bigdw 12
	bigdw 7
	bigdw 8
	bigdw 8
	db "1@"

	db 20
	dw PHANCERO
	db NO_ITEM
	dw PECK, GROWL, FLY, NO_MOVE
	bigdw $AF0E
	bigdw 50
	bigdw 43
	bigdw 23
	bigdw 49
	bigdw 23
	bigdw 23
	db "CUCKO@"

	db -1 ; end
	end_list_items

RedKantoLeaderGroup:
	next_list_item ;RED_RED
	db "RED@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 35
	dw VENOMOTH
	db NO_ITEM
	dw DISABLE, POISONPOWDER, LEECH_LIFE, STUN_SPORE
	bigdw $FFFF
	bigdw 102
	bigdw 59
	bigdw 52
	bigdw 80
	bigdw 75
	bigdw 75
	db "AATTVVV@"

	db 63
	dw PIDGEOT
	db NO_ITEM
	dw MIRROR_MOVE, SAND_ATTACK, QUICK_ATTACK, WHIRLWIND
	bigdw $FFFF
	bigdw 205
	bigdw 149
	bigdw 141
	bigdw 157
	bigdw 125
	bigdw 125
	db "aaabaaajss@"

	db 22
	dw LAPRAS
	db NO_ITEM
	dw SING, MIST, SURF, STRENGTH
	bigdw $0FFF
	bigdw 94
	bigdw 44
	bigdw 43
	bigdw 36
	bigdw 49
	bigdw 49
	db "AIIIIIIRRR@"

	db 38
	dw NIDOKING
	db NO_ITEM
	dw SURF, POISON_STING, FOCUS_ENERGY, FURY_ATTACK
	bigdw $FFFF
	bigdw 115
	bigdw 88
	bigdw 75
	bigdw 79
	bigdw 76
	bigdw 76
	db "AAAAAAAAAA@"

	db 60
	dw ZAPDOS
	db NO_ITEM
	dw THUNDERSHOCK, DRILL_PECK, TAKE_DOWN, THUNDER
	bigdw $FFFF
	bigdw 194
	bigdw 131
	bigdw 141
	bigdw 149
	bigdw 182
	bigdw 182
	db "AA-j@"

	db 35
	dw OMANYTE
	db NO_ITEM
	dw WATER_GUN, WITHDRAW, SURF, HORN_ATTACK
	bigdw $FFFF
	bigdw 78
	bigdw 45
	bigdw 78
	bigdw 42
	bigdw 73
	bigdw 73
	db "OMANYTE@"

	db -1

	end_list_items

RedJohtoLeaderGroup:
	next_list_item ; AIIIAAB1
	db "AIIIAAB@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 46
	dw CHARIZARD
	db NO_ITEM
	dw FLAMETHROWER, GROWL, LEER, EMBER
	bigdw $FFFF
	bigdw 149
	bigdw 101
	bigdw 103
	bigdw 121
	bigdw 104
	bigdw 104
	db "CHARIZARD@"

	db 12
	dw MAGIKARP
	db NO_ITEM
	dw SPLASH, NO_MOVE, NO_MOVE, NO_MOVE
	bigdw $0FFF
	bigdw 28
	bigdw 9
	bigdw 19
	bigdw 24
	bigdw 11
	bigdw 11
	db "BBAABaaaa@"

	db 19
	dw POLIWAG
	db NO_ITEM
	dw BUBBLE, TAKE_DOWN, HYPNOSIS, WATER_GUN
	bigdw $0FFF
	bigdw 48
	bigdw 25
	bigdw 26
	bigdw 46
	bigdw 24
	bigdw 24
	db "POLIWAG@"

	db 15
	dw KRABBY
	db NO_ITEM
	dw BUBBLE, LEER, NO_MOVE, NO_MOVE
	bigdw $0FFF
	bigdw 37
	bigdw 39
	bigdw 34
	bigdw 23
	bigdw 13
	bigdw 13
	db "z(( r yyz@"

	db 15
	dw KAKUNA
	db NO_ITEM
	dw HARDEN, NO_MOVE, NO_MOVE, NO_MOVE
	bigdw $FFFF
	bigdw 41
	bigdw 17
	bigdw 25
	bigdw 18
	bigdw 16
	bigdw 16
	db "KAKUNA@"

	db 30
	dw ONIX
	db NO_ITEM
	dw RAGE, SCREECH, BIND, ROCK_THROW
	bigdw $FFFF
	bigdw 69
	bigdw 42
	bigdw 114
	bigdw 54
	bigdw 35
	bigdw 35
	db "ONIX@"

	db -1 ; end
	end_list_items

RedGroup:
	next_list_item ;GF_RED
	db "RED@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES

	db 100
	dw PIKACHU
	db LIGHT_BALL
	dw CHARM, QUICK_ATTACK, THUNDERBOLT, THUNDER

	db 100
	dw ESPEON
	db NO_ITEM
	dw MUD_SLAP, REFLECT, SWIFT, PSYCHIC_M

	db 100
	dw SNORLAX
	db NO_ITEM
	dw AMNESIA, SNORE, REST, BODY_SLAM

	db 100
	dw VENUSAUR
	db NO_ITEM
	dw SUNNY_DAY, GIGA_DRAIN, SYNTHESIS, SOLARBEAM

	db 100
	dw CHARIZARD
	db NO_ITEM
	dw FLAMETHROWER, WING_ATTACK, SLASH, FIRE_SPIN

	db 100
	dw BLASTOISE
	db NO_ITEM
	dw RAIN_DANCE, SURF, BLIZZARD, WHIRLPOOL

	db -1 ; end

	next_list_item ;CCC_DUALRED
	db "(((@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 100
	dw RAICHU
	db NO_ITEM
	dw MEGA_KICK, THUNDER_WAVE, SWIFT, THUNDER
	bigdw $FFFF
	bigdw 293
	bigdw 249
	bigdw 170
	bigdw 247
	bigdw 247
	bigdw 247
	db "QPPQQRRQPj@"

	db 100
	dw DUGTRIO
	db NO_ITEM
	dw EARTHQUAKE, DIG, DOUBLE_TEAM, ROCK_SLIDE
	bigdw $FFFF
	bigdw 220
	bigdw 237
	bigdw 165
	bigdw 315
	bigdw 195
	bigdw 195
	db "DDDDDDDDDD@"

	db 100
	dw NIDOQUEEN
	db NO_ITEM
	dw SURF, HORN_DRILL, BLIZZARD, EARTHQUAKE
	bigdw $F9B5
	bigdw 353
	bigdw 227
	bigdw 253
	bigdw 227
	bigdw 215
	bigdw 215
	db "MLLLULVVSS@"

	db 100
	dw TAUROS
	db NO_ITEM
	dw HYPER_BEAM, STOMP, DOUBLE_TEAM, STRENGTH
	bigdw $FFFF
	bigdw 284
	bigdw 234
	bigdw 221
	bigdw 269
	bigdw 194
	bigdw 194
	db "-??CCCAAA-@"

	db 100
	dw CHARIZARD
	db NO_ITEM
	dw STRENGTH, MIMIC, FLAMETHROWER, SLASH
	bigdw $FFFF
	bigdw 344
	bigdw 246
	bigdw 236
	bigdw 283
	bigdw 259
	bigdw 259
	db "A@"

	db 100
	dw BEEDRILL
	db NO_ITEM
	dw CUT, TWINEEDLE, HYPER_BEAM, MEGA_DRAIN
	bigdw $FFFF
	bigdw 291
	bigdw 205
	bigdw 134
	bigdw 198
	bigdw 127
	bigdw 127
	db "?!♂♂♀AAABa@"
	db -1 ; end

	next_list_item ;KAY
	db "KAY@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 100
	dw MEWTWO
	db POKE_DOLL
	dw PSYCHIC_M, BARRIER, SWIFT, RECOVER
	bigdw $FFFF
	bigdw 327
	bigdw 227
	bigdw 192
	bigdw 281
	bigdw 363
	bigdw 201
	db ",UUCDWWWWW@"

	db 100
	dw STARMIE
	db MYSTIC_WATER
	dw SURF, PSYCHIC_M, BLIZZARD, THUNDER
	bigdw $FFFF
	bigdw 258
	bigdw 194
	bigdw 186
	bigdw 282
	bigdw 264
	bigdw 210
	db "AA-×ZZG--♂@"

	db 100
	dw RATICATE
	db NO_ITEM
	dw RETURN, HYPER_BEAM, BODY_SLAM, WATER_GUN
	bigdw $F9B5
	bigdw 254
	bigdw 215
	bigdw 174
	bigdw 265
	bigdw 137
	bigdw 173
	db "JJKSS@"

	db 100
	dw PHANCERO
	db EXP_SHARE
	dw FLY, SHADOW_BALL, WATER_GUN, WRAP
	bigdw $FFFF
	bigdw 498
	bigdw 264
	bigdw 141
	bigdw 322
	bigdw 200
	bigdw 147
	db "AAATUUUUUU@"

	db 100
	dw BLISSEY
	db LEFTOVERS
	dw DOUBLE_TEAM, SOFTBOILED, TOXIC, ICE_BEAM
	bigdw $FFFF
	bigdw 642
	bigdw 72
	bigdw 79
	bigdw 160
	bigdw 188
	bigdw 267
	db "X@"

	db 100
	dw HITMONLEE
	db NO_ITEM
	dw BRICK_BREAK, STRENGTH, METRONOME, JUMP_KICK
	bigdw $FFFF
	bigdw 236
	bigdw 275
	bigdw 151
	bigdw 226
	bigdw 98
	bigdw 266
	db "DD)@"
	db -1 ; end

	next_list_item ;RED_GAUNTLETRED
	db "RED@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 100
	dw ELECTRODE
	db NO_ITEM
	dw THUNDERBOLT, SWIFT, EXPLOSION, SELFDESTRUCT
	bigdw $FFFF
	bigdw 257
	bigdw 156
	bigdw 180
	bigdw 335
	bigdw 209
	bigdw 209
	db "BCCLLMDDML@"

	db 100
	dw POLIWRATH
	db NO_ITEM
	dw AMNESIA, HYPNOSIS, ICE_BEAM, SURF
	bigdw $0FFF
	bigdw 346
	bigdw 222
	bigdw 247
	bigdw 208
	bigdw 195
	bigdw 195
	db "AIIIIH@"

	db 100
	dw RAPIDASH
	db NO_ITEM
	dw STOMP, FIRE_BLAST, BODY_SLAM, FIRE_SPIN
	bigdw $F9B5
	bigdw 278
	bigdw 247
	bigdw 167
	bigdw 247
	bigdw 215
	bigdw 215
	db "J@"

	db 100
	dw DODRIO
	db NO_ITEM
	dw FLY, PECK, FURY_ATTACK, TRI_ATTACK
	bigdw $FFFF
	bigdw 267
	bigdw 271
	bigdw 174
	bigdw 251
	bigdw 180
	bigdw 180
	db "FJJAA)@"

	db 100
	dw VILEPLUME
	db NO_ITEM
	dw PETAL_DANCE, TOXIC, STUN_SPORE, SOLARBEAM
	bigdw $FFFF
	bigdw 326
	bigdw 228
	bigdw 224
	bigdw 155
	bigdw 262
	bigdw 262
	db "----@"

	db 100
	dw RHYDON
	db NO_ITEM
	dw ROCK_SLIDE, STRENGTH, STOMP, EARTHQUAKE
	bigdw $0FFF
	bigdw 365
	bigdw 308
	bigdw 289
	bigdw 142
	bigdw 122
	bigdw 122
	db "JJI???UUT@"
	db -1 ; end

	next_list_item ;RED_RED2
	db "RED@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 100
	dw ZAPDOS
	db NO_ITEM
	dw THUNDERSHOCK, DRILL_PECK, TAKE_DOWN, THUNDER
	bigdw $0FFF
	bigdw 336
	bigdw 235
	bigdw 253
	bigdw 264
	bigdw 321
	bigdw 321
	db "AA-j@"

	db 100
	dw NIDOKING
	db NO_ITEM
	dw SURF, POISON_STING, STRENGTH, FURY_ATTACK
	bigdw $0FFF
	bigdw 301
	bigdw 241
	bigdw 207
	bigdw 215
	bigdw 205
	bigdw 205
	db "AAAAAAAAAA@"

	db 100
	dw OMASTAR
	db NO_ITEM
	dw HYDRO_PUMP, WITHDRAW, SURF, HORN_ATTACK
	bigdw $F9B5
	bigdw 287
	bigdw 176
	bigdw 281
	bigdw 166
	bigdw 265
	bigdw 265
	db "OMASTAR@"

	db 100
	dw VENOMOTH
	db NO_ITEM
	dw DISABLE, POISONPOWDER, LEECH_LIFE, STUN_SPORE
	bigdw $FFFF
	bigdw 279
	bigdw 167
	bigdw 144
	bigdw 223
	bigdw 210
	bigdw 210
	db "AATTVVV@"

	db 100
	dw LAPRAS
	db NO_ITEM
	dw MIST, BODY_SLAM, SURF, STRENGTH
	bigdw $0FFF
	bigdw 397
	bigdw 190
	bigdw 186
	bigdw 154
	bigdw 211
	bigdw 211
	db "AIIIIIIRRR@"

	db 100
	dw PIDGEOT
	db NO_ITEM
	dw MIRROR_MOVE, SAND_ATTACK, QUICK_ATTACK, SKY_ATTACK
	bigdw $FFFF
	bigdw 324
	bigdw 239
	bigdw 227
	bigdw 251
	bigdw 201
	bigdw 201
	db "aaabaaajss@"
	db -1 ; end

	next_list_item ;AIIIAAB2
	db "AIIIAAB@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 100
	dw SLOWBRO
	db NO_ITEM
	dw AMNESIA, STRENGTH, SURF, PSYCHIC_M
	bigdw $0FFF
	bigdw 375
	bigdw 227
	bigdw 290
	bigdw 137
	bigdw 247
	bigdw 247
	db "AAbbABCabb@"

	db 100
	dw VENOMOTH
	db NO_ITEM
	dw PSYCHIC_M, STUN_SPORE, SLEEP_POWDER, PSYBEAM
	bigdw $FFFF
	bigdw 353
	bigdw 196
	bigdw 181
	bigdw 246
	bigdw 307
	bigdw 307
	db " RRRRIIIIH@"

	db 100
	dw CLOYSTER
	db NO_ITEM
	dw CLAMP, SURF, AURORA_BEAM, DOUBLE_TEAM
	bigdw $F9B5
	bigdw 264
	bigdw 272
	bigdw 429
	bigdw 230
	bigdw 260
	bigdw 260
	db "IIII--??(U@"

	db 100
	dw PARASECT
	db NO_ITEM
	dw SPORE, LEECH_LIFE, CUT, SLASH
	bigdw $0FFF
	bigdw 395
	bigdw 312
	bigdw 326
	bigdw 286
	bigdw 290
	bigdw 290
	db "-?@"

	db 100
	dw ZAPDOS
	db NO_ITEM
	dw DRILL_PECK, SKY_ATTACK, THUNDER, DOUBLE_TEAM
	bigdw $0FFF
	bigdw 354
	bigdw 241
	bigdw 252
	bigdw 286
	bigdw 311
	bigdw 311
	db "(ssjj <MN>..,@"

	db 100
	dw VICTREEBEL
	db NO_ITEM
	dw RAZOR_LEAF, CUT, SLEEP_POWDER, WRAP
	bigdw $FFFF
	bigdw 308
	bigdw 258
	bigdw 168
	bigdw 192
	bigdw 231
	bigdw 231
	db "RRQPO:<PK><PK><PK><PK>@"
	db -1 ; end

	end_list_items

RBYGreenGroup:
	next_list_item ; XXWWNN
	db "XXWWNN<PK>@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 100
	dw PERSIAN
	db NO_ITEM
	dw THUNDER, SLASH, BITE, FURY_SWIPES
	bigdw $FFFF
	bigdw 290
	bigdw 204
	bigdw 179
	bigdw 273
	bigdw 166
	bigdw 166
	db "CCLLUU)))♀@"

	db 100
	dw ARBOK
	db NO_ITEM
	dw EARTHQUAKE, POISON_STING, STRENGTH, WRAP
	bigdw $0FFF
	bigdw 290
	bigdw 224
	bigdw 203
	bigdw 210
	bigdw 178
	bigdw 178
	db "A@"

	db 100
	dw CLEFABLE
	db NO_ITEM
	dw THUNDERBOLT, FIRE_BLAST, SOLARBEAM, BUBBLEBEAM
	bigdw $09B5
	bigdw 335
	bigdw 195
	bigdw 207
	bigdw 178
	bigdw 215
	bigdw 215
	db "OOXXXXXWVT@"

	db 100
	dw LAPRAS
	db NO_ITEM
	dw BLIZZARD, SURF, ICE_BEAM, BODY_SLAM
	bigdw $FFFF
	bigdw 403
	bigdw 216
	bigdw 192
	bigdw 150
	bigdw 236
	bigdw 236
	db "ZZZZ<MN><MN><MN><MN><MN><MN>@"

	db 100
	dw ALAKAZAM
	db NO_ITEM
	dw PSYCHIC_M, CONFUSION, METRONOME, DIG
	bigdw $0FFF
	bigdw 290
	bigdw 164
	bigdw 163
	bigdw 301
	bigdw 340
	bigdw 340
	db "VVDDD-@"

	db 100
	dw VENUSAUR
	db NO_ITEM
	dw VINE_WHIP, CUT, SLEEP_POWDER, SOLARBEAM
	bigdw $FFFF
	bigdw 320
	bigdw 238
	bigdw 217
	bigdw 206
	bigdw 240
	bigdw 240
	db "UUUVVX;:UL@"
	db -1 ; end

	end_list_items

CYRoboredGroup:
	next_list_item ; X_CHATTYYELLOW1
	db "x<MN>(?@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 8
	dw RATTATA
	db NO_ITEM
	dw TACKLE, TAIL_WHIP, WATER_GUN, QUICK_ATTACK
	bigdw $0FFF
	bigdw 23
	bigdw 15
	bigdw 12
	bigdw 17
	bigdw 9
	bigdw 9
	db "RATTATA@"

	db 9
	dw NIDORAN_F
	db NO_ITEM
	dw TACKLE, GROWL, SCRATCH, NO_MOVE
	bigdw $0FFF
	bigdw 30
	bigdw 14
	bigdw 15
	bigdw 14
	bigdw 12
	bigdw 12
	db "AAAIIIIII<PK>@"

	db 33
	dw CHATOT
	db NO_ITEM
	dw CHATTER, ROOST, PECK, MIRROR_MOVE
	bigdw $19B5
	bigdw 111
	bigdw 56
	bigdw 48
	bigdw 80
	bigdw 76
	bigdw 76
	db "IIAAAIig--@"

	db 7
	dw MAGIKARP
	db NO_ITEM
	dw SPLASH, NO_MOVE, NO_MOVE, NO_MOVE
	bigdw $4FFF
	bigdw 20
	bigdw 7
	bigdw 13
	bigdw 17
	bigdw 10
	bigdw 10
	db "MAGIKARP@"

	db 11
	dw BULBASAUR
	db NO_ITEM
	dw TACKLE, GROWL, LEECH_SEED, NO_MOVE
	bigdw $2FFF
	bigdw 32
	bigdw 16
	bigdw 17
	bigdw 16
	bigdw 21
	bigdw 21
	db "RJKKCCCDDF@"

	db 10
	dw PIKACHU
	db NO_ITEM
	dw THUNDERSHOCK, GROWL, TAIL_WHIP, THUNDER_WAVE
	bigdw $0FFF
	bigdw 28
	bigdw 16
	bigdw 11
	bigdw 26
	bigdw 16
	bigdw 16
	db "AJ<MN><MN><MN><MN><MN><PK><PK><PK>@"
	db -1 ; end

	next_list_item ; X_CHATTYYELLOW2
	db "x<MN>(?@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 20
	dw JIGGLYPUFF
	db NO_ITEM
	dw DEFENSE_CURL, POUND, DISABLE, BUBBLEBEAM
	bigdw $FFFF
	bigdw 80
	bigdw 29
	bigdw 15
	bigdw 17
	bigdw 20
	bigdw 20
	db "XACC@"

	db 12
	dw PIKACHU
	db NO_ITEM
	dw BODY_SLAM, GROWL, QUICK_ATTACK, THUNDER_WAVE
	bigdw $0FFF
	bigdw 32
	bigdw 19
	bigdw 12
	bigdw 30
	bigdw 18
	bigdw 18
	db "AJ<MN><MN><MN><MN><MN><PK><PK><PK>@"

	db 23
	dw DIGLETT
	db NO_ITEM
	dw SCRATCH, GROWL, DIG, CUT
	bigdw $FFFF
	bigdw 42
	bigdw 36
	bigdw 19
	bigdw 55
	bigdw 30
	bigdw 30
	db "IGGGGGGFCC@"

	db 15
	dw BULBASAUR
	db NO_ITEM
	dw CUT, GROWL, LEECH_SEED, VINE_WHIP
	bigdw $2FFF
	bigdw 41
	bigdw 20
	bigdw 21
	bigdw 21
	bigdw 28
	bigdw 28
	db "RJKKCCCDDF@"

	db 10
	dw MAGIKARP
	db NO_ITEM
	dw SPLASH, NO_MOVE, NO_MOVE, NO_MOVE
	bigdw $4FFF
	bigdw 25
	bigdw 8
	bigdw 17
	bigdw 23
	bigdw 12
	bigdw 12
	db "MAGIKARP@"

	db 45
	dw CHATOT
	db NO_ITEM
	dw CHATTER, ROOST, PECK, MIRROR_MOVE
	bigdw $19B5
	bigdw 152
	bigdw 79
	bigdw 68
	bigdw 112
	bigdw 106
	bigdw 106
	db "IIAAAIig--@"

	db -1 ; end

	next_list_item ; X_CHATTYYELLOW3
	db "x<MN>(?@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 30
	dw RAICHU
	db NO_ITEM
	dw BODY_SLAM, THUNDERBOLT, QUICK_ATTACK, THUNDER_WAVE
	bigdw $0FFF
	bigdw 85
	bigdw 67
	bigdw 43
	bigdw 80
	bigdw 68
	bigdw 68
	db "IAS@"

	db 30
	dw JIGGLYPUFF
	db NO_ITEM
	dw DISABLE, REST, POUND, BUBBLEBEAM
	bigdw $FFFF
	bigdw 119
	bigdw 44
	bigdw 23
	bigdw 27
	bigdw 31
	bigdw 31
	db "IZZZZZZZQ@"

	db 32
	dw DUGTRIO
	db NO_ITEM
	dw SAND_ATTACK, GROWL, DIG, CUT
	bigdw $FFFF
	bigdw 75
	bigdw 69
	bigdw 45
	bigdw 96
	bigdw 60
	bigdw 60
	db "IGGGGGGFCC@"

	db 36
	dw VENUSAUR
	db NO_ITEM
	dw CUT, RAZOR_LEAF, LEECH_SEED, VINE_WHIP
	bigdw $2FFF
	bigdw 115
	bigdw 74
	bigdw 75
	bigdw 77
	bigdw 92
	bigdw 92
	db "-SJJJJx  <MN>@"

	db 31
	dw GYARADOS
	db NO_ITEM
	dw SPLASH, BITE, DRAGON_RAGE, TACKLE
	bigdw $4FFF
	bigdw 109
	bigdw 93
	bigdw 63
	bigdw 71
	bigdw 83
	bigdw 83
	db "AJJTUUUUU@"

	db 57
	dw CHATOT
	db NO_ITEM
	dw CHATTER, ROOST, PECK, MIRROR_MOVE
	bigdw $19B5
	bigdw 195
	bigdw 105
	bigdw 90
	bigdw 146
	bigdw 138
	bigdw 138
	db "AAAAAAaaaa@"

	db -1 ; end

	next_list_item ; X_CHATTYYELLOW4
	db "x<MN>(?@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 50
	dw VENUSAUR
	db NO_ITEM
	dw CUT, RAZOR_LEAF, LEECH_SEED, SOLARBEAM
	bigdw $2FFF
	bigdw 160
	bigdw 106
	bigdw 108
	bigdw 109
	bigdw 130
	bigdw 130
	db "-SJJJJx  <MN>@"

	db 54
	dw RAICHU
	db NO_ITEM
	dw BODY_SLAM, THUNDERBOLT, QUICK_ATTACK, THUNDER_WAVE
	bigdw $0FFF
	bigdw 154
	bigdw 124
	bigdw 81
	bigdw 148
	bigdw 127
	bigdw 127
	db "IAS@"

	db 55
	dw DUGTRIO
	db NO_ITEM
	dw EARTHQUAKE, SLASH, DIG, CUT
	bigdw $FFFF
	bigdw 134
	bigdw 124
	bigdw 84
	bigdw 170
	bigdw 107
	bigdw 107
	db "IGGGGGGFCC@"

	db 58
	dw GYARADOS
	db NO_ITEM
	dw STRENGTH, BITE, HYDRO_PUMP, SURF
	bigdw $4FFF
	bigdw 208
	bigdw 180
	bigdw 124
	bigdw 137
	bigdw 160
	bigdw 160
	db "AJJTUUUUU@"

	db 62
	dw WIGGLYTUFF
	db NO_ITEM
	dw STRENGTH, REST, DOUBLE_TEAM, PSYCHIC_M
	bigdw $FFFF
	bigdw 278
	bigdw 130
	bigdw 86
	bigdw 93
	bigdw 100
	bigdw 100
	db "IZZZZZZZQ@"

	db 66
	dw CHATOT
	db NO_ITEM
	dw CHATTER, FLY, PECK, MIRROR_MOVE
	bigdw $19B5
	bigdw 228
	bigdw 125
	bigdw 107
	bigdw 173
	bigdw 163
	bigdw 163
	db "AAAAAAaaaa@"

	db -1 ; end

	next_list_item ; X_CHATTYYELLOW5
	db "x<MN>(?@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 100
	dw RAICHU
	db NO_ITEM
	dw BODY_SLAM, THUNDERBOLT, MEGA_KICK, THUNDER_WAVE
	bigdw $0FFF
	bigdw 285
	bigdw 235
	bigdw 154
	bigdw 278
	bigdw 238
	bigdw 238
	db "IAS       @"

	db 100
	dw GYARADOS
	db NO_ITEM
	dw STRENGTH, BLIZZARD, HYDRO_PUMP, SURF
	bigdw $4FFF
	bigdw 375
	bigdw 326
	bigdw 236
	bigdw 252
	bigdw 293
	bigdw 293
	db "AJJJTUUUUU@"

	db 100
	dw VENUSAUR
	db NO_ITEM
	dw CUT, RAZOR_LEAF, SLEEP_POWDER, SOLARBEAM
	bigdw $2FFF
	bigdw 331
	bigdw 228
	bigdw 233
	bigdw 231
	bigdw 273
	bigdw 273
	db "-SJJJJ×  <MN>@"

	db 100
	dw CHATOT
	db NO_ITEM
	dw CHATTER, FLY, PECK, MIRROR_MOVE
	bigdw $19B5
	bigdw 347
	bigdw 195
	bigdw 167
	bigdw 267
	bigdw 251
	bigdw 251
	db "AAAAAAaaaa@"

	db 100
	dw DUGTRIO
	db NO_ITEM
	dw EARTHQUAKE, SLASH, DIG, CUT
	bigdw $FFFF
	bigdw 241
	bigdw 229
	bigdw 156
	bigdw 310
	bigdw 196
	bigdw 196
	db "IGGGGGGFCC@"

	db 100
	dw WIGGLYTUFF
	db NO_ITEM
	dw STRENGTH, REST, DOUBLE_TEAM, PSYCHIC_M
	bigdw $FFFF
	bigdw 450
	bigdw 214
	bigdw 144
	bigdw 155
	bigdw 166
	bigdw 166
	db "IZZZZZZZZQ@"

	db -1 ; end

	end_list_items

PokemonProfessorGroup:
GSCHGSSChrisGroup:
	next_list_item ; AAEFFFF
	db "AAEFFFF@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 43
	dw AGGRON
	db BLUESKY_MAIL
	dw IRON_DEFENSE, STRENGTH, TAKE_DOWN, IRON_HEAD
	bigdw $0FFF
	bigdw 119
	bigdw 105
	bigdw 178
	bigdw 58
	bigdw 65
	bigdw 63
	db "ALLlmMOm V@"

	db 42
	dw SKUNTANK
	db BLUESKY_MAIL
	dw CUT, FURY_SWIPES, POISON_JAB, MEMENTO
	bigdw $0FFF
	bigdw 141
	bigdw 96
	bigdw 77
	bigdw 91
	bigdw 77
	bigdw 56
	db "F2P@"

	db 41
	dw FARFETCH_D
	db BLUESKY_MAIL
	dw SWORDS_DANCE, FLY, CLOSE_COMBAT, NIGHT_SLASH
	bigdw $0FFF
	bigdw 107
	bigdw 107
	bigdw 59
	bigdw 103
	bigdw 56
	bigdw 61
	db "0011hIqU@"

	db 54
	dw FROSLASS
	db AMULET_COIN
	dw ICE_BEAM, WAKE_UP_SLAP, BITE, ICE_SHARD
	bigdw $0FFF
	bigdw 146
	bigdw 99
	bigdw 101
	bigdw 135
	bigdw 133
	bigdw 95
	db "00     UU@"

	db 46
	dw GASTRODON
	db FLOWER_MAIL
	dw WHIRLPOOL, BODY_SLAM, WATERFALL, SURF
	bigdw $FFFF
	bigdw 174
	bigdw 91
	bigdw 91
	bigdw 52
	bigdw 97
	bigdw 88
	db "AAAAAAAAA@"

	db 74
	dw TYPHLOSION
	db BLUESKY_MAIL
	dw FLAMETHROWER, EMBER, DOUBLE_EDGE, ROLLOUT
	bigdw $FFFF
	bigdw 227
	bigdw 167
	bigdw 156
	bigdw 165
	bigdw 191
	bigdw 146
	db "222@"
	db -1 ; end

	next_list_item ; D_GAUNTLETCRYSTAL
	db "d<PK>@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 61
	dw ENTEI
	db FOCUS_BAND
	dw SWAGGER, FIRE_SPIN, ROAR, FLAMETHROWER
	bigdw $2FFF
	bigdw 236
	bigdw 166
	bigdw 148
	bigdw 161
	bigdw 148
	bigdw 130
	db "BBBBLLlrk@"

	db 59
	dw MEGANIUM
	db LEFTOVERS
	dw GIGA_DRAIN, RAZOR_LEAF, BODY_SLAM, FURY_CUTTER
	bigdw $FFFF
	bigdw 201
	bigdw 131
	bigdw 154
	bigdw 135
	bigdw 133
	bigdw 153
	db "    ZZZZY@"

	db 58
	dw POLITOED
	db MYSTIC_WATER
	dw SURF, WATERFALL, WHIRLPOOL, ATTRACT
	bigdw $0FFF
	bigdw 204
	bigdw 117
	bigdw 128
	bigdw 112
	bigdw 145
	bigdw 156
	db "AAAxtux@"

	db 62
	dw MACHAMP
	db PINK_BOW
	dw STRENGTH, KARATE_CHOP, VITAL_THROW, CROSS_CHOP
	bigdw $FFFF
	bigdw 222
	bigdw 202
	bigdw 137
	bigdw 104
	bigdw 111
	bigdw 135
	db "JJJJSSS??S@"

	db 71
	dw STEELIX
	db METAL_COAT
	dw IRON_TAIL, STRENGTH, EARTHQUAKE, CRUNCH
	bigdw $FFFF
	bigdw 223
	bigdw 164
	bigdw 323
	bigdw 81
	bigdw 117
	bigdw 131
	db "ROCKY@"

	db 71
	dw URSARING
	db KINGS_ROCK
	dw SLASH, CUT, FURY_SWIPES, STRENGTH
	bigdw $F9B5
	bigdw 259
	bigdw 235
	bigdw 159
	bigdw 116
	bigdw 148
	bigdw 148
	db "CA.XX@"

	db -1 ; end
	end_list_items

RSEORASBrendanLeaderGroup:
	next_list_item ; ORLANDO
	db "!12rtyhasz@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 18
	dw COMBUSKEN
	db POTION
	dw SCRATCH, GROWL, PECK, EMBER
	bigdw $FFFF
	bigdw 54
	bigdw 32
	bigdw 30
	bigdw 28
	bigdw 29
	bigdw 39
	db "!sssssarfa@" ;https://www.twitch.tv/videos/30248788?t=14h04m18s https://www.twitch.tv/videos/30248788?t=13h09m52s

	db 6
	dw WHISMUR
	db NO_ITEM
	dw POUND, ECHOED_VOICE, NO_MOVE, NO_MOVE
	bigdw $FFFF
	bigdw 24
	bigdw 12
	bigdw 8
	bigdw 9
	bigdw 11
	bigdw 8
	db "Yuukt22y!i@"; https://www.twitch.tv/videos/30248788?t=13h04m36s
	db -1 ; end

	end_list_items


NuzlockeGroup:
	next_list_item ; F481
	db "F48@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 21
	dw WINGULL
	db NO_ITEM
	dw WING_ATTACK, WATER_GUN, SUPERSONIC, GROWL
	bigdw $FFFF
	bigdw 54
	bigdw 24
	bigdw 20
	bigdw 49
	bigdw 29
	bigdw 20
	db "Wingull@"

	db 17
	dw COMBUSKEN
	db POKE_BALL
	dw PECK, DOUBLE_KICK, SCRATCH, FOCUS_ENERGY
	bigdw $FFFF
	bigdw 49
	bigdw 34
	bigdw 26
	bigdw 26
	bigdw 37
	bigdw 30
	db "Zzzzzz mmg@"

	db 5
	dw POOCHYENA
	db NO_ITEM
	dw TACKLE, HOWL, NO_MOVE, NO_MOVE
	bigdw $0FFF
	bigdw 19
	bigdw 11
	bigdw 8
	bigdw 9
	bigdw 8
	bigdw 9
	db "6@"

	db 17
	dw MAKUHITA
	db EXP_SHARE
	dw VITAL_THROW, FOCUS_ENERGY, SAND_ATTACK, ARM_THRUST
	bigdw $FFFF
	bigdw 57
	bigdw 28
	bigdw 15
	bigdw 19
	bigdw 12
	bigdw 17
	db "Bbbt@"

	db 16
	dw TAILLOW
	db EXP_SHARE
	dw WING_ATTACK, GROWL, PECK, QUICK_ATTACK
	bigdw $FFFF
	bigdw 41
	bigdw 24
	bigdw 17
	bigdw 36
	bigdw 18
	bigdw 16
	db "Tailow@"

	db 11
	dw ARON
	db NO_ITEM
	dw TACKLE, HARDEN, MUD_SLAP, HEADBUTT
	bigdw $0FFF
	bigdw 33
	bigdw 20
	bigdw 27
	bigdw 12
	bigdw 16
	bigdw 16
	db "Mmmm@"

	db -1 ; end

	next_list_item ; F482
	db "F48@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 42
	dw MANECTRIC
	db POKE_BALL
	dw THUNDERBOLT, BITE, SPARK, HOWL
	bigdw $0FFF
	bigdw 122
	bigdw 70
	bigdw 72
	bigdw 115
	bigdw 111
	bigdw 66
	db "b  syro .g@"
	db 49
	dw BLAZIKEN
	db RAGECANDYBAR
	dw SLASH, DOUBLE_KICK, BLAZE_KICK, ROCK_TOMB
	bigdw $FFFF
	bigdw 153
	bigdw 127
	bigdw 82
	bigdw 102
	bigdw 138
	bigdw 96
	db "Zzzzzz mmg@"

	db 41
	dw VIBRAVA
	db AMULET_COIN
	dw BITE, FEINT_ATTACK, DRAGONBREATH, SAND_TOMB
	bigdw $FFFF
	bigdw 110
	bigdw 78
	bigdw 51
	bigdw 82
	bigdw 51
	bigdw 56
	db "Piiiv@"

	db 29
	dw WAILMER
	db EXP_SHARE
	dw ASTONISH, ROLLOUT, WATER_GUN, WATER_PULSE
	bigdw $FFFF
	bigdw 126
	bigdw 56
	bigdw 25
	bigdw 47
	bigdw 54
	bigdw 33
	db "Wu''''2@"

	db 19
	dw SABLEYE
	db EXP_SHARE
	dw FORESIGHT, SCRATCH, FURY_SWIPES, NIGHT_SHADE
	bigdw $0FFF
	bigdw 54
	bigdw 34
	bigdw 34
	bigdw 26
	bigdw 32
	bigdw 37
	db "Eeedjjllfn@"

	db -1 ; end

	next_list_item ; F483
	db "F48@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 49
	dw FLYGON
	db AMULET_COIN
	dw BITE, FEINT_ATTACK, DRAGONBREATH, SAND_TOMB
	bigdw $FFFF
	bigdw 159
	bigdw 127
	bigdw 88
	bigdw 130
	bigdw 90
	bigdw 96
	db "Piiiv@"

	db 43
	dw WAILORD
	db EXP_SHARE
	dw REST, ROLLOUT, SURF, WATER_SPOUT
	bigdw $FFFF
	bigdw 220
	bigdw 108
	bigdw 45
	bigdw 74
	bigdw 99
	bigdw 58
	db "Wu''''2@"

	db 33
	dw SABLEYE
	db EXP_SHARE
	dw SHADOW_BALL, FURY_SWIPES, NIGHT_SHADE, KNOCK_OFF
	bigdw $0FFF
	bigdw 88
	bigdw 63
	bigdw 58
	bigdw 45
	bigdw 56
	bigdw 63
	db "Eeedjjllfn@"

	db 50
	dw BLAZIKEN
	db RAGECANDYBAR
	dw SLASH, DOUBLE_KICK, BLAZE_KICK, ROCK_TOMB
	bigdw $FFFF
	bigdw 156
	bigdw 130
	bigdw 84
	bigdw 104
	bigdw 141
	bigdw 99
	db "Zzzzzz mmg@"

	db 47
	dw MANECTRIC
	db POKE_BALL
	dw THUNDERBOLT, BITE, THUNDER, HOWL
	bigdw $0FFF
	bigdw 136
	bigdw 77
	bigdw 80
	bigdw 129
	bigdw 123
	bigdw 73
	db "b  syro .g@"
	db 27
	dw DUSKULL
	db NO_ITEM
	dw SHADOW_BALL, ASTONISH, CONFUSE_RAY, PURSUIT
	bigdw $FFFF
	bigdw 51
	bigdw 27
	bigdw 66
	bigdw 25
	bigdw 21
	bigdw 59
	db "Dddd@"

	db -1 ; end
	end_list_items

NateElite4Group:
	next_list_item ; GAUNTLET_BLACK2
	db "♀♀R@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 47
	dw EELEKTROSS
	db LITEBLUEMAIL
	dw CRUNCH, THUNDERBOLT, FLASH_CANNON, FLAMETHROWER
	bigdw $FFFF
	bigdw 147
	bigdw 126
	bigdw 100
	bigdw 58
	bigdw 115
	bigdw 92
	db "pe@"

	db 45
	dw DUSKNOIR
	db LITEBLUEMAIL
	dw SHADOW_BALL, EARTHQUAKE, WILL_O_WISP, SHADOW_PUNCH
	bigdw $FFFF
	bigdw 108
	bigdw 96
	bigdw 130
	bigdw 48
	bigdw 72
	bigdw 130
	db "lierO 6@"

	db 55
	dw PORYGON_Z
	db LITEBLUEMAIL
	dw TRI_ATTACK, RECOVER, DISCHARGE, SHADOW_BALL
	bigdw $FAAA
	bigdw 168
	bigdw 110
	bigdw 86
	bigdw 115
	bigdw 178
	bigdw 105
	db "APSEPIEMG@"

	db 79
	dw MILOTIC
	db LITEBLUEMAIL
	dw RETURN, AQUA_RING, SURF, RECOVER
	bigdw $FFFF
	bigdw 250
	bigdw 147
	bigdw 151
	bigdw 185
	bigdw 206
	bigdw 220
	db "TRSNNEAESK@"

	db 71
	dw DARKRAI
	db LITEBLUEMAIL
	dw PSYCHIC_M, DOUBLE_TEAM, SHADOW_BALL, DARK_VOID
	bigdw $FFFF
	bigdw 181
	bigdw 154
	bigdw 151
	bigdw 203
	bigdw 209
	bigdw 144
	db "<DX><DX>w@"

	db 59
	dw KROOKODILE
	db LITEBLUEMAIL
	dw ROCK_TOMB, DIG, CRUNCH, EARTHQUAKE
	bigdw $0FFF
	bigdw 207
	bigdw 170
	bigdw 104
	bigdw 129
	bigdw 105
	bigdw 102
	db "L GGG HGMY@"
	db -1 ; end

	end_list_items

XYSerena2Group:
	next_list_item ; ETR
	db "Etr@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 78
	dw HELIOLISK
	db MAGNET
	dw SURF, HYPER_BEAM, GRASS_KNOT, THUNDERBOLT
	bigdw $FFFF
	bigdw 205
	bigdw 131
	bigdw 106
	bigdw 208
	bigdw 215
	bigdw 182
	db "Herrrdliop@"

	db 77
	dw AURORUS
	db MAGNET
	dw ICE_BEAM, ANCIENTPOWER, FREEZE_DRY, THUNDERBOLT
	bigdw $FFFF
	bigdw 304
	bigdw 156
	bigdw 137
	bigdw 132
	bigdw 207
	bigdw 153
	db "Amééépura2@"

	db 70
	dw MOTHIM
	db SHARP_BEAK
	dw BUG_BUZZ, AIR_SLASH, PSYCHIC_M, QUIVER_DANCE
	bigdw $FFFF
	bigdw 203
	bigdw 162
	bigdw 88
	bigdw 118
	bigdw 157
	bigdw 90
	db "Moth@"

	db 65
	dw GOODRA
	db POKE_DOLL
	dw FLAMETHROWER, DRAGON_PULSE, THUNDERBOLT, EARTHQUAKE
	bigdw $FFFF
	bigdw 213
	bigdw 172
	bigdw 113
	bigdw 135
	bigdw 181
	bigdw 222
	db "R6@"

	db 61
	dw DUCKLETT
	db EVERSTONE
	dw FLY, AQUA_RING, ROOST, BRAVE_BIRD
	bigdw $0FFF
	bigdw 165
	bigdw 91
	bigdw 84
	bigdw 75
	bigdw 78
	bigdw 101
	db "dfuucck@"

	db 56
	dw CLAWITZER
	db KINGS_ROCK
	dw SURF, AURA_SPHERE, WATERFALL, DARK_PULSE
	bigdw $0FFF
	bigdw 164
	bigdw 128
	bigdw 112
	bigdw 82
	bigdw 153
	bigdw 123
	db "8d b9 'bmp@"
	db -1 ; end

	end_list_items

PCyanGroup:
	next_list_item ; CYAN
	db "Cyan@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 83
	dw NINETALES
	db POKE_BALL
	dw FLAMETHROWER, FLARE_BLITZ, TRI_ATTACK, HYPNOSIS
	bigdw $01BB
	bigdw 263
	bigdw 171
	bigdw 168
	bigdw 229
	bigdw 195
	bigdw 226
	db "FFFEEEF@"

	db 59
	dw LOPUNNY
	db MASTER_BALL
	dw METRONOME, ENDURE, CUT, DRAIN_PUNCH
	bigdw $BA26
	bigdw 175
	bigdw 129
	bigdw 135
	bigdw 150
	bigdw 93
	bigdw 143
	db "EEEE@"

	db 60
	dw AMPHAROS
	db WATER_STONE
	dw OUTRAGE, POWER_GEM, SPARK, THUNDER
	bigdw $B0EA
	bigdw 206
	bigdw 127
	bigdw 125
	bigdw 107
	bigdw 174
	bigdw 144
	db "Ampharos@"

	db 61
	dw GARDEVOIR
	db FRIEND_BALL
	dw ICY_WIND, SIGNAL_BEAM, TRI_ATTACK, PSYCHIC_M
	bigdw $FB61
	bigdw 195
	bigdw 130
	bigdw 123
	bigdw 136
	bigdw 183
	bigdw 171
	db "IMmMMLLIR@"

	db 76
	dw TYRANITAR
	db BLACKGLASSES
	dw CRUNCH, ROCK_SLIDE, BODY_SLAM, ROCK_SMASH
	bigdw $4727
	bigdw 282
	bigdw 255
	bigdw 220
	bigdw 138
	bigdw 196
	bigdw 204
	db "I!C@"

	db 85
	dw AZUMARILL
	db LEFTOVERS
	dw SURF, AQUA_JET, STRENGTH, HYDRO_PUMP
	bigdw $1FD4
	bigdw 322
	bigdw 128
	bigdw 202
	bigdw 160
	bigdw 127
	bigdw 178
	db "YYYYXOOOOO@"
	db -1 ; end

	end_list_items

BrendanKantoLeaderGroup:
	next_list_item ; EEBNERT
	db "ébneert@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 75
	dw KINGDRA
	db MYSTIC_WATER
	dw SURF, ICE_BEAM, BRINE, DRAGON_PULSE
	bigdw $0FFF
	bigdw 219
	bigdw 187
	bigdw 161
	bigdw 162
	bigdw 182
	bigdw 171
	db "fish@"

	db 71
	dw DUNSPARCE
	db LEFTOVERS
	dw SECRET_POWER, ICE_BEAM, ANCIENTPOWER, PLAY_ROUGH
	bigdw $0FFF
	bigdw 251
	bigdw 143
	bigdw 142
	bigdw 97
	bigdw 115
	bigdw 118
	db "noob@"

	db 70
	dw LATIOS
	db EVERSTONE
	dw DIVE, FLY, SHADOW_BALL, PSYCHIC_M
	bigdw $FFFF
	bigdw 207
	bigdw 207
	bigdw 180
	bigdw 180
	bigdw 266
	bigdw 206
	db "!edr@"

	db 74
	dw EXCADRILL
	db SCOPE_LENS
	dw EARTHQUAKE, ROCK_SLIDE, IRON_HEAD, ROCK_SMASH
	bigdw $0FFF
	bigdw 262
	bigdw 249
	bigdw 108
	bigdw 162
	bigdw 113
	bigdw 121
	db "CEO'(+~<HASH><HASH>~@"

	db 67
	dw DELCATTY
	db MIRACLEBERRY
	dw ASSIST, STRENGTH, HIDDEN_POWER, MOONBLAST
	bigdw $A6FF
	bigdw 210
	bigdw 134
	bigdw 115
	bigdw 139
	bigdw 136
	bigdw 103
	db "!whhy@"

	db 74
	dw CRADILY
	db LEFTOVERS
	dw RECOVER, GIGA_DRAIN, ANCIENTPOWER, EARTH_POWER
	bigdw $FFFF
	bigdw 249
	bigdw 159
	bigdw 179
	bigdw 114
	bigdw 142
	bigdw 197
	db "Lg@"
	db -1 ; end

	end_list_items

WooperTGroup:
	next_list_item ; GMMTMT
	db "GMMTMT@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 71
	dw NIDORINO
	db NO_ITEM
	dw HORN_DRILL, POISON_STING, HORN_ATTACK, NO_MOVE
	bigdw $FFFF
	bigdw 188
	bigdw 121
	bigdw 103
	bigdw 118
	bigdw 97
	bigdw 88
	db "Nidorino@"

	db 22
	dw DIGLETT
	db NO_ITEM
	dw FURY_SWIPES, GROWL, MAGNITUDE, DIG
	bigdw $0FFF
	bigdw 40
	bigdw 35
	bigdw 17
	bigdw 47
	bigdw 23
	bigdw 30
	db "Diglett@"

	db 21
	dw DIGLETT
	db NO_ITEM
	dw SCRATCH, GROWL, MAGNITUDE, DIG
	bigdw $FFFF
	bigdw 39
	bigdw 30
	bigdw 17
	bigdw 49
	bigdw 21
	bigdw 23
	db "GGGHH@"

	db 100
	dw QUAGSIRE
	db STAR_PIECE
	dw HIDDEN_POWER, AMNESIA, EARTHQUAKE, RAIN_DANCE
	bigdw $0200
	bigdw 313
	bigdw 195
	bigdw 187
	bigdw 91
	bigdw 132
	bigdw 174
	db "Wooper@"

	db 19
	dw WOOPER
	db NO_ITEM
	dw WATER_GUN, TAIL_WHIP, SLAM, MUD_SHOT
	bigdw $0FFF
	bigdw 53
	bigdw 25
	bigdw 22
	bigdw 14
	bigdw 17
	bigdw 16
	db "Wooper@"

	db 34
	dw MACHOP
	db NO_ITEM
	dw SEISMIC_TOSS, REVENGE, FORESIGHT, VITAL_THROW
	bigdw $0FFF
	bigdw 94
	bigdw 66
	bigdw 47
	bigdw 29
	bigdw 37
	bigdw 29
	db "A, ,,.gkk…@"

	db -1

	end_list_items

BattlePCGroup:
	next_list_item ; BATTLE_PC (1)
	db "COMPUTER@"
	specialtrainer .mirrormatch

.mirrormatch
	ld hl, wPartyCount
	ld de, wOTPartyCount
	ld bc, 2 + PARTY_LENGTH
	call CopyBytes
	ld hl, wPartyMons
	ld de, wOTPartyMons
	ld bc, PARTY_LENGTH * (PARTYMON_STRUCT_LENGTH + NAME_LENGTH + MON_NAME_LENGTH)
	jp CopyBytes

	end_list_items

SECTION "Enemy Trainer Parties 2", ROMX

PKMNTrainerGroup:
	next_list_item ; CAL (1)
	db "CAL@", TRAINERTYPE_NORMAL
	db 10
	dw CHIKORITA
	db 10
	dw CYNDAQUIL
	db 10
	dw TOTODILE
	db -1 ; end

	next_list_item ; CAL (2)
	db "CAL@", TRAINERTYPE_NORMAL
	db 30
	dw BAYLEEF
	db 30
	dw QUILAVA
	db 30
	dw CROCONAW
	db -1 ; end

	next_list_item ; CAL (3)
	db "CAL@", TRAINERTYPE_NORMAL
	db 50
	dw MEGANIUM
	db 50
	dw TYPHLOSION
	db 50
	dw FERALIGATR
	db -1 ; end

	next_list_item ; CAL (4)
	db "CAL@", TRAINERTYPE_ITEM_MOVES
	db 100
	dw GARDEVOIR
	db BRIGHTPOWDER
	dw DESTINY_BOND, CALM_MIND, PSYCHIC_M, THUNDERBOLT
	db 100
	dw ALTARIA
	db GOLD_BERRY
	dw DRAGON_DANCE, DRAGON_CLAW, EARTHQUAKE, AERIAL_ACE
	db 100
	dw CROBAT
	db SCOPE_LENS
	dw CONFUSE_RAY, AIR_CUTTER, SLUDGE_BOMB, HIDDEN_POWER
	db 100
	dw MAGNETON
	db LEFTOVERS
	dw THUNDER_WAVE, THUNDERBOLT, TRI_ATTACK, HIDDEN_POWER
	db 100
	dw AGGRON
	db GOLD_BERRY
	dw DOUBLE_EDGE, EARTHQUAKE, ROCK_TOMB, IRON_TAIL
	db 100
	dw KYOGRE
	db FOCUS_BAND
	dw BODY_SLAM, CALM_MIND, ICE_BEAM, HYDRO_PUMP
	db -1 ; end

	next_list_item ; CAL (5)
	db "CAL@", TRAINERTYPE_NORMAL
	db 75
	dw MEGANIUM
	db 75
	dw TYPHLOSION
	db 75
	dw FERALIGATR
	db -1 ; end

	end_list_items

YoungsterGroup:
	next_list_item ; YOUNGSTER (1)
	db "JOEY@", TRAINERTYPE_NORMAL
	db 6
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (2)
	db "MIKEY@", TRAINERTYPE_NORMAL
	db 4
	dw PIDGEY
	db 6
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (3)
	db "ALBERT@", TRAINERTYPE_NORMAL
	db 13
	dw RATTATA
	db 15
	dw ZUBAT
	db -1 ; end

	next_list_item ; YOUNGSTER (4)
	db "GORDON@", TRAINERTYPE_NORMAL
	db 16
	dw WOOPER
	db -1 ; end

	next_list_item ; YOUNGSTER (5)
	db "SAMUEL@", TRAINERTYPE_NORMAL
	db 20
	dw RATICATE
	db 23
	dw SANDSLASH
	db 21
	dw FEAROW
	db 21
	dw FEAROW
	db -1 ; end

	next_list_item ; YOUNGSTER (6)
	db "IAN@", TRAINERTYPE_NORMAL
	db 22
	dw MANKEY
	db 24
	dw DIGLETT
	db -1 ; end

	next_list_item ; YOUNGSTER (7)
	db "JOEY@", TRAINERTYPE_NORMAL
	db 25
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (8)
	db "JOEY@", TRAINERTYPE_MOVES
	db 40
	dw RATICATE
	dw TAIL_WHIP, QUICK_ATTACK, HYPER_FANG, SCARY_FACE
	db -1 ; end

	next_list_item ; YOUNGSTER (9)
	db "WARREN@", TRAINERTYPE_NORMAL
	db 72
	dw FEAROW
	db -1 ; end

	next_list_item ; YOUNGSTER (10)
	db "JIMMY@", TRAINERTYPE_NORMAL
	db 70
	dw RATICATE
	db 70
	dw ARBOK
	db -1 ; end

	next_list_item ; YOUNGSTER (11)
	db "OWEN@", TRAINERTYPE_NORMAL
	db 66
	dw ARCANINE
	db -1 ; end

	next_list_item ; YOUNGSTER (12)
	db "JASON@", TRAINERTYPE_NORMAL
	db 65
	dw SANDSLASH
	db 65
	dw CROBAT
	db -1 ; end

	next_list_item ; YOUNGSTER (13)
	db "JOEY@", TRAINERTYPE_MOVES
	db 53
	dw RATICATE
	dw TAIL_WHIP, QUICK_ATTACK, HYPER_FANG, PURSUIT
	db -1 ; end

	next_list_item ; YOUNGSTER (14)
	db "JOEY@", TRAINERTYPE_MOVES
	db 80
	dw RATICATE
	dw HYPER_BEAM, QUICK_ATTACK, HYPER_FANG, PURSUIT
	db -1 ; end

	next_list_item ; YOUNGSTER (15)
	db "ERBEN@", TRAINERTYPE_MOVES
	db 66
	dw GRAVELER
	dw ROCK_THROW, ROLLOUT, MAGNITUDE, MUD_SLAP
	db 65
	dw ROSELIA
	dw SWEET_SCENT, MEGA_DRAIN, GRASS_KNOT, TOXIC
	db 66
	dw LOUDRED
	dw STOMP, POUND, REST, HOWL
	db 66
	dw WOBBUFFET
	dw COUNTER, MIRROR_COAT, SAFEGUARD, DESTINY_BOND
	db 65
	dw DELCATTY
	dw AMNESIA, ATTRACT, COVET, DIG
	db 66
	dw MACHOKE
	dw LOW_KICK, SEISMIC_TOSS, KARATE_CHOP, FORESIGHT
	db -1 ; end

	next_list_item ; YOUNGSTER (16)
	db "PERC@", TRAINERTYPE_ITEM
	db 93
	dw STARMIE
	db LEFTOVERS
	db 92
	dw SWANNA
	db GOLD_BERRY
	db 93
	dw CLAWITZER
	db GOLD_BERRY
	db 93
	dw OCTILLERY
	db QUICK_CLAW
	db 92
	dw EMPOLEON
	db MYSTIC_WATER
	db 93
	dw CRABOMINABLE
	db MYSTERYBERRY
	db -1 ; end

	next_list_item ; YOUNGSTER (17)
	db "EDD@", TRAINERTYPE_NORMAL
	db 70
	dw LINOONE
	db 60
	dw ZIGZAGOON
	db -1 ; end

	end_list_items

ScientistGroup:
	next_list_item ; SCIENTIST (1)
	db "ROSS@", TRAINERTYPE_NORMAL
	db 46
	dw WEEZING
	db 46
	dw WEEZING
	db -1 ; end

	next_list_item ; SCIENTIST (2)
	db "MITCH@", TRAINERTYPE_NORMAL
	db 50
	dw DITTO
	db -1 ; end

	next_list_item ; SCIENTIST (3)
	db "JED@", TRAINERTYPE_NORMAL
	db 45
	dw MAGNETON
	db 45
	dw MAGNETON
	db 45
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCIENTIST (4)
	db "MARC@", TRAINERTYPE_NORMAL
	db 49
	dw MAGNETON
	db 49
	dw MAGNETON
	db 49
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCIENTIST (5)
	db "RICH@", TRAINERTYPE_NORMAL
	db 51
	dw PORYGON2
	db -1 ; end

	next_list_item ; SCIENTIST (6)
	db "BRAYDON@", TRAINERTYPE_NORMAL
	db 71
	dw PORYGON_Z
	db 71
	dw MAGNETON
	db 71
	dw EELEKTROSS
	db -1 ; end

	next_list_item ; SCIENTIST (7)
	db "GIDEON@", TRAINERTYPE_NORMAL
	db 100
	dw DITTO
	db -1 ; end

	next_list_item ; SCIENTIST (8)
	db "TAYLOR@", TRAINERTYPE_NORMAL
	db 73
	dw MAGMAR
	db -1 ; end

	next_list_item ; SCIENTIST (9)
	db "DOIMO@", TRAINERTYPE_NORMAL
	db 65
	dw PHANPY
	db 64
	dw DELIBIRD
	db 65
	dw KOFFING
	db 65
	dw VIBRAVA
	db 64
	dw TEDDIURSA
	db 65
	dw RHYHORN
	db -1 ; end

	next_list_item ; SCIENTIST (10)
	db "WAGEL@", TRAINERTYPE_NORMAL
	db 69
	dw SPINARAK
	db 68
	dw ODDISH
	db 69
	dw GRIMER
	db 69
	dw TENTACOOL
	db 68
	dw KOFFING
	db 69
	dw ROSELIA
	db -1 ; end

	next_list_item ; SCIENTIST (11)
	db "HILDON@", TRAINERTYPE_ITEM
	db 70
	dw HOPPIP
	db MIRACLE_SEED
	db 69
	dw SMEARGLE
	db GOLD_BERRY
	db 70
	dw WOBBUFFET
	db LEFTOVERS
	db 70
	dw SURSKIT
	db BERRY
	db 69
	dw KIRLIA
	db MINT_BERRY
	db 70
	dw CRABRAWLER
	db BRIGHTPOWDER
	db -1 ; end

	next_list_item ; SCIENTIST (12)
	db "DEMIT@", TRAINERTYPE_ITEM
	db 78
	dw MASQUERAIN
	db SILVERPOWDER
	db 77
	dw VIBRAVA
	db BRIGHTPOWDER
	db 78
	dw CHATOT
	db KINGS_ROCK
	db 78
	dw SWELLOW
	db SHARP_BEAK
	db 77
	dw GIRAFARIG
	db POLKADOT_BOW
	db 78
	dw GOLBAT
	db BLACKGLASSES
	db -1 ; end

	next_list_item ; SCIENTIST (13)
	db "NANOT@", TRAINERTYPE_ITEM
	db 81
	dw MANECTRIC
	db GOLD_BERRY
	db 80
	dw ROSERADE
	db BRIGHTPOWDER
	db 81
	dw PILOSWINE
	db NEVERMELTICE
	db 81
	dw ARBOK
	db BRIGHTPOWDER
	db 80
	dw LEAFEON
	db LEFTOVERS
	db 81
	dw SMEARGLE
	db LEFTOVERS
	db -1 ; end

	next_list_item ; SCIENTIST (14)
	db "ORDO@", TRAINERTYPE_ITEM
	db 89
	dw TYPHLOSION
	db MIRACLEBERRY
	db 88
	dw PINSIR
	db BITTER_BERRY
	db 89
	dw CRADILY
	db GOLD_BERRY
	db 89
	dw LUDICOLO
	db NO_ITEM
	db 88
	dw XATU
	db MINT_BERRY
	db 89
	dw LAIRON
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; SCIENTIST (15)
	db "REMAN@", TRAINERTYPE_ITEM
	db 90
	dw BRONZONG
	db MYSTERYBERRY
	db 89
	dw WIGGLYTUFF
	db LEFTOVERS
	db 90
	dw AZUMARILL
	db FOCUS_BAND
	db 90
	dw QWILFISH
	db SCOPE_LENS
	db 89
	dw SUNFLORA
	db BITTER_BERRY
	db 90
	dw PELIPPER
	db KINGS_ROCK
	db -1 ; end

	end_list_items

SchoolboyGroup:
	next_list_item ; SCHOOLBOY (1)
	db "JACK@", TRAINERTYPE_NORMAL
	db 24
	dw GLOOM
	db 25
	dw VOLTORB
	db -1 ; end

	next_list_item ; SCHOOLBOY (2)
	db "KIPP@", TRAINERTYPE_NORMAL
	db 59
	dw VOLTORB
	db 59
	dw MAGNEMITE
	db 63
	dw ELECTRODE
	db 63
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (3)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 27
	dw TANGELA
	db -1 ; end

	next_list_item ; SCHOOLBOY (4)
	db "JOHNNY@", TRAINERTYPE_NORMAL
	db 60
	dw WEEPINBELL
	db 62
	dw VICTREEBEL
	db 64
	dw VICTREEBEL
	db -1 ; end

	next_list_item ; SCHOOLBOY (5)
	db "DANNY@", TRAINERTYPE_NORMAL
	db 69
	dw JYNX
	db 69
	dw ELECTABUZZ
	db 69
	dw MAGMAR
	db -1 ; end

	next_list_item ; SCHOOLBOY (6)
	db "TOMMY@", TRAINERTYPE_NORMAL
	db 63
	dw XATU
	db 65
	dw ALAKAZAM
	db -1 ; end

	next_list_item ; SCHOOLBOY (7)
	db "DUDLEY@", TRAINERTYPE_NORMAL
	db 69
	dw VILEPLUME
	db -1 ; end

	next_list_item ; SCHOOLBOY (8)
	db "JOE@", TRAINERTYPE_NORMAL
	db 68
	dw TANGELA
	db 68
	dw VAPOREON
	db -1 ; end

	next_list_item ; SCHOOLBOY (9)
	db "BILLY@", TRAINERTYPE_NORMAL
	db 63
	dw PARASECT
	db 63
	dw PARASECT
	db 63
	dw POLITOED
	db 80
	dw DITTO
	db -1 ; end

	next_list_item ; SCHOOLBOY (10)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 34
	dw MR__MIME
	db -1 ; end

	next_list_item ; SCHOOLBOY (11)
	db "NATE@", TRAINERTYPE_NORMAL
	db 55
	dw LEDIAN
	db 55
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; SCHOOLBOY (12)
	db "RICKY@", TRAINERTYPE_NORMAL
	db 55
	dw AIPOM
	db 70 ;not a typo, meant to be 70
	dw DITTO
	db -1 ; end

	next_list_item ; SCHOOLBOY (13)
	db "JACK@", TRAINERTYPE_NORMAL
	db 38
	dw VILEPLUME
	db 40
	dw ELECTRODE
	db -1 ; end

	next_list_item ; SCHOOLBOY (14)
	db "JACK@", TRAINERTYPE_NORMAL
	db 51
	dw VILEPLUME
	db 53
	dw ELECTRODE
	db -1 ; end

	next_list_item ; SCHOOLBOY (15)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 39
	dw TANGELA
	db 39
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (16)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 50
	dw XATU
	db 51
	dw TANGELA
	db 50
	dw QUAGSIRE
	db 54
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (17)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 45
	dw MR__MIME
	db 45
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (18)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 52
	dw MR__MIME
	db 52
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (19)
	db "JACK@", TRAINERTYPE_NORMAL
	db 68
	dw VILEPLUME
	db 70
	dw ARCANINE
	db 70
	dw ELECTRODE
	db -1 ; end

	next_list_item ; SCHOOLBOY (20)
	db "JACK@", TRAINERTYPE_MOVES
	db 78
	dw ELECTRODE
	dw REFLECT, THUNDERBOLT, EXPLOSION, LIGHT_SCREEN
	db 78
	dw ARCANINE
	dw SUNNY_DAY, DRAGONBREATH, EXTREMESPEED, FLAMETHROWER
	db 80
	dw VILEPLUME
	dw SOLARBEAM, SLEEP_POWDER, SLUDGE_BOMB, SUNNY_DAY
	db -1 ; end

	next_list_item ; SCHOOLBOY (21)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 65
	dw XATU
	db 65
	dw TANGELA
	db 68
	dw QUAGSIRE
	db 68
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (22)
	db "ALAN@", TRAINERTYPE_MOVES
	db 80
	dw XATU
	dw FLY, PSYCHIC_M, SWIFT, FUTURE_SIGHT
	db 77
	dw TANGELA
	dw SLEEP_POWDER, GROWTH, BIND, GIGA_DRAIN
	db 77
	dw YANMA
	dw QUICK_ATTACK, DOUBLE_TEAM, WING_ATTACK, SCREECH
	db 80
	dw QUAGSIRE
	dw TAIL_WHIP, SURF, AMNESIA, EARTHQUAKE
	db -1 ; end

	next_list_item ; SCHOOLBOY (23)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 66
	dw MR__MIME
	db 70
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (24)
	db "CHAD@", TRAINERTYPE_MOVES
	db 76
	dw MR__MIME
	dw PSYCHIC_M, LIGHT_SCREEN, REFLECT, ENCORE
	db 80
	dw MAGNETON
	dw ZAP_CANNON, THUNDER_WAVE, LOCK_ON, SWIFT
	db -1 ; end

	next_list_item ; SCHOOLBOY (25)
	db "ROEX@", TRAINERTYPE_ITEM
	db 71
	dw BAGON
	db SCOPE_LENS
	db 70
	dw GOLDEEN
	db BERRY
	db 71
	dw BAYLEEF
	db GOLD_BERRY
	db 71
	dw MURKROW
	db BLACKGLASSES
	db 70
	dw GOOMY
	db EXP_SHARE
	db 71
	dw MACHOP
	db MIRACLEBERRY
	db -1 ; end

	next_list_item ; SCHOOLBOY (26)
	db "THEODORE@", TRAINERTYPE_NORMAL
	db 72
	dw GARDEVOIR
	db -1 ; end

	next_list_item ; SCHOOLBOY (26)
	db "PAULO@", TRAINERTYPE_NORMAL
	db 68
	dw FLAREON
	db 65
	dw VILEPLUME
	db 66
	dw PELIPPER
	db -1 ; end

	end_list_items

BirdKeeperGroup:
	next_list_item ; BIRD_KEEPER (1)
	db "ROD@", TRAINERTYPE_NORMAL
	db 12
	dw PIDGEY
	db 12
	dw PIDGEY
	db -1 ; end

	next_list_item ; BIRD_KEEPER (2)
	db "ABE@", TRAINERTYPE_NORMAL
	db 14
	dw SPEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (3)
	db "BRYAN@", TRAINERTYPE_NORMAL
	db 23
	dw PIDGEOTTO
	db 25
	dw PIDGEOTTO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (4)
	db "THEO@", TRAINERTYPE_NORMAL
	db 32
	dw PIDGEOTTO
	db 30
	dw PIDGEOTTO
	db 34
	dw PIDGEOTTO
	db 30
	dw PIDGEOTTO
	db 30
	dw PIDGEOTTO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (5)
	db "TOBY@", TRAINERTYPE_NORMAL
	db 30
	dw DODUO
	db 31
	dw DODUO
	db 32
	dw DODRIO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (6)
	db "DENIS@", TRAINERTYPE_NORMAL
	db 34
	dw SPEAROW
	db 35
	dw FEAROW
	db 34
	dw SPEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (7)
	db "VANCE@", TRAINERTYPE_NORMAL
	db 52
	dw PIDGEOT
	db 52
	dw PIDGEOT
	db -1 ; end

	next_list_item ; BIRD_KEEPER (8)
	db "HANK@", TRAINERTYPE_NORMAL
	db 12
	dw PIDGEY
	db 72
	dw PIDGEOT
	db -1 ; end

	next_list_item ; BIRD_KEEPER (9)
	db "ROY@", TRAINERTYPE_NORMAL
	db 59
	dw FEAROW
	db 65
	dw FEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (10)
	db "BORIS@", TRAINERTYPE_NORMAL
	db 59
	dw DODRIO
	db 57
	dw DODRIO
	db 61
	dw DODRIO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (11)
	db "BOB@", TRAINERTYPE_NORMAL
	db 62
	dw NOCTOWL
	db -1 ; end

	next_list_item ; BIRD_KEEPER (12)
	db "JOSE@", TRAINERTYPE_NORMAL
	db 90
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (13)
	db "PETER@", TRAINERTYPE_NORMAL
	db 12
	dw PIDGEY
	db 12
	dw PIDGEY
	db 14
	dw SPEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (14)
	db "JOSE@", TRAINERTYPE_NORMAL
	db 100
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (15)
	db "PERRY@", TRAINERTYPE_NORMAL
	db 80
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (16)
	db "BRET@", TRAINERTYPE_NORMAL
	db 65
	dw PIDGEOT
	db 65
	dw FEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (18)
	db "VANCE@", TRAINERTYPE_NORMAL
	db 69
	dw PIDGEOT
	db 69
	dw PIDGEOT
	db -1 ; end

	next_list_item ; BIRD_KEEPER (19)
	db "VANCE@", TRAINERTYPE_MOVES
	db 79
	dw PIDGEOT
	dw TOXIC, QUICK_ATTACK, RETURN, FLY
	db 79
	dw PIDGEOT
	dw RETURN, DETECT, STEEL_WING, FLY
	db -1 ; end

	next_list_item ; BIRD_KEEPER (20)
	db "ELION@", TRAINERTYPE_MOVES
	db 62
	dw ZUBAT
	dw SUPERSONIC, BITE, LEECH_LIFE, ASTONISH
	db 61
	dw DODUO
	dw PECK, GROWL, PURSUIT, AGILITY
	db 62
	dw HOOTHOOT
	dw FORESIGHT, FLASH, HYPNOSIS, DREAM_EATER
	db 62
	dw SWABLU
	dw PURSUIT, SING, MIRROR_MOVE, FURY_ATTACK
	db 61
	dw TAILLOW
	dw QUICK_ATTACK, PECK, DOUBLE_TEAM, SUPERSONIC
	db 62
	dw WINGULL
	dw TWISTER, GROWL, WATER_GUN, SUPERSONIC
	db -1 ; end

	next_list_item ; BIRD_KEEPER (21)
	db "BENIT@", TRAINERTYPE_ITEM
	db 82
	dw CHATOT
	db GOLD_BERRY
	db 81
	dw DODRIO
	db MYSTERYBERRY
	db 82
	dw SWANNA
	db LEFTOVERS
	db 82
	dw MANTINE
	db GOLD_BERRY
	db 81
	dw XATU
	db GOLD_BERRY
	db 82
	dw SALAMENCE
	db LEFTOVERS
	db -1 ; end

	end_list_items

LassGroup:
	next_list_item ; LASS (1)
	db "CARRIE@", TRAINERTYPE_NORMAL
	db 28
	dw GRANBULL
	db -1 ; end

	next_list_item ; LASS (2)
	db "BRIDGET@", TRAINERTYPE_NORMAL
	db 26
	dw JIGGLYPUFF
	db 26
	dw JIGGLYPUFF
	db 26
	dw WIGGLYTUFF
	db -1 ; end

	next_list_item ; LASS (3)
	db "ALICE@", TRAINERTYPE_NORMAL
	db 59
	dw VILEPLUME
	db 63
	dw ARBOK
	db 59
	dw VILEPLUME
	db -1 ; end

	next_list_item ; LASS (4)
	db "KRISE@", TRAINERTYPE_NORMAL
	db 24
	dw GLOOM
	db 25
	dw CUBONE
	db -1 ; end

	next_list_item ; LASS (5)
	db "CONNIE@", TRAINERTYPE_NORMAL
	db 36
	dw AZUMARILL
	db -1 ; end

	next_list_item ; LASS (6)
	db "LINDA@", TRAINERTYPE_NORMAL
	db 59
	dw VENUSAUR
	db 61
	dw VENUSAUR
	db 63
	dw VENUSAUR
	db -1 ; end

	next_list_item ; LASS (7)
	db "LAURA@", TRAINERTYPE_NORMAL
	db 65
	dw BELLOSSOM
	db 68
	dw PIDGEOT
	db 68
	dw BELLOSSOM
	db -1 ; end

	next_list_item ; LASS (8)
	db "SHANNON@", TRAINERTYPE_NORMAL
	db 65
	dw PARASECT
	db 65
	dw PARASECT
	db 68
	dw PARASECT
	db -1 ; end

	next_list_item ; LASS (9)
	db "MICHELLE@", TRAINERTYPE_NORMAL
	db 59
	dw JUMPLUFF
	db 59
	dw JUMPLUFF
	db 59
	dw JUMPLUFF
	db -1 ; end

	next_list_item ; LASS (10)
	db "DANA@", TRAINERTYPE_MOVES
	db 32
	dw AMPHAROS
	dw COTTON_SPORE, GROWL, THUNDERPUNCH, THUNDER_WAVE
	db 33
	dw PSYDUCK
	dw SURF, PSYCH_UP, DISABLE, CONFUSION
	db -1 ; end

	next_list_item ; LASS (11)
	db "ELLEN@", TRAINERTYPE_NORMAL
	db 64
	dw WIGGLYTUFF
	db 68
	dw GRANBULL
	db -1 ; end

	next_list_item ; LASS (12)
	db "CONNIE@", TRAINERTYPE_NORMAL
	db 21
	dw MARILL
	db -1 ; end

	next_list_item ; LASS (13)
	db "CONNIE@", TRAINERTYPE_NORMAL
	db 21
	dw MARILL
	db -1 ; end

	next_list_item ; LASS (14)
	db "DANA@", TRAINERTYPE_MOVES
	db 44
	dw AMPHAROS
	dw COTTON_SPORE, LIGHT_SCREEN, THUNDERPUNCH, THUNDER_WAVE
	db 44
	dw GOLDUCK
	dw SURF, PSYCH_UP, DISABLE, CONFUSION
	db -1 ; end

	next_list_item ; LASS (15)
	db "DANA@", TRAINERTYPE_MOVES
	db 52
	dw GOLDUCK
	dw SURF, PSYCH_UP, DISABLE, PSYCHIC_M
	db 52
	dw AMPHAROS
	dw COTTON_SPORE, LIGHT_SCREEN, THUNDERPUNCH, THUNDER_WAVE
	db -1 ; end

	next_list_item ; LASS (16)
	db "DANA@", TRAINERTYPE_MOVES
	db 69
	dw GOLDUCK
	dw SURF, PSYCH_UP, DISABLE, PSYCHIC_M
	db 69
	dw AMPHAROS
	dw COTTON_SPORE, LIGHT_SCREEN, THUNDER, THUNDER_WAVE
	db -1 ; end

	next_list_item ; LASS (17)
	db "DANA@", TRAINERTYPE_MOVES
	db 79
	dw AMPHAROS
	dw COTTON_SPORE, LIGHT_SCREEN, THUNDER, THUNDER_WAVE
	db 79
	dw GOLDUCK
	dw SURF, PSYCH_UP, DISABLE, PSYCHIC_M
	db -1 ; end

	next_list_item ; LASS (18)
	db "SANOL@", TRAINERTYPE_ITEM
	db 92
	dw METAGROSS
	db BRIGHTPOWDER
	db 91
	dw CHANDELURE
	db GOLD_BERRY
	db 92
	dw RAICHU
	db MIRACLEBERRY
	db 92
	dw CROBAT
	db FOCUS_BAND
	db 91
	dw MANTINE
	db MYSTIC_WATER
	db 92
	dw HITMONTOP
	db BLACKBELT
	db -1 ; end

	next_list_item ; LASS (19)
	db "SALLY@", TRAINERTYPE_NORMAL
	db 70
	dw VILEPLUME
	db -1 ; end

	next_list_item ; LASS (20)
	db "ROBIN@", TRAINERTYPE_NORMAL
	db 65
	dw DELCATTY
	db 66
	dw LEAFEON
	db 68
	dw AZUMARILL
	db -1 ; end

	next_list_item ; LASS (21)
	db "SAVANNAH@", TRAINERTYPE_NORMAL
	db 68
	dw ROSERADE
	db 70
	dw MOTHIM
	db -1 ; end

	end_list_items

CooltrainerMGroup:
	next_list_item ; COOLTRAINERM (1)
	db "NICK@", TRAINERTYPE_MOVES
	db 26
	dw CHARMANDER
	dw EMBER, SMOKESCREEN, RAGE, SCARY_FACE
	db 26
	dw SQUIRTLE
	dw WITHDRAW, WATER_GUN, BITE, CURSE
	db 26
	dw BULBASAUR
	dw LEECH_SEED, POISONPOWDER, SLEEP_POWDER, RAZOR_LEAF
	db -1 ; end

	next_list_item ; COOLTRAINERM (2)
	db "AARON@", TRAINERTYPE_NORMAL
	db 48
	dw VENUSAUR
	db 48
	dw CHARIZARD
	db 48
	dw BLASTOISE
	db -1 ; end

	next_list_item ; COOLTRAINERM (3)
	db "PAUL@", TRAINERTYPE_NORMAL
	db 50
	dw DRAGONAIR
	db 50
	dw DRAGONAIR
	db 50
	dw DRAGONAIR
	db -1 ; end

	next_list_item ; COOLTRAINERM (4)
	db "CODY@", TRAINERTYPE_NORMAL
	db 50
	dw SEADRA
	db 52
	dw KINGDRA
	db -1 ; end

	next_list_item ; COOLTRAINERM (5)
	db "MIKE@", TRAINERTYPE_NORMAL
	db 53
	dw DRAGONAIR
	db -1 ; end

	next_list_item ; COOLTRAINERM (6)
	db "GAVEN@", TRAINERTYPE_MOVES
	db 73
	dw VICTREEBEL
	dw WRAP, TOXIC, SLUDGE_BOMB, GIGA_DRAIN
	db 73
	dw KINGLER
	dw SURF, STRENGTH, GUILLOTINE, PROTECT
	db 73
	dw FLAREON
	dw SAND_ATTACK, QUICK_ATTACK, SHADOW_BALL, FLAMETHROWER
	db -1 ; end

	next_list_item ; COOLTRAINERM (7)
	db "GAVEN@", TRAINERTYPE_ITEM_MOVES
	db 78
	dw VICTREEBEL
	db NO_ITEM
	dw GIGA_DRAIN, TOXIC, SLUDGE_BOMB, RETURN
	db 78
	dw KINGLER
	db KINGS_ROCK
	dw SURF, STRENGTH, GUILLOTINE, BLIZZARD
	db 78
	dw FLAREON
	db NO_ITEM
	dw FLAMETHROWER, QUICK_ATTACK, SHADOW_BALL, CURSE
	db -1 ; end

	next_list_item ; COOLTRAINERM (8)
	db "RYAN@", TRAINERTYPE_NORMAL
	db 52
	dw PIDGEOT
	db 54
	dw ELECTABUZZ
	db -1 ; end

	next_list_item ; COOLTRAINERM (9)
	db "JAKE@", TRAINERTYPE_MOVES
	db 72
	dw PARASECT
	dw SLUDGE_BOMB, SPORE, SLASH, SWORDS_DANCE
	db 74
	dw GOLDUCK
	dw SURF, DYNAMICPUNCH, PSYCHIC_M, SCREECH
	db -1 ; end

	next_list_item ; COOLTRAINERM (11)
	db "BLAKE@", TRAINERTYPE_MOVES
	db 74
	dw MAGNETON
	dw THUNDERBOLT, THUNDER_WAVE, TRI_ATTACK, SCREECH
	db 72
	dw QUAGSIRE
	dw SURF, SLAM, AMNESIA, EARTHQUAKE
	db 72
	dw EXEGGUTOR
	dw LEECH_SEED, PSYCHIC_M, SLEEP_POWDER, GIGA_DRAIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (12)
	db "BRIAN@", TRAINERTYPE_MOVES
	db 75
	dw SANDSLASH
	dw EARTHQUAKE, SANDSTORM, SLASH, ROLLOUT
	db -1 ; end

	next_list_item ; COOLTRAINERM (13)
	db "ERICK@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (14)
	db "ANDY@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (15)
	db "TYLER@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (16)
	db "SEAN@", TRAINERTYPE_NORMAL
	db 54
	dw FLAREON
	db 54
	dw TANGELA
	db 54
	dw TAUROS
	db -1 ; end

	next_list_item ; COOLTRAINERM (17)
	db "KEVIN@", TRAINERTYPE_NORMAL
	db 68
	dw RHYDON
	db 65
	dw CHARIZARD
	db 65
	dw BLASTOISE
	db -1 ; end

	next_list_item ; COOLTRAINERM (18)
	db "STEVE@", TRAINERTYPE_NORMAL
	db 14
	dw BULBASAUR
	db 14
	dw CHARMANDER
	db 14
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (19)
	db "ALLEN@", TRAINERTYPE_NORMAL
	db 53
	dw CHARIZARD
	db -1 ; end

	next_list_item ; COOLTRAINERM (20)
	db "DARIN@", TRAINERTYPE_NORMAL
	db 55
	dw DRAGONITE
	db -1 ; end

	next_list_item ; COOLTRAINERM (20)
	db "YUJI@", TRAINERTYPE_NORMAL
	db 73
	dw RHYDON
	db -1 ; end

	next_list_item ; COOLTRAINERM (21)
	db "HEBEL@", TRAINERTYPE_NORMAL
	db 65
	dw RIBOMBEE
	db 64
	dw BUTTERFREE
	db 65
	dw MOTHIM
	db 65
	dw LEDIAN
	db 64
	dw ARIADOS
	db 65
	dw YANMA
	db -1 ; end

	next_list_item ; COOLTRAINERM (22)
	db "MORIL@", TRAINERTYPE_ITEM
	db 72
	dw VOLTORB
	db SCOPE_LENS
	db 71
	dw LOMBRE
	db GOLD_BERRY
	db 72
	dw SHELLDER
	db MYSTIC_WATER
	db 72
	dw PANSAGE
	db GOLD_BERRY
	db 71
	dw VIBRAVA
	db GOLD_BERRY
	db 72
	dw TEDDIURSA
	db MIRACLEBERRY
	db -1 ; end

	next_list_item ; COOLTRAINERM (23)
	db "CRYAL@", TRAINERTYPE_ITEM_MOVES
	db 78
	dw BAYLEEF
	db LEFTOVERS
	dw RAZOR_LEAF, BODY_SLAM, SYNTHESIS, GIGA_DRAIN
	db 77
	dw QUILAVA
	db BITTER_BERRY
	dw SMOKESCREEN, SWIFT, FLAME_WHEEL, THRASH
	db 78
	dw CROCONAW
	db GOLD_BERRY
	dw SCARY_FACE, WATERFALL, SLASH, BITE
	db 78
	dw MURKROW
	db MIRACLEBERRY
	dw NIGHT_SHADE, MIRROR_COAT, FEINT_ATTACK, TAUNT
	db 77
	dw CRABOMINABLE
	db BLACKBELT
	dw ICE_HAMMER, DYNAMICPUNCH, ROCK_SMASH, CLOSE_COMBAT
	db 78
	dw SEALEO
	db NEVERMELTICE
	dw AURORA_BEAM, REST, SNORE, BODY_SLAM
	db -1 ; end

	next_list_item ; COOLTRAINERM (24)
	db "DAZON@", TRAINERTYPE_ITEM
	db 84
	dw BELLOSSOM
	db MIRACLE_SEED
	db 83
	dw RHYDON
	db MIRACLEBERRY
	db 84
	dw EMPOLEON
	db GOLD_BERRY
	db 84
	dw WEEZING
	db LEFTOVERS
	db 83
	dw MAGNETON
	db MAGNET
	db 84
	dw ALAKAZAM
	db TWISTEDSPOON
	db -1 ; end

	next_list_item ; COOLTRAINERM (25)
	db "CRUIK@", TRAINERTYPE_ITEM
	db 94
	dw ENTEI
	db BITTER_BERRY
	db 93
	dw GOLEM
	db GOLD_BERRY
	db 94
	dw MUK
	db POISON_BARB
	db 94
	dw FLAREON
	db FOCUS_BAND
	db 93
	dw MANECTRIC
	db MAGNET
	db 94
	dw TENTACRUEL
	db MYSTIC_WATER
	db -1 ; end

	next_list_item ; COOLTRAINERM (26)
	db "VINCE@", TRAINERTYPE_NORMAL
	db 80
	dw TORTERRA
	db 80
	dw INFERNAPE
	db 80
	dw EMPOLEON
	db -1 ; end

	next_list_item ; COOLTRAINERM (27)
	db "JULES@", TRAINERTYPE_NORMAL
	db 86
	dw CHANDELURE
	db 86
	dw STARMIE
	db -1 ; end

	end_list_items

CooltrainerFGroup:
	next_list_item ; COOLTRAINERF (1)
	db "GWEN@", TRAINERTYPE_NORMAL
	db 26
	dw EEVEE
	db 22
	dw FLAREON
	db 22
	dw VAPOREON
	db 22
	dw JOLTEON
	db -1 ; end

	next_list_item ; COOLTRAINERF (2)
	db "LOIS@", TRAINERTYPE_MOVES
	db 49
	dw JUMPLUFF
	dw SYNTHESIS, POISONPOWDER, MEGA_DRAIN, LEECH_SEED
	db 49
	dw NINETALES
	dw FLAMETHROWER, QUICK_ATTACK, CONFUSE_RAY, SAFEGUARD
	db -1 ; end

	next_list_item ; COOLTRAINERF (3)
	db "FRAN@", TRAINERTYPE_NORMAL
	db 53
	dw KINGDRA
	db -1 ; end

	next_list_item ; COOLTRAINERF (4)
	db "LOLA@", TRAINERTYPE_NORMAL
	db 50
	dw SEADRA
	db 52
	dw DRAGONAIR
	db -1 ; end

	next_list_item ; COOLTRAINERF (5)
	db "KATE@", TRAINERTYPE_NORMAL
	db 31
	dw SHELLDER
	db 33
	dw CLOYSTER
	db -1 ; end

	next_list_item ; COOLTRAINERF (6)
	db "IRENE@", TRAINERTYPE_NORMAL
	db 31
	dw GOLDEEN
	db 33
	dw SEAKING
	db -1 ; end

	next_list_item ; COOLTRAINERF (7)
	db "KELLY@", TRAINERTYPE_NORMAL
	db 54
	dw AZUMARILL
	db 52
	dw BLASTOISE
	db 52
	dw BLASTOISE
	db -1 ; end

	next_list_item ; COOLTRAINERF (8)
	db "JOYCE@", TRAINERTYPE_MOVES
	db 74
	dw RAICHU
	dw QUICK_ATTACK, DOUBLE_TEAM, THUNDERBOLT, THUNDER_WAVE
	db 72
	dw BLASTOISE
	dw BITE, ICE_BEAM, SURF, RAIN_DANCE
	db -1 ; end

	next_list_item ; COOLTRAINERF (9)
	db "BETH@", TRAINERTYPE_MOVES
	db 75
	dw RAPIDASH
	dw SLEEP_TALK, FIRE_BLAST, HEADBUTT, AGILITY
	db -1 ; end

	next_list_item ; COOLTRAINERF (10)
	db "REENA@", TRAINERTYPE_NORMAL
	db 72
	dw STARMIE
	db 74
	dw NIDOQUEEN
	db 72
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (11)
	db "MEGAN@", TRAINERTYPE_NORMAL
	db 75
	dw BULBASAUR
	db 75
	dw IVYSAUR
	db 75
	dw VENUSAUR
	db -1 ; end

	next_list_item ; COOLTRAINERF (12)
	db "BETH@", TRAINERTYPE_ITEM_MOVES
	db 80
	dw RAPIDASH
	db FOCUS_BAND
	dw SLEEP_TALK, FIRE_BLAST, HEADBUTT, AGILITY
	db -1 ; end

	next_list_item ; COOLTRAINERF (13)
	db "CAROL@", TRAINERTYPE_NORMAL
	db 54
	dw ELECTRODE
	db 54
	dw STARMIE
	db 54
	dw NINETALES
	db -1 ; end

	next_list_item ; COOLTRAINERF (14)
	db "QUINN@", TRAINERTYPE_NORMAL
	db 70
	dw VENUSAUR
	db 70
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (15)
	db "EMMA@", TRAINERTYPE_NORMAL
	db 28
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; COOLTRAINERF (16)
	db "CYBIL@", TRAINERTYPE_MOVES
	db 52
	dw BUTTERFREE
	dw PSYCHIC_M, SLEEP_POWDER, WHIRLWIND, GUST
	db 52
	dw BELLOSSOM
	dw SUNNY_DAY, SLEEP_POWDER, SLUDGE_BOMB, SOLARBEAM
	db -1 ; end

	next_list_item ; COOLTRAINERF (17)
	db "JENN@", TRAINERTYPE_NORMAL
	db 24
	dw STARYU
	db 26
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (18)
	db "REENA@", TRAINERTYPE_ITEM_MOVES
	db 78
	dw STARMIE
	db NO_ITEM
	dw DOUBLE_TEAM, PSYCHIC_M, SURF, THUNDER
	db 79
	dw NIDOQUEEN
	db PINK_BOW
	dw EARTHQUAKE, SLUDGE_BOMB, TOXIC, BODY_SLAM
	db 78
	dw STARMIE
	db NO_ITEM
	dw BLIZZARD, PSYCHIC_M, WATERFALL, RECOVER
	db -1 ; end

	next_list_item ; COOLTRAINERF (19)
	db "CARA@", TRAINERTYPE_MOVES
	db 52
	dw HORSEA
	dw SMOKESCREEN, HYDRO_PUMP, WHIRLPOOL, DRAGONBREATH
	db 52
	dw SEADRA
	dw SMOKESCREEN, HYDRO_PUMP, WHIRLPOOL, DRAGONBREATH
	db 54
	dw KINGDRA
	dw SMOKESCREEN, AGILITY, WATERFALL, DRAGONBREATH
	db -1 ; end

	next_list_item ; COOLTRAINERF (20)
	db "RATEIS@", TRAINERTYPE_NORMAL
	db 67
	dw CUTIEFLY
	db 66
	dw ZUBAT
	db 67
	dw SWINUB
	db 67
	dw SENTRET
	db 66
	dw PINECO
	db 67
	dw TAILLOW
	db -1 ; end

	next_list_item ; COOLTRAINERF (21)
	db "ROSNO@", TRAINERTYPE_ITEM
	db 77
	dw SKIPLOOM
	db MIRACLE_SEED
	db 76
	dw ODDISH
	db LEFTOVERS
	db 77
	dw BELLOSSOM
	db GOLD_BERRY
	db 77
	dw CHIKORITA
	db GOLD_BERRY
	db 76
	dw LOMBRE
	db GOLD_BERRY
	db 77
	dw BUDEW
	db MYSTERYBERRY
	db -1 ; end

	next_list_item ; COOLTRAINERF (22)
	db "GILLY@", TRAINERTYPE_ITEM
	db 86
	dw MEGANIUM
	db QUICK_CLAW
	db 85
	dw NINETALES
	db GOLD_BERRY
	db 86
	dw WEEZING
	db MIRACLEBERRY
	db 86
	dw SANDSLASH
	db BRIGHTPOWDER
	db 85
	dw GARDEVOIR
	db MYSTERYBERRY
	db 86
	dw UMBREON
	db MIRACLEBERRY
	db -1 ; end

	next_list_item ; COOLTRAINERF (23)
	db "TYNAN@", TRAINERTYPE_ITEM
	db 99
	dw HERACROSS
	db GOLD_BERRY
	db 98
	dw WOBBUFFET
	db GOLD_BERRY
	db 99
	dw MILOTIC
	db LEFTOVERS
	db 99
	dw DODRIO
	db SCOPE_LENS
	db 98
	dw LEAFEON
	db BRIGHTPOWDER
	db 99
	dw SABLEYE
	db MIRACLEBERRY
	db -1 ; end

	next_list_item ; COOLTRAINERF (24)
	db "CORA@", TRAINERTYPE_NORMAL
	db 77
	dw BRONZONG
	db -1 ; end

	next_list_item ; COOLTRAINERF (25)
	db "CATHY@", TRAINERTYPE_NORMAL
	db 77
	dw SIMISAGE
	db -1 ; end

	next_list_item ; COOLTRAINERF (26)
	db "KEIRA@", TRAINERTYPE_NORMAL
	db 85
	dw AGGRON
	db 85
	dw MANECTRIC
	db -1 ; end

	end_list_items

BeautyGroup:
	next_list_item ; BEAUTY (1)
	db "VICTORIA@", TRAINERTYPE_NORMAL
	db 20
	dw FURRET
	db 23
	dw FURRET
	db 26
	dw FURRET
	db -1 ; end

	next_list_item ; BEAUTY (2)
	db "SAMANTHA@", TRAINERTYPE_MOVES
	db 26
	dw MEOWTH
	dw SCRATCH, GROWL, BITE, PAY_DAY
	db 26
	dw MEOWTH
	dw SCRATCH, GROWL, BITE, SLASH
	db -1 ; end

	next_list_item ; BEAUTY (3)
	db "JULIE@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (4)
	db "JACLYN@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (5)
	db "BRENDA@", TRAINERTYPE_NORMAL
	db 16
	dw FURRET
	db -1 ; end

	next_list_item ; BEAUTY (6)
	db "CASSIE@", TRAINERTYPE_NORMAL
	db 53
	dw VILEPLUME
	db 56
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BEAUTY (7)
	db "CAROLINE@", TRAINERTYPE_NORMAL
	db 30
	dw MARILL
	db 32
	dw SEEL
	db 30
	dw MARILL
	db -1 ; end

	next_list_item ; BEAUTY (8)
	db "CARLENE@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (9)
	db "JESSICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (10)
	db "RACHAEL@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (11)
	db "ANGELICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (12)
	db "KENDRA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (13)
	db "VERONICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (14)
	db "JULIA@", TRAINERTYPE_NORMAL
	db 59
	dw PARASECT
	db 59
	dw EXEGGUTOR
	db 59
	dw PARASECT
	db -1 ; end

	next_list_item ; BEAUTY (15)
	db "THERESA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (16)
	db "VALERIE@", TRAINERTYPE_MOVES
	db 33
	dw SKIPLOOM
	dw SYNTHESIS, SLEEP_POWDER, TACKLE, LEECH_SEED
	db 33
	dw JUMPLUFF
	dw SYNTHESIS, SLEEP_POWDER, TACKLE, LEECH_SEED
	db -1 ; end

	next_list_item ; BEAUTY (17)
	db "OLIVIA@", TRAINERTYPE_NORMAL
	db 34
	dw CORSOLA
	db -1 ; end

	next_list_item ; BEAUTY (18)
	db "ZOILA@", TRAINERTYPE_NORMAL
	db 59
	dw MARILL
	db 58
	dw ZUBAT
	db 59
	dw REMORAID
	db 59
	dw SLUGMA
	db 58
	dw LEDYBA
	db 59
	dw SKITTY
	db -1 ; end

	next_list_item ; BEAUTY (19)
	db "BRENA@", TRAINERTYPE_NORMAL
	db 68
	dw HOOTHOOT
	db 68
	dw LEDYBA
	db 69
	dw WINGULL
	db 69
	dw SWABLU
	db 68
	dw NATU
	db 69
	dw DELIBIRD
	db -1 ; end

	next_list_item ; BEAUTY (20)
	db "RENE@", TRAINERTYPE_ITEM
	db 79
	dw FURRET
	db MINT_BERRY
	db 78
	dw DUNSPARCE
	db POLKADOT_BOW
	db 79
	dw LINOONE
	db GOLD_BERRY
	db 79
	dw WIGGLYTUFF
	db GOLD_BERRY
	db 78
	dw SIMISAGE
	db FOCUS_BAND
	db 79
	dw LEAFEON
	db GOLD_BERRY
	db -1 ; end

	end_list_items

PokemaniacGroup:
	next_list_item ; POKEMANIAC (1)
	db "LARRY@", TRAINERTYPE_NORMAL
	db 17
	dw SLOWPOKE
	db -1 ; end

	next_list_item ; POKEMANIAC (2)
	db "ANDREW@", TRAINERTYPE_NORMAL
	db 24
	dw MAROWAK
	db 24
	dw MAROWAK
	db -1 ; end

	next_list_item ; POKEMANIAC (3)
	db "CALVIN@", TRAINERTYPE_NORMAL
	db 26
	dw KANGASKHAN
	db -1 ; end

	next_list_item ; POKEMANIAC (4)
	db "SHANE@", TRAINERTYPE_NORMAL
	db 45
	dw NIDOQUEEN
	db 45
	dw NIDOKING
	db -1 ; end

	next_list_item ; POKEMANIAC (5)
	db "BEN@", TRAINERTYPE_NORMAL
	db 48
	dw SLOWBRO
	db -1 ; end

	next_list_item ; POKEMANIAC (6)
	db "BRENT@", TRAINERTYPE_NORMAL
	db 48
	dw LICKITUNG
	db -1 ; end

	next_list_item ; POKEMANIAC (7)
	db "RON@", TRAINERTYPE_NORMAL
	db 48
	dw NIDOKING
	db -1 ; end

	next_list_item ; POKEMANIAC (8)
	db "ETHAN@", TRAINERTYPE_NORMAL
	db 55
	dw RHYDON
	db 55
	dw RHYDON
	db -1 ; end

	next_list_item ; POKEMANIAC (9)
	db "BRENT@", TRAINERTYPE_NORMAL
	db 53
	dw KANGASKHAN
	db -1 ; end

	next_list_item ; POKEMANIAC (10)
	db "BRENT@", TRAINERTYPE_MOVES
	db 69
	dw PORYGON_Z
	dw RECOVER, PSYCHIC_M, CONVERSION2, TRI_ATTACK
	db -1 ; end

	next_list_item ; POKEMANIAC (11)
	db "ISSAC@", TRAINERTYPE_MOVES
	db 25
	dw LICKITUNG
	dw WRAP, STOMP, CUT, LICK
	db -1 ; end

	next_list_item ; POKEMANIAC (12)
	db "DONALD@", TRAINERTYPE_NORMAL
	db 24
	dw SLOWPOKE
	db 24
	dw SLOWPOKE
	db -1 ; end

	next_list_item ; POKEMANIAC (13)
	db "ZACH@", TRAINERTYPE_NORMAL
	db 53
	dw RHYDON
	db -1 ; end

	next_list_item ; POKEMANIAC (14)
	db "BRENT@", TRAINERTYPE_MOVES
	db 79
	dw BLISSEY
	dw ICE_BEAM, PROTECT, TOXIC, SOFTBOILED
	db -1 ; end

	next_list_item ; POKEMANIAC (15)
	db "MILLER@", TRAINERTYPE_NORMAL
	db 45
	dw NIDOKING
	db 45
	dw NIDOQUEEN
	db -1 ; end

	end_list_items

GruntMGroup:
	next_list_item ; GRUNTM (2)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 16
	dw RATTATA
	db 18
	dw ZUBAT
	db 18
	dw ZUBAT
	db -1 ; end

	next_list_item ; GRUNTM (3)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 50
	dw RATICATE
	db 50
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (4)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 49
	dw GRIMER
	db 49
	dw MUK
	db 49
	dw MUK
	db -1 ; end

	next_list_item ; GRUNTM (5)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 47
	dw RATTATA
	db 47
	dw RATTATA
	db 49
	dw RATICATE
	db 49
	dw RATICATE
	db 49
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (6)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 50
	dw GOLBAT
	db 50
	dw CROBAT
	db -1 ; end

	next_list_item ; GRUNTM (7)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 48
	dw WEEZING
	db 48
	dw MUK
	db 48
	dw GOLBAT
	db 48
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (8)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 51
	dw WEEZING
	db -1 ; end

	next_list_item ; GRUNTM (9)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 48
	dw RATICATE
	db 50
	dw WEEZING
	db -1 ; end

	next_list_item ; GRUNTM (10)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 48
	dw GOLBAT
	db 50
	dw CROBAT
	db 48
	dw MUK
	db -1 ; end

	next_list_item ; GRUNTM (11)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 48
	dw MUK
	db 48
	dw WEEZING
	db 50
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (13)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 51
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (14)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 50
	dw RATICATE
	db 50
	dw GOLBAT
	db -1 ; end

	next_list_item ; GRUNTM (15)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 50
	dw MUK
	db 47
	dw WEEZING
	db -1 ; end

	next_list_item ; GRUNTM (16)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 45
	dw RATICATE
	db 45
	dw RATICATE
	db 45
	dw RATICATE
	db 45
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (17)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 47
	dw GOLBAT
	db -1 ; end

	next_list_item ; GRUNTM (18)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 45
	dw RATICATE
	db 45
	dw GOLBAT
	db 45
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (19)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 46
	dw VENOMOTH
	db 46
	dw VENOMOTH
	db -1 ; end

	next_list_item ; GRUNTM (20)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 45
	dw HYPNO
	db 47
	dw GOLBAT
	db -1 ; end

	next_list_item ; GRUNTM (21)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 45
	dw GOLBAT
	db 46
	dw MUK
	db 47
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (24)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 50
	dw WEEZING
	db 50
	dw WEEZING
	db -1 ; end

	next_list_item ; GRUNTM (25)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 50
	dw WEEZING
	db 50
	dw MUK
	db -1 ; end

	next_list_item ; GRUNTM (26)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 15
	dw RATTATA
	db 15
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (28)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 48
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (29)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 18
	dw RATTATA
	db 18
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (30)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 25
	dw GOLBAT
	db 25
	dw GOLBAT
	db 30
	dw ARBOK
	db -1 ; end

	next_list_item ; GRUNTM (31)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 72
	dw CROBAT
	db -1 ; end

	next_list_item ; GRUNTM (32)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 70
	dw RATICATE
	db 70
	dw MURKROW
	db 70
	dw SKUNTANK
	db -1 ; end

	end_list_items

GentlemanGroup:
	next_list_item ; GENTLEMAN (1)
	db "PRESTON@", TRAINERTYPE_NORMAL
	db 35
	dw GROWLITHE
	db 35
	dw ARCANINE
	db -1 ; end

	next_list_item ; GENTLEMAN (2)
	db "EDWARD@", TRAINERTYPE_NORMAL
	db 56
	dw PERSIAN
	db -1 ; end

	next_list_item ; GENTLEMAN (3)
	db "GREGORY@", TRAINERTYPE_NORMAL
	db 57
	dw RAICHU
	db 55
	dw AMPHAROS
	db -1 ; end

	next_list_item ; GENTLEMAN (4)
	db "VIRGIL@", TRAINERTYPE_NORMAL
	db 20
	dw PONYTA
	db -1 ; end

	next_list_item ; GENTLEMAN (5)
	db "ALFRED@", TRAINERTYPE_NORMAL
	db 36
	dw NOCTOWL
	db -1 ; end

	end_list_items

SkierGroup:
	next_list_item ; SKIER (1)
	db "ROXANNE@", TRAINERTYPE_NORMAL
	db 50
	dw JYNX
	db -1 ; end

	next_list_item ; SKIER (2)
	db "CLARISSA@", TRAINERTYPE_NORMAL
	db 50
	dw DEWGONG
	db -1 ; end

	next_list_item ; SKIER (3)
	db "CADY@", TRAINERTYPE_NORMAL
	db 90
	dw DELIBIRD
	db -1 ; en

	next_list_item ; SKIER (4)
	db "KIMERY@", TRAINERTYPE_ITEM
	db 76
	dw MACHOP
	db GOLD_BERRY
	db 75
	dw STUNKY
	db GOLD_BERRY
	db 76
	dw SNUBBULL
	db BITTER_BERRY
	db 76
	dw GOLDEEN
	db MYSTIC_WATER
	db 75
	dw DUCKLETT
	db LEFTOVERS
	db 76
	dw BAGON
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; SKIER (5)
	db "VIUM@", TRAINERTYPE_ITEM
	db 80
	dw PELIPPER
	db BRIGHTPOWDER
	db 79
	dw LAIRON
	db GOLD_BERRY
	db 80
	dw DUSCLOPS
	db SPELL_TAG
	db 80
	dw FORRETRESS
	db LEFTOVERS
	db 79
	dw SANDSLASH
	db QUICK_CLAW
	db 80
	dw SKARMORY
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; SKIER (6)
	db "ZALIA@", TRAINERTYPE_ITEM
	db 88
	dw CELEBI
	db BRIGHTPOWDER
	db 87
	dw ABSOL
	db SCOPE_LENS
	db 88
	dw FLYGON
	db SOFT_SAND
	db 88
	dw KIRLIA
	db MIRACLEBERRY
	db 87
	dw MIGHTYENA
	db GOLD_BERRY
	db 88
	dw DUSCLOPS
	db MYSTERYBERRY
	db -1 ; end

	end_list_items

TeacherGroup:
	next_list_item ; TEACHER (1)
	db "COLETTE@", TRAINERTYPE_NORMAL
	db 65
	dw CLEFABLE
	db -1 ; end

	next_list_item ; TEACHER (2)
	db "HILLARY@", TRAINERTYPE_NORMAL
	db 62
	dw AIPOM
	db 64
	dw MAROWAK
	db -1 ; end

	next_list_item ; TEACHER (3)
	db "SHIRLEY@", TRAINERTYPE_NORMAL
	db 56
	dw WIGGLYTUFF
	db -1 ; end

	next_list_item ; TEACHER (4)
	db "SECORT@", TRAINERTYPE_NORMAL
	db 59
	dw TOGEPI
	db 58
	dw HOPPIP
	db 59
	dw SMEARGLE
	db 59
	dw TAILLOW
	db 58
	dw TRAPINCH
	db 59
	dw LEDYBA
	db -1 ; end

	next_list_item ; TEACHER (5)
	db "FEREN@", TRAINERTYPE_NORMAL
	db 64
	dw TENTACOOL
	db 63
	dw LOMBRE
	db 64
	dw STARYU
	db 64
	dw SHELLDER
	db 63
	dw CORSOLA
	db 64
	dw WAILMER
	db -1 ; end

	next_list_item ; TEACHER (6)
	db "ISETTE@", TRAINERTYPE_NORMAL
	db 68
	dw CHATOT
	db 67
	dw PIKACHU
	db 68
	dw PANSAGE
	db 68
	dw STUNKY
	db 67
	dw POOCHYENA
	db 68
	dw SNUBBULL
	db -1 ; end

	next_list_item ; TEACHER (7)
	db "TASH@", TRAINERTYPE_ITEM
	db 75
	dw DUNSPARCE
	db LEFTOVERS
	db 74
	dw GEODUDE
	db HARD_STONE
	db 75
	dw BRONZOR
	db MINT_BERRY
	db 75
	dw ARON
	db SCOPE_LENS
	db 74
	dw SANDSHREW
	db PSNCUREBERRY
	db 75
	dw LILEEP
	db BITTER_BERRY
	db -1 ; end

	next_list_item ; TEACHER (8)
	db "AMEIL@", TRAINERTYPE_ITEM
	db 80
	dw SUNFLORA
	db GOLD_BERRY
	db 79
	dw QUAGSIRE
	db GOLD_BERRY
	db 80
	dw GLIGAR
	db GOLD_BERRY
	db 80
	dw SNEASEL
	db MYSTERYBERRY
	db 79
	dw QWILFISH
	db MYSTIC_WATER
	db 80
	dw NOCTOWL
	db SHARP_BEAK
	db -1 ; end

	next_list_item ; TEACHER (9)
	db "LISOT@", TRAINERTYPE_ITEM
	db 86
	dw KINGDRA
	db SCOPE_LENS
	db 85
	dw MUK
	db FOCUS_BAND
	db 86
	dw HERACROSS
	db GOLD_BERRY
	db 86
	dw TORTERRA
	db BITTER_BERRY
	db 85
	dw ALAKAZAM
	db TWISTEDSPOON
	db 86
	dw SIMISAGE
	db MIRACLE_SEED
	db -1 ; end

	next_list_item ; TEACHER (10)
	db "JODIN@", TRAINERTYPE_ITEM
	db 89
	dw SWAMPERT
	db MIRACLEBERRY
	db 88
	dw DONPHAN
	db QUICK_CLAW
	db 89
	dw MILTANK
	db LEFTOVERS
	db 89
	dw RAICHU
	db PRZCUREBERRY
	db 88
	dw SABLEYE
	db SCOPE_LENS
	db 89
	dw PILOSWINE
	db FOCUS_BAND
	db -1 ; end

	next_list_item ; TEACHER (11)
	db "MASSI@", TRAINERTYPE_ITEM
	db 98
	dw LATIOS
	db TWISTEDSPOON
	db 97
	dw KINGDRA
	db MINT_BERRY
	db 98
	dw FLYGON
	db SOFT_SAND
	db 98
	dw ALTARIA
	db DRAGON_FANG
	db 97
	dw SALAMENCE
	db GOLD_BERRY
	db 98
	dw SCEPTILE
	db SCOPE_LENS
	db -1 ; end

	end_list_items

BugCatcherGroup:
	next_list_item ; BUG_CATCHER (1)
	db "DON@", TRAINERTYPE_NORMAL
	db 5
	dw CATERPIE
	db 5
	dw CATERPIE
	db -1 ; end

	next_list_item ; BUG_CATCHER (2)
	db "ROB@", TRAINERTYPE_NORMAL
	db 70
	dw BEEDRILL
	db 70
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BUG_CATCHER (3)
	db "ED@", TRAINERTYPE_NORMAL
	db 69
	dw BEEDRILL
	db 69
	dw BEEDRILL
	db 69
	dw BEEDRILL
	db -1 ; end

	next_list_item ; BUG_CATCHER (4)
	db "WADE@", TRAINERTYPE_NORMAL
	db 6
	dw CATERPIE
	db 6
	dw CATERPIE
	db 7
	dw WEEDLE
	db 6
	dw CATERPIE
	db -1 ; end

	next_list_item ; BUG_CATCHER (5)
	db "BENNY@", TRAINERTYPE_NORMAL
	db 17
	dw WEEDLE
	db 19
	dw KAKUNA
	db 21
	dw BEEDRILL
	db -1 ; end

	next_list_item ; BUG_CATCHER (6)
	db "AL@", TRAINERTYPE_NORMAL
	db 20
	dw BUTTERFREE
	db 20
	dw BEEDRILL
	db -1 ; end

	next_list_item ; BUG_CATCHER (7)
	db "JOSH@", TRAINERTYPE_NORMAL
	db 22
	dw PARAS
	db -1 ; end

	next_list_item ; BUG_CATCHER (8)
	db "ARNIE@", TRAINERTYPE_NORMAL
	db 26
	dw VENONAT
	db -1 ; end

	next_list_item ; BUG_CATCHER (9)
	db "KEN@", TRAINERTYPE_NORMAL
	db 53
	dw ARIADOS
	db 55
	dw PINSIR
	db -1 ; end

	next_list_item ; BUG_CATCHER (10)
	db "WADE@", TRAINERTYPE_NORMAL
	db 23
	dw BUTTERFREE
	db 23
	dw BUTTERFREE
	db 24
	dw BEEDRILL
	db 23
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BUG_CATCHER (11)
	db "WADE@", TRAINERTYPE_NORMAL
	db 44
	dw BUTTERFREE
	db 44
	dw BUTTERFREE
	db 45
	dw BEEDRILL
	db 44
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BUG_CATCHER (12)
	db "DOUG@", TRAINERTYPE_NORMAL
	db 71
	dw ARIADOS
	db -1 ; end

	next_list_item ; BUG_CATCHER (13)
	db "ARNIE@", TRAINERTYPE_NORMAL
	db 48
	dw VENOMOTH
	db -1 ; end

	next_list_item ; BUG_CATCHER (14)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 54
	dw VENOMOTH
	dw SLUDGE_BOMB, SLEEP_POWDER, PSYCHIC_M, DOUBLE_TEAM
	db -1 ; end

	next_list_item ; BUG_CATCHER (15)
	db "WADE@", TRAINERTYPE_MOVES
	db 51
	dw BUTTERFREE
	dw PSYCHIC_M, SLEEP_POWDER, GIGA_DRAIN, WHIRLWIND
	db 51
	dw BUTTERFREE
	dw PSYCHIC_M, SLEEP_POWDER, GIGA_DRAIN, WHIRLWIND
	db 52
	dw BEEDRILL
	dw RETURN, AGILITY, TWINEEDLE, SLUDGE_BOMB
	db 51
	dw BUTTERFREE
	dw PSYCHIC_M, SLEEP_POWDER, GIGA_DRAIN, WHIRLWIND
	db -1 ; end

	next_list_item ; BUG_CATCHER (16)
	db "WADE@", TRAINERTYPE_MOVES
	db 75
	dw BUTTERFREE
	dw PSYCHIC_M, SLEEP_POWDER, GIGA_DRAIN, WHIRLWIND
	db 75
	dw BUTTERFREE
	dw PSYCHIC_M, SLEEP_POWDER, GIGA_DRAIN, WHIRLWIND
	db 76
	dw BEEDRILL
	dw RETURN, AGILITY, TWINEEDLE, SLUDGE_BOMB
	db 79
	dw BUTTERFREE
	dw PSYCHIC_M, SLEEP_POWDER, GIGA_DRAIN, WHIRLWIND
	db -1 ; end

	next_list_item ; BUG_CATCHER (17)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 70
	dw VENOMOTH
	dw SLUDGE_BOMB, SLEEP_POWDER, PSYCHIC_M, DOUBLE_TEAM
	db -1 ; end

	next_list_item ; BUG_CATCHER (18)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 80
	dw VENOMOTH
	dw SLUDGE_BOMB, SLEEP_POWDER, PSYCHIC_M, DOUBLE_TEAM
	db -1 ; end

	next_list_item ; BUG_CATCHER (19)
	db "WAYNE@", TRAINERTYPE_NORMAL
	db 22
	dw LEDIAN
	db 24
	dw PARAS
	db -1 ; end

	next_list_item ; BUG_CATCHER (20)
	db "DANE@", TRAINERTYPE_NORMAL
	db 68
	dw BEEDRILL
	db 70
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BUG_CATCHER (21)
	db "DION@", TRAINERTYPE_NORMAL
	db 71
	dw ARIADOS
	db -1 ; end

	next_list_item ; BUG_CATCHER (22)
	db "STACEY@", TRAINERTYPE_NORMAL
	db 66
	dw RIBOMBEE
	db 68
	dw LEDIAN
	db 70
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BUG_CATCHER (23)
	db "ELLIS@", TRAINERTYPE_NORMAL
	db 51
	dw WEEDLE
	db 61
	dw KAKUNA
	db 71
	dw BEEDRILL
	db -1 ; end

	next_list_item ; BUG_CATCHER (24)
	db "ABNER@", TRAINERTYPE_NORMAL
	db 70
	dw BUTTERFREE
	db 70
	dw BEEDRILL
	db 70
	dw PIKACHU
	db -1 ; end

	end_list_items

FisherGroup:
	next_list_item ; FISHER (1)
	db "JUSTIN@", TRAINERTYPE_NORMAL
	db 15
	dw MAGIKARP
	db 15
	dw MAGIKARP
	db 19
	dw MAGIKARP
	db 15
	dw MAGIKARP
	db -1 ; end

	next_list_item ; FISHER (2)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 16
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (3)
	db "ARNOLD@", TRAINERTYPE_NORMAL
	db 71
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; FISHER (4)
	db "KYLE@", TRAINERTYPE_NORMAL
	db 62
	dw SEAKING
	db 65
	dw POLITOED
	db 65
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (5)
	db "HENRY@", TRAINERTYPE_NORMAL
	db 14
	dw POLIWAG
	db 14
	dw POLIWAG
	db -1 ; end

	next_list_item ; FISHER (6)
	db "MARVIN@", TRAINERTYPE_NORMAL
	db 41
	dw GYARADOS
	db 41
	dw GYARADOS
	db 46
	dw GYARADOS
	db 46
	dw GYARADOS
	db -1 ; end

	next_list_item ; FISHER (7)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 46
	dw QWILFISH
	db -1 ; end

	next_list_item ; FISHER (8)
	db "ANDRE@", TRAINERTYPE_NORMAL
	db 50
	dw GYARADOS
	db -1 ; end

	next_list_item ; FISHER (9)
	db "RAYMOND@", TRAINERTYPE_NORMAL
	db 50
	dw MAGIKARP
	db 50
	dw MAGIKARP
	db 50
	dw MAGIKARP
	db 50
	dw MAGIKARP
	db -1 ; end

	next_list_item ; FISHER (10)
	db "WILTON@", TRAINERTYPE_NORMAL
	db 50
	dw SEAKING
	db 50
	dw SEAKING
	db 52
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (11)
	db "EDGAR@", TRAINERTYPE_NORMAL
	db 52
	dw OCTILLERY
	db 52
	dw OCTILLERY
	db -1 ; end

	next_list_item ; FISHER (12)
	db "JONAH@", TRAINERTYPE_NORMAL
	db 50
	dw SHELLDER
	db 54
	dw OCTILLERY
	db 50
	dw REMORAID
	db 54
	dw CLOYSTER
	db -1 ; end

	next_list_item ; FISHER (13)
	db "MARTIN@", TRAINERTYPE_NORMAL
	db 65
	dw OCTILLERY
	db 65
	dw OCTILLERY
	db -1 ; end

	next_list_item ; FISHER (14)
	db "STEPHEN@", TRAINERTYPE_NORMAL
	db 90
	dw MAGIKARP
	db 90
	dw MAGIKARP
	db 65
	dw QWILFISH
	db 65
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; FISHER (15)
	db "BARNEY@", TRAINERTYPE_NORMAL
	db 64
	dw GYARADOS
	db 64
	dw GYARADOS
	db 64
	dw GYARADOS
	db -1 ; end

	next_list_item ; FISHER (16)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 30
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (17)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 46
	dw QWILFISH
	db 48
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (18)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 53
	dw QWILFISH
	db -1 ; end

	next_list_item ; FISHER (19)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 69
	dw SEAKING
	db 69
	dw SEAKING
	db 69
	dw QWILFISH
	db -1 ; end

	next_list_item ; FISHER (20)
	db "WILTON@", TRAINERTYPE_NORMAL
	db 67
	dw SEAKING
	db 67
	dw SEAKING
	db 69
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (21)
	db "SCOTT@", TRAINERTYPE_NORMAL
	db 70
	dw QWILFISH
	db 70
	dw QWILFISH
	db 74
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (22)
	db "WILTON@", TRAINERTYPE_MOVES
	db 75
	dw SEAKING
	dw HORN_DRILL, ICE_BEAM, WATERFALL, AGILITY
	db 75
	dw SEAKING
	dw RETURN, WATERFALL, FLAIL, ENDURE
	db 79
	dw OCTILLERY
	dw PSYBEAM, SURF, ICE_BEAM, HYPER_BEAM
	db -1 ; end

	next_list_item ; FISHER (23)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 67
	dw QWILFISH
	db 69
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (24)
	db "RALPH@", TRAINERTYPE_MOVES
	db 75
	dw QWILFISH
	dw TOXIC, MINIMIZE, SURF, SLUDGE_BOMB
	db 79
	dw SEAKING
	dw ENDURE, FLAIL, HORN_DRILL, WATERFALL
	db -1 ; end

	next_list_item ; FISHER (25)
	db "TULLY@", TRAINERTYPE_MOVES
	db 78
	dw SEAKING
	dw ICY_WIND, RAIN_DANCE, WATERFALL, RETURN
	db 78
	dw SEAKING
	dw BLIZZARD, RAIN_DANCE, SURF, HORN_DRILL
	db 78
	dw QWILFISH
	dw ROLLOUT, HYDRO_PUMP, SLUDGE_BOMB, RETURN
	db -1 ; end

	end_list_items

SwimmerMGroup:
	next_list_item ; SWIMMERM (1)
	db "HAROLD@", TRAINERTYPE_NORMAL
	db 72
	dw OCTILLERY
	db 70
	dw KINGDRA
	db -1 ; end

	next_list_item ; SWIMMERM (2)
	db "SIMON@", TRAINERTYPE_NORMAL
	db 36
	dw TENTACRUEL
	db 36
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; SWIMMERM (3)
	db "RANDALL@", TRAINERTYPE_NORMAL
	db 35
	dw SHELLDER
	db 35
	dw BLASTOISE
	db 35
	dw CLOYSTER
	db -1 ; end

	next_list_item ; SWIMMERM (4)
	db "CHARLIE@", TRAINERTYPE_NORMAL
	db 36
	dw CLOYSTER
	db 34
	dw TENTACOOL
	db 34
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; SWIMMERM (5)
	db "GEORGE@", TRAINERTYPE_NORMAL
	db 32
	dw TENTACOOL
	db 33
	dw TENTACRUEL
	db 32
	dw TENTACOOL
	db 35
	dw STARMIE
	db 33
	dw TENTACRUEL
	db 35
	dw OCTILLERY
	db -1 ; end

	next_list_item ; SWIMMERM (6)
	db "BERKE@", TRAINERTYPE_NORMAL
	db 37
	dw QWILFISH
	db -1 ; end

	next_list_item ; SWIMMERM (7)
	db "KIRK@", TRAINERTYPE_NORMAL
	db 36
	dw GYARADOS
	db 36
	dw GYARADOS
	db -1 ; end

	next_list_item ; SWIMMERM (8)
	db "MATHEW@", TRAINERTYPE_NORMAL
	db 37
	dw KINGLER
	db -1 ; end

	next_list_item ; SWIMMERM (9)
	db "HAL@", TRAINERTYPE_NORMAL
	db 24
	dw SEEL
	db 25
	dw DEWGONG
	db 24
	dw SEEL
	db -1 ; end

	next_list_item ; SWIMMERM (10)
	db "PATON@", TRAINERTYPE_NORMAL
	db 26
	dw PILOSWINE
	db 26
	dw PILOSWINE
	db -1 ; end

	next_list_item ; SWIMMERM (11)
	db "DARYL@", TRAINERTYPE_NORMAL
	db 24
	dw SHELLDER
	db 25
	dw CLOYSTER
	db 24
	dw SHELLDER
	db -1 ; end

	next_list_item ; SWIMMERM (12)
	db "WALTER@", TRAINERTYPE_NORMAL
	db 15
	dw HORSEA
	db 15
	dw HORSEA
	db 20
	dw SEADRA
	db -1 ; end

	next_list_item ; SWIMMERM (13)
	db "TONY@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (14)
	db "JEROME@", TRAINERTYPE_NORMAL
	db 68
	dw KINGDRA
	db 70
	dw TENTACRUEL
	db 72
	dw TENTACRUEL
	db 70
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERM (15)
	db "TUCKER@", TRAINERTYPE_NORMAL
	db 72
	dw SHELLDER
	db 72
	dw CLOYSTER
	db -1 ; end

	next_list_item ; SWIMMERM (16)
	db "RICK@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (17)
	db "CAMERON@", TRAINERTYPE_NORMAL
	db 72
	dw AZUMARILL
	db -1 ; end

	next_list_item ; SWIMMERM (18)
	db "SETH@", TRAINERTYPE_NORMAL
	db 68
	dw QUAGSIRE
	db 68
	dw OCTILLERY
	db 70
	dw QUAGSIRE
	db -1 ; end

	next_list_item ; SWIMMERM (19)
	db "JAMES@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (20)
	db "LEWIS@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (21)
	db "PARKER@", TRAINERTYPE_NORMAL
	db 66
	dw KINGDRA
	db 66
	dw KINGDRA
	db 69
	dw KINGDRA
	db -1 ; end

	next_list_item ; SWIMMERM (22)
	db "DERON@", TRAINERTYPE_ITEM
	db 71
	dw CLAUNCHER
	db GOLD_BERRY
	db 70
	dw PANSAGE
	db GOLD_BERRY
	db 71
	dw WAILMER
	db GOLD_BERRY
	db 71
	dw PHANPY
	db BRIGHTPOWDER
	db 70
	dw ELECTRIKE
	db LEFTOVERS
	db 71
	dw BELDUM
	db TWISTEDSPOON
	db -1 ; end

	next_list_item ; SWIMMERM (23)
	db "GULOR@", TRAINERTYPE_ITEM
	db 79
	dw DUCKLETT
	db MYSTIC_WATER
	db 78
	dw NATU
	db GOLD_BERRY
	db 79
	dw WAILMER
	db GOLD_BERRY
	db 79
	dw METANG
	db METAL_COAT
	db 78
	dw SHELGON
	db MIRACLEBERRY
	db 79
	dw MIGHTYENA
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; SWIMMERM (24)
	db "MENZON@", TRAINERTYPE_ITEM
	db 91
	dw LEAFEON
	db LEFTOVERS
	db 90
	dw SEADRA
	db MYSTIC_WATER
	db 91
	dw QUAGSIRE
	db MYSTIC_WATER
	db 91
	dw NOCTOWL
	db SHARP_BEAK
	db 90
	dw CRABOMINABLE
	db MYSTERYBERRY
	db 91
	dw MISDREAVUS
	db QUICK_CLAW
	db -1 ; end

	end_list_items

SwimmerFGroup:
	next_list_item ; SWIMMERF (1)
	db "ELAINE@", TRAINERTYPE_NORMAL
	db 37
	dw STARMIE
	db -1 ; end

	next_list_item ; SWIMMERF (2)
	db "PAULA@", TRAINERTYPE_NORMAL
	db 36
	dw STARMIE
	db 36
	dw CLOYSTER
	db -1 ; end

	next_list_item ; SWIMMERF (3)
	db "KAYLEE@", TRAINERTYPE_NORMAL
	db 33
	dw GOLDEEN
	db 35
	dw SEAKING
	db 35
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (4)
	db "SUSIE@", TRAINERTYPE_MOVES
	db 34
	dw GOLDUCK
	dw SURF, PSYCH_UP, DISABLE, CONFUSION
	db 36
	dw SEAKING
	dw SURF, TAIL_WHIP, FURY_ATTACK, FLAIL
	db -1 ; end

	next_list_item ; SWIMMERF (5)
	db "DENISE@", TRAINERTYPE_NORMAL
	db 37
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (6)
	db "KARA@", TRAINERTYPE_NORMAL
	db 36
	dw STARYU
	db 36
	dw STARMIE
	db -1 ; end

	next_list_item ; SWIMMERF (7)
	db "WENDY@", TRAINERTYPE_MOVES
	db 36
	dw SEADRA
	dw SURF, TWISTER, LEER, SMOKESCREEN
	db 36
	dw KINGDRA
	dw SURF, DRAGONBREATH, LEER, SMOKESCREEN
	db -1 ; end

	next_list_item ; SWIMMERF (8)
	db "LISA@", TRAINERTYPE_NORMAL
	db 28
	dw JYNX
	db -1 ; end

	next_list_item ; SWIMMERF (9)
	db "JILL@", TRAINERTYPE_NORMAL
	db 28
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (10)
	db "MARY@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (11)
	db "KATIE@", TRAINERTYPE_NORMAL
	db 33
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (12)
	db "DAWN@", TRAINERTYPE_NORMAL
	db 73
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (13)
	db "TARA@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (14)
	db "NICOLE@", TRAINERTYPE_NORMAL
	db 68
	dw AZUMARILL
	db 68
	dw AZUMARILL
	db 71
	dw LAPRAS
	db -1 ; end

	next_list_item ; SWIMMERF (15)
	db "LORI@", TRAINERTYPE_NORMAL
	db 71
	dw STARMIE
	db 71
	dw STARMIE
	db -1 ; end

	next_list_item ; SWIMMERF (16)
	db "JODY@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (17)
	db "NIKKI@", TRAINERTYPE_NORMAL
	db 67
	dw DEWGONG
	db 67
	dw DEWGONG
	db 67
	dw DEWGONG
	db 67
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (18)
	db "DIANA@", TRAINERTYPE_NORMAL
	db 70
	dw GOLDUCK
	db -1 ; end

	next_list_item ; SWIMMERF (19)
	db "BRIANA@", TRAINERTYPE_NORMAL
	db 69
	dw SEAKING
	db 69
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (20)
	db "SANO@", TRAINERTYPE_NORMAL
	db 58
	dw WOOPER
	db 57
	dw SENTRET
	db 58
	dw FEEBAS
	db 58
	dw SPINARAK
	db 57
	dw LOTAD
	db 58
	dw IGGLYBUFF
	db -1 ; end

	next_list_item ; SWIMMERF (21)
	db "KIMBER@", TRAINERTYPE_NORMAL
	db 66
	dw BIDOOF
	db 65
	dw MARSHTOMP
	db 66
	dw BUIZEL
	db 66
	dw JIGGLYPUFF
	db 65
	dw KADABRA
	db 66
	dw SPHEAL
	db -1 ; end

	next_list_item ; SWIMMERF (22)
	db "TIANA@", TRAINERTYPE_ITEM
	db 72
	dw MUDKIP
	db GOLD_BERRY
	db 71
	dw TOTODILE
	db BRIGHTPOWDER
	db 72
	dw PSYDUCK
	db GOLD_BERRY
	db 72
	dw CHINCHOU
	db GOLD_BERRY
	db 71
	dw DUCKLETT
	db MIRACLEBERRY
	db 72
	dw STARYU
	db GOLD_BERRY
	db -1 ; end

	end_list_items

SailorGroup:
	next_list_item ; SAILOR (1)
	db "EUGENE@", TRAINERTYPE_NORMAL
	db 32
	dw POLIWHIRL
	db 32
	dw RATICATE
	db 34
	dw KRABBY
	db -1 ; end

	next_list_item ; SAILOR (2)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 35
	dw POLIWHIRL
	db 35
	dw POLIWRATH
	db -1 ; end

	next_list_item ; SAILOR (3)
	db "TERRELL@", TRAINERTYPE_NORMAL
	db 36
	dw POLITOED
	db -1 ; end

	next_list_item ; SAILOR (4)
	db "KENT@", TRAINERTYPE_MOVES
	db 33
	dw KINGLER
	dw BUBBLEBEAM, GUILLOTINE, STOMP, HARDEN
	db 35
	dw KINGLER
	dw BUBBLEBEAM, GUILLOTINE, STOMP, HARDEN
	db -1 ; end

	next_list_item ; SAILOR (5)
	db "ERNEST@", TRAINERTYPE_NORMAL
	db 34
	dw MACHOKE
	db 34
	dw MACHAMP
	db 34
	dw POLIWRATH
	db -1 ; end

	next_list_item ; SAILOR (6)
	db "JEFF@", TRAINERTYPE_NORMAL
	db 55
	dw RATICATE
	db 55
	dw RATICATE
	db -1 ; end

	next_list_item ; SAILOR (7)
	db "GARRETT@", TRAINERTYPE_NORMAL
	db 56
	dw KINGLER
	db -1 ; end

	next_list_item ; SAILOR (8)
	db "KENNETH@", TRAINERTYPE_NORMAL
	db 53
	dw MACHAMP
	db 53
	dw MACHAMP
	db 53
	dw POLIWRATH
	db 53
	dw MACHAMP
	db -1 ; end

	next_list_item ; SAILOR (9)
	db "STANLY@", TRAINERTYPE_NORMAL
	db 54
	dw MACHAMP
	db 55
	dw MACHAMP
	db 49
	dw GOLDUCK
	db -1 ; end

	next_list_item ; SAILOR (10)
	db "HARRY@", TRAINERTYPE_NORMAL
	db 34
	dw QUAGSIRE
	db -1 ; end

	next_list_item ; SAILOR (11)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 52
	dw POLITOED
	db 52
	dw POLIWRATH
	db -1 ; end

	next_list_item ; SAILOR (12)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 69
	dw POLITOED
	db 69
	dw POLIWRATH
	db -1 ; end

	next_list_item ; SAILOR (13)
	db "HUEY@", TRAINERTYPE_MOVES
	db 79
	dw POLITOED
	dw WHIRLPOOL, WATERFALL, BODY_SLAM, PERISH_SONG
	db 79
	dw POLIWRATH
	dw SURF, STRENGTH, ICE_PUNCH, SUBMISSION
	db -1 ; end

	next_list_item ; SAILOR (14)
	db "VARIO@", TRAINERTYPE_ITEM_MOVES
	db 86
	dw VAPOREON
	db MIRACLEBERRY
	dw SURF, HYDRO_PUMP, AURORA_BEAM, ACID_ARMOR
	db 85
	dw GYARADOS
	db BITTER_BERRY
	dw THRASH, BITE, DRAGON_DANCE, WATERFALL
	db 86
	dw AGGRON
	db METAL_COAT
	dw IRON_DEFENSE, METAL_CLAW, ROAR, TAKE_DOWN
	db 86
	dw WALREIN
	db LEFTOVERS
	dw BODY_SLAM, AURORA_BEAM, BLIZZARD, WATER_PULSE
	db 85
	dw MANECTRIC
	db SCOPE_LENS
	dw QUICK_ATTACK, SPARK, BITE, IRON_TAIL
	db 86
	dw SCEPTILE
	db BRIGHTPOWDER
	dw SANDSTORM, LEECH_SEED, WOOD_HAMMER, FEINT_ATTACK
	db -1 ; end

	end_list_items

SuperNerdGroup:
	next_list_item ; SUPER_NERD (1)
	db "STAN@", TRAINERTYPE_NORMAL
	db 20
	dw GRIMER
	db -1 ; end

	next_list_item ; SUPER_NERD (2)
	db "ERIC@", TRAINERTYPE_NORMAL
	db 24
	dw GRIMER
	db 24
	dw GRIMER
	db -1 ; end

	next_list_item ; SUPER_NERD (3)
	db "GREGG@", TRAINERTYPE_NORMAL
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (4)
	db "JAY@", TRAINERTYPE_NORMAL
	db 22
	dw KOFFING
	db 22
	dw KOFFING
	db -1 ; end

	next_list_item ; SUPER_NERD (5)
	db "DAVE@", TRAINERTYPE_NORMAL
	db 24
	dw DITTO
	db -1 ; end

	next_list_item ; SUPER_NERD (6)
	db "SAM@", TRAINERTYPE_NORMAL
	db 65
	dw MUK
	db 65
	dw MUK
	db -1 ; end

	next_list_item ; SUPER_NERD (7)
	db "TOM@", TRAINERTYPE_NORMAL
	db 64
	dw MAGNETON
	db 64
	dw MAGNETON
	db 64
	dw MAGNETON
	db -1 ; end

	next_list_item ; SUPER_NERD (8)
	db "PAT@", TRAINERTYPE_NORMAL
	db 69
	dw PORYGON_Z
	db -1 ; end

	next_list_item ; SUPER_NERD (9)
	db "SHAWN@", TRAINERTYPE_NORMAL
	db 53
	dw MAGNETON
	db 55
	dw MUK
	db 53
	dw MAGNETON
	db -1 ; end

	next_list_item ; SUPER_NERD (10)
	db "TERU@", TRAINERTYPE_NORMAL
	db 19
	dw MAGNEMITE
	db 23
	dw VOLTORB
	db 19
	dw MAGNEMITE
	db 21
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (11)
	db "RUSS@", TRAINERTYPE_NORMAL
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (12)
	db "NORTON@", TRAINERTYPE_MOVES
	db 30
	dw PORYGON
	dw CONVERSION, CONVERSION2, RECOVER, TRI_ATTACK
	db -1 ; end

	next_list_item ; SUPER_NERD (13)
	db "HUGH@", TRAINERTYPE_NORMAL
	db 72
	dw KINGDRA
	db -1 ; end

	next_list_item ; SUPER_NERD (14)
	db "MARKUS@", TRAINERTYPE_MOVES
	db 46
	dw SLOWKING
	dw CURSE, SURF, SWAGGER, STRENGTH
	db -1 ; end

	next_list_item ; SUPER_NERD (15)
	db "ROOD@", TRAINERTYPE_NORMAL
	db 58
	dw SUNKERN
	db 57
	dw MAGIKARP
	db 58
	dw PINECO
	db 58
	dw AZURILL
	db 57
	dw RALTS
	db 58
	dw MAREEP
	db -1 ; end

	next_list_item ; SUPER_NERD (16)
	db "SLEWIS@", TRAINERTYPE_ITEM_MOVES
	db 74
	dw KADABRA
	db BRIGHTPOWDER
	dw REFLECT, THIEF, CONFUSION, AMNESIA
	db 73
	dw BRONZOR
	db GOLD_BERRY
	dw CONFUSE_RAY, EXTRASENSORY, FEINT_ATTACK, IRON_DEFENSE
	db 74
	dw MOTHIM
	db LEFTOVERS
	dw MOONLIGHT, PSYBEAM, PSYCHIC_M, TOXIC
	db 74
	dw SWELLOW
	db SCOPE_LENS
	dw GROWL, QUICK_ATTACK, WING_ATTACK, DOUBLE_TEAM
	db 73
	dw GROVYLE
	db GOLD_BERRY
	dw RAZOR_LEAF, SCREECH, PURSUIT, CUT
	db 74
	dw MARSHTOMP
	db MYSTIC_WATER
	dw TACKLE, WATER_GUN, MUD_SHOT, ENDEAVOR
	db -1 ; end

	next_list_item ; SUPER_NERD (17)
	db "ACRON@", TRAINERTYPE_ITEM
	db 75
	dw SNORUNT
	db NEVERMELTICE
	db 74
	dw GRIMER
	db POISON_BARB
	db 75
	dw PSYDUCK
	db MYSTIC_WATER
	db 75
	dw MAGNEMITE
	db MAGNET
	db 74
	dw CYNDAQUIL
	db SCOPE_LENS
	db 75
	dw LARVITAR
	db BITTER_BERRY
	db -1 ; end

	next_list_item ; SUPER_NERD (18)
	db "DUNOR@", TRAINERTYPE_ITEM
	db 85
	dw MUK
	db POISON_BARB
	db 84
	dw KROKOROK
	db BITTER_BERRY
	db 85
	dw NINETALES
	db QUICK_CLAW
	db 85
	dw PORYGON2
	db GOLD_BERRY
	db 84
	dw MACHAMP
	db GOLD_BERRY
	db 85
	dw GARDEVOIR
	db MYSTERYBERRY
	db -1 ; end

	next_list_item ; SUPER_NERD (19)
	db "ELDAN@", TRAINERTYPE_ITEM
	db 96
	dw LATIOS
	db MIRACLEBERRY
	db 95
	dw URSARING
	db MYSTERYBERRY
	db 96
	dw HOUNDOOM
	db GOLD_BERRY
	db 96
	dw MILTANK
	db KINGS_ROCK
	db 95
	dw ELECTRODE
	db MAGNET
	db 96
	dw GYARADOS
	db FOCUS_BAND
	db -1 ; end

	end_list_items

GuitaristGroup:
	next_list_item ; GUITARIST (1)
	db "CLYDE@", TRAINERTYPE_NORMAL
	db 56
	dw ELECTABUZZ
	db -1 ; end

	next_list_item ; GUITARIST (2)
	db "VINCENT@", TRAINERTYPE_NORMAL
	db 54
	dw MAGNETON
	db 57
	dw ELECTRODE
	db 56
	dw MAGNETON
	db 56
	dw MAGNETON
	db -1 ; end

	next_list_item ; GUITARIST (3)
	db "JAMIE@", TRAINERTYPE_NORMAL
	db 57
	dw MANECTRIC
	db -1 ; end

	next_list_item ; GUITARIST (4)
	db "ARDO@", TRAINERTYPE_NORMAL
	db 63
	dw SNUBBULL
	db 62
	dw GRIMER
	db 63
	dw LEDYBA
	db 63
	dw FLAAFFY
	db 62
	dw PIKACHU
	db 63
	dw MARILL
	db -1 ; end

	next_list_item ; GUITARIST (5)
	db "NOREL@", TRAINERTYPE_NORMAL
	db 68
	dw ZIGZAGOON
	db 67
	dw TOGEPI
	db 68
	dw SKITTY
	db 68
	dw DODUO
	db 67
	dw TEDDIURSA
	db 68
	dw LOUDRED
	db -1 ; end

	next_list_item ; GUITARIST (6)
	db "DEATS@", TRAINERTYPE_ITEM
	db 74
	dw REMORAID
	db GOLD_BERRY
	db 73
	dw TYNAMO
	db GOLD_BERRY
	db 74
	dw CROCONAW
	db GOLD_BERRY
	db 74
	dw MUDKIP
	db GOLD_BERRY
	db 73
	dw PIKACHU
	db BURNT_BERRY
	db 74
	dw CHINCHOU
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; GUITARIST (7)
	db "FEEK@", TRAINERTYPE_ITEM
	db 90
	dw METANG
	db BRIGHTPOWDER
	db 89
	dw SEALEO
	db GOLD_BERRY
	db 90
	dw FURRET
	db FOCUS_BAND
	db 90
	dw SUDOWOODO
	db QUICK_CLAW
	db 89
	dw PILOSWINE
	db GOLD_BERRY
	db 90
	dw MONFERNO
	db MYSTERYBERRY
	db -1 ; end

	next_list_item ; GUITARIST (8)
	db "NEBLEK@", TRAINERTYPE_ITEM_MOVES
	db 94
	dw STARMIE
	db MIRACLEBERRY
	dw WATERFALL, RAIN_DANCE, THUNDER, PROTECT
	db 93
	dw ARTICUNO
	db LEFTOVERS
	dw ICE_BEAM, THUNDER, REST, RAIN_DANCE
	db 94
	dw PORYGON_Z
	db GOLD_BERRY
	dw TRI_ATTACK, RECOVER, LOCK_ON, ZAP_CANNON
	db 94
	dw ELECTRODE
	db GOLD_BERRY
	dw THUNDER, SCREECH, PROTECT, SWIFT
	db 93
	dw MAGNETON
	db BRIGHTPOWDER
	dw SUPERSONIC, THUNDER, SCREECH, TRI_ATTACK
	db 94
	dw GROUDON
	db POLKADOT_BOW
	dw FIRE_BLAST, REST, EARTHQUAKE, CURSE
	db -1 ; end


	end_list_items

HikerGroup:
	next_list_item ; HIKER (1)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 16
	dw GEODUDE
	db 18
	dw MACHOP
	db -1 ; end

	next_list_item ; HIKER (2)
	db "RUSSELL@", TRAINERTYPE_NORMAL
	db 13
	dw GEODUDE
	db 15
	dw GEODUDE
	db 17
	dw GEODUDE
	db -1 ; end

	next_list_item ; HIKER (3)
	db "PHILLIP@", TRAINERTYPE_NORMAL
	db 23
	dw GEODUDE
	db 23
	dw GEODUDE
	db 23
	dw GRAVELER
	db -1 ; end

	next_list_item ; HIKER (4)
	db "LEONARD@", TRAINERTYPE_NORMAL
	db 23
	dw GEODUDE
	db 25
	dw MACHOP
	db -1 ; end

	next_list_item ; HIKER (5)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 40
	dw GRAVELER
	db 40
	dw MACHOKE
	db -1 ; end

	next_list_item ; HIKER (6)
	db "BENJAMIN@", TRAINERTYPE_NORMAL
	db 43
	dw DUGTRIO
	db 43
	dw GRAVELER
	db 45
	dw DUGTRIO
	db -1 ; end

	next_list_item ; HIKER (7)
	db "ERIK@", TRAINERTYPE_NORMAL
	db 51
	dw MACHOKE
	db 53
	dw GOLEM
	db 53
	dw MACHAMP
	db -1 ; end

	next_list_item ; HIKER (8)
	db "MICHAEL@", TRAINERTYPE_NORMAL
	db 53
	dw GEODUDE
	db 53
	dw GRAVELER
	db 53
	dw GOLEM
	db -1 ; end

	next_list_item ; HIKER (9)
	db "PARRY@", TRAINERTYPE_NORMAL
	db 54
	dw STEELIX
	db 52
	dw PILOSWINE
	db -1 ; end

	next_list_item ; HIKER (10)
	db "TIMOTHY@", TRAINERTYPE_NORMAL
	db 67
	dw DUGTRIO
	db 67
	dw DUGTRIO
	db -1 ; end

	next_list_item ; HIKER (11)
	db "BAILEY@", TRAINERTYPE_NORMAL
	db 25
	dw GRAVELER
	db 25
	dw GRAVELER
	db 25
	dw GRAVELER
	db 25
	dw GRAVELER
	db 25
	dw GRAVELER
	db -1 ; end

	next_list_item ; HIKER (12)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 48
	dw GRAVELER
	db 50
	dw GOLEM
	db 52
	dw MACHAMP
	db -1 ; end

	next_list_item ; HIKER (13)
	db "TIM@", TRAINERTYPE_NORMAL
	db 66
	dw GOLEM
	db 66
	dw GOLEM
	db 66
	dw GOLEM
	db -1 ; end

	next_list_item ; HIKER (14)
	db "NOLAND@", TRAINERTYPE_NORMAL
	db 53
	dw SANDSLASH
	db 55
	dw GOLEM
	db -1 ; end

	next_list_item ; HIKER (15)
	db "SIDNEY@", TRAINERTYPE_NORMAL
	db 67
	dw DUGTRIO
	db 65
	dw STEELIX
	db -1 ; end

	next_list_item ; HIKER (16)
	db "KENNY@", TRAINERTYPE_NORMAL
	db 61
	dw SANDSLASH
	db 63
	dw GOLEM
	db 65
	dw GOLEM
	db 63
	dw GOLEM
	db -1 ; end

	next_list_item ; HIKER (17)
	db "JIM@", TRAINERTYPE_NORMAL
	db 67
	dw MACHAMP
	db -1 ; end

	next_list_item ; HIKER (18)
	db "DANIEL@", TRAINERTYPE_NORMAL
	db 18
	dw ONIX
	db -1 ; end

	next_list_item ; HIKER (19)
	db "PARRY@", TRAINERTYPE_NORMAL
	db 67
	dw PILOSWINE
	db 67
	dw DUGTRIO
	db 69
	dw STEELIX
	db -1 ; end

	next_list_item ; HIKER (20)
	db "PARRY@", TRAINERTYPE_MOVES
	db 77
	dw PILOSWINE
	dw EARTHQUAKE, BLIZZARD, REST, TAKE_DOWN
	db 77
	dw DUGTRIO
	dw EARTHQUAKE, FISSURE, SLASH, SLUDGE_BOMB
	db 79
	dw STEELIX
	dw DIG, IRON_TAIL, SANDSTORM, CRUNCH
	db -1 ; end

	next_list_item ; HIKER (21)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 67
	dw GOLEM
	db 67
	dw GOLEM
	db 69
	dw MACHAMP
	db -1 ; end

	next_list_item ; HIKER (22)
	db "ANTHONY@", TRAINERTYPE_MOVES
	db 77
	dw GOLEM
	dw EARTHQUAKE, EXPLOSION, DEFENSE_CURL, ROLLOUT
	db 79
	dw GOLEM
	dw EARTHQUAKE, EXPLOSION, DEFENSE_CURL, ROLLOUT
	db 77
	dw MACHAMP
	dw CROSS_CHOP, CURSE, HEADBUTT, EARTHQUAKE
	db -1 ; end

	next_list_item ; HIKER (23)
	db "LEVEN@", TRAINERTYPE_MOVES
	db 70
	dw GEODUDE
	dw ROCK_THROW, ROLLOUT, MAGNITUDE, MUD_SLAP
	db 69
	dw SANDSHREW
	dw SWORDS_DANCE, SAND_ATTACK, SLASH, SWIFT
	db 70
	dw SANDILE
	dw CRUNCH, ANCIENTPOWER, SANDSTORM, FOUL_PLAY
	db 70
	dw LARVITAR
	dw ROCK_SLIDE, THRASH, SCARY_FACE, BITE
	db 69
	dw TRAPINCH
	dw BITE, SAND_ATTACK, SAND_TOMB, DIG
	db 70
	dw RHYHORN
	dw HORN_ATTACK, STOMP, SCARY_FACE, ROCK_SMASH
	db -1 ; end

	next_list_item ; HIKER (24)
	db "CRAG@", TRAINERTYPE_ITEM
	db 78
	dw TOGETIC
	db GOLD_BERRY
	db 77
	dw MAGCARGO
	db QUICK_CLAW
	db 78
	dw AZUMARILL
	db MYSTIC_WATER
	db 78
	dw SUDOWOODO
	db BRIGHTPOWDER
	db 77
	dw MASQUERAIN
	db SILVERPOWDER
	db 78
	dw PUPITAR
	db BITTER_BERRY
	db -1 ; end

	next_list_item ; HIKER (25)
	db "WILER@", TRAINERTYPE_ITEM
	db 91
	dw SNEASEL
	db QUICK_CLAW
	db 90
	dw AURORUS
	db NEVERMELTICE
	db 91
	dw KROKOROK
	db HARD_STONE
	db 91
	dw CHATOT
	db MIRACLEBERRY
	db 90
	dw ARBOK
	db GOLD_BERRY
	db 91
	dw LAIRON
	db METAL_COAT
	db -1 ; end

	end_list_items

BikerGroup:
	next_list_item ; BIKER (1)
	db "BENNY@", TRAINERTYPE_NORMAL
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (2)
	db "KAZU@", TRAINERTYPE_NORMAL
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (3)
	db "DWAYNE@", TRAINERTYPE_NORMAL
	db 62
	dw WEEZING
	db 63
	dw WEEZING
	db 64
	dw WEEZING
	db 65
	dw WEEZING
	db -1 ; end

	next_list_item ; BIKER (4)
	db "HARRIS@", TRAINERTYPE_NORMAL
	db 66
	dw FLAREON
	db -1 ; end

	next_list_item ; BIKER (5)
	db "ZEKE@", TRAINERTYPE_NORMAL
	db 65
	dw WEEZING
	db 65
	dw WEEZING
	db -1 ; end

	next_list_item ; BIKER (6)
	db "CHARLES@", TRAINERTYPE_NORMAL
	db 59
	dw WEEZING
	db 59
	dw CHARIZARD
	db 59
	dw WEEZING
	db -1 ; end

	next_list_item ; BIKER (7)
	db "RILEY@", TRAINERTYPE_NORMAL
	db 61
	dw WEEZING
	db -1 ; end

	next_list_item ; BIKER (8)
	db "JOEL@", TRAINERTYPE_NORMAL
	db 60
	dw MAGMAR
	db 60
	dw MAGMAR
	db -1 ; end

	next_list_item ; BIKER (9)
	db "GLENN@", TRAINERTYPE_NORMAL
	db 56
	dw WEEZING
	db 58
	dw MAGMAR
	db 60
	dw WEEZING
	db -1 ; end

	next_list_item ; BIKER (10)
	db "EARGLE@", TRAINERTYPE_NORMAL
	db 58
	dw PICHU
	db 57
	dw MAKUHITA
	db 58
	dw POOCHYENA
	db 58
	dw DUSKULL
	db 57
	dw HOPPIP
	db 58
	dw ZIGZAGOON
	db -1 ; end

	next_list_item ; BIKER (11)
	db "LOHON@", TRAINERTYPE_ITEM
	db 73
	dw CORSOLA
	db GOLD_BERRY
	db 72
	dw SKIPLOOM
	db GOLD_BERRY
	db 73
	dw MACHOKE
	db LEFTOVERS
	db 73
	dw SHINX
	db MIRACLEBERRY
	db 72
	dw MOTHIM
	db GOLD_BERRY
	db 73
	dw LINOONE
	db MINT_BERRY
	db -1 ; end

	next_list_item ; BIKER (12)
	db "ROGIN@", TRAINERTYPE_ITEM
	db 82
	dw LOUDRED
	db BITTER_BERRY
	db 81
	dw OCTILLERY
	db GOLD_BERRY
	db 82
	dw CROBAT
	db PRZCUREBERRY
	db 82
	dw QUAGSIRE
	db MIRACLEBERRY
	db 81
	dw RHYDON
	db GOLD_BERRY
	db 82
	dw SABLEYE
	db PSNCUREBERRY
	db -1 ; end

	next_list_item ; BIKER (13)
	db "REBIN@", TRAINERTYPE_ITEM
	db 93
	dw BLAZIKEN
	db BLACKBELT
	db 92
	dw VILEPLUME
	db BITTER_BERRY
	db 93
	dw LANTURN
	db LEFTOVERS
	db 93
	dw FROSLASS
	db NEVERMELTICE
	db 92
	dw GRANBULL
	db GOLD_BERRY
	db 93
	dw SABLEYE
	db SPELL_TAG
	db -1 ; end

	end_list_items


BurglarGroup:
	next_list_item ; BURGLAR (1)
	db "DUNCAN@", TRAINERTYPE_NORMAL
	db 48
	dw WEEZING
	db 50
	dw MAGMAR
	db 48
	dw WEEZING
	db -1 ; end

	next_list_item ; BURGLAR (2)
	db "EDDIE@", TRAINERTYPE_MOVES
	db 50
	dw ARCANINE
	dw ROAR, AGILITY, FIRE_BLAST, EXTREMESPEED
	db 48
	dw WEEZING
	dw ZAP_CANNON, SMOKESCREEN, SLUDGE, EXPLOSION
	db -1 ; end

	next_list_item ; BURGLAR (3)
	db "COREY@", TRAINERTYPE_NORMAL
	db 50
	dw WEEZING
	db 53
	dw MAGMAR
	db 50
	dw WEEZING
	db 55
	dw WEEZING
	db -1 ; end

	next_list_item ; BURGLAR (4)
	db "JAC@", TRAINERTYPE_NORMAL
	db 72
	dw WEEZING
	db 72
	dw MAGMAR
	db -1 ; end

	next_list_item ; BURGLAR (5)
	db "DUSTY@", TRAINERTYPE_NORMAL
	db 70
	dw MUK
	db 70
	dw CHANDELURE
	db 70
	dw HOUNDOOM
	db 70
	dw MURKROW
	db -1 ; end

	next_list_item ; BURGLAR (6)
	db "SIMON@", TRAINERTYPE_NORMAL
	db 73
	dw NINETALES
	db -1 ; end

	end_list_items

FirebreatherGroup:
	next_list_item ; FIREBREATHER (1)
	db "OTIS@", TRAINERTYPE_NORMAL
	db 69
	dw MAGMAR
	db 71
	dw WEEZING
	db 69
	dw MAGMAR
	db -1 ; end

	next_list_item ; FIREBREATHER (2)
	db "DICK@", TRAINERTYPE_NORMAL
	db 17
	dw CHARMELEON
	db -1 ; end

	next_list_item ; FIREBREATHER (3)
	db "NED@", TRAINERTYPE_NORMAL
	db 15
	dw KOFFING
	db 16
	dw GROWLITHE
	db 15
	dw KOFFING
	db -1 ; end

	next_list_item ; FIREBREATHER (4)
	db "BURT@", TRAINERTYPE_NORMAL
	db 71
	dw WEEZING
	db 71
	dw MAGCARGO
	db -1 ; end

	next_list_item ; FIREBREATHER (5)
	db "BILL@", TRAINERTYPE_NORMAL
	db 15
	dw KOFFING
	db 15
	dw KOFFING
	db -1 ; end

	next_list_item ; FIREBREATHER (6)
	db "WALT@", TRAINERTYPE_NORMAL
	db 23
	dw MAGMAR
	db 25
	dw MAGMAR
	db -1 ; end

	next_list_item ; FIREBREATHER (7)
	db "RAY@", TRAINERTYPE_NORMAL
	db 17
	dw VULPIX
	db -1 ; end

	next_list_item ; FIREBREATHER (8)
	db "LYLE@", TRAINERTYPE_NORMAL
	db 52
	dw WEEZING
	db 55
	dw FLAREON
	db 52
	dw WEEZING
	db -1 ; end

	next_list_item ; FIREBREATHER (9)
	db "HOGLO@", TRAINERTYPE_NORMAL
	db 67
	dw SLUGMA
	db 67
	dw VULPIX
	db 66
	dw CYNDAQUIL
	db 67
	dw QUILAVA
	db 66
	dw TORCHIC
	db 67
	dw COMBUSKEN
	db -1 ; end

	end_list_items

JugglerGroup:
	next_list_item ; JUGGLER (1)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 5
	dw VOLTORB
	db 10
	dw VOLTORB
	db 15
	dw VOLTORB
	db 20
	dw VOLTORB
	db 25
	dw VOLTORB
	db -1 ; end

	next_list_item ; JUGGLER (2)
	db "FRITZ@", TRAINERTYPE_NORMAL
	db 54
	dw MR__MIME
	db 54
	dw MAGMAR
	db 54
	dw MACHAMP
	db -1 ; end

	next_list_item ; JUGGLER (3)
	db "HORTON@", TRAINERTYPE_NORMAL
	db 55
	dw ELECTRODE
	db 55
	dw ELECTRODE
	db 55
	dw ELECTRODE
	db 55
	dw ELECTRODE
	db -1 ; end

	next_list_item ; JUGGLER (4)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 6
	dw VOLTORB
	db 10
	dw VOLTORB
	db 14
	dw VOLTORB
	db 18
	dw VOLTORB
	db -1 ; end

	next_list_item ; JUGGLER (5)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 18
	dw VOLTORB
	db 22
	dw VOLTORB
	db 26
	dw VOLTORB
	db 30
	dw ELECTRODE
	db -1 ; end

	next_list_item ; JUGGLER (6)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 18
	dw VOLTORB
	db 22
	dw VOLTORB
	db 26
	dw VOLTORB
	db 30
	dw ELECTRODE
	db -1 ; end

	next_list_item ; JUGGLER (7)
	db "SIDO@", TRAINERTYPE_NORMAL
	db 66
	dw DRILBUR
	db 65
	dw AIPOM
	db 66
	dw SABLEYE
	db 66
	dw BUNEARY
	db 65
	dw BRONZOR
	db 66
	dw COMBUSKEN
	db -1 ; end

	next_list_item ; JUGGLER (8)
	db "LIREL@", TRAINERTYPE_ITEM
	db 78
	dw PANSAGE
	db NO_ITEM
	db 77
	dw LOUDRED
	db GOLD_BERRY
	db 78
	dw DELCATTY
	db MYSTERYBERRY
	db 78
	dw ROSELIA
	db BRIGHTPOWDER
	db 77
	dw SKUNTANK
	db SCOPE_LENS
	db 78
	dw BRONZONG
	db MINT_BERRY
	db -1 ; end

	next_list_item ; JUGGLER (9)
	db "SIRKO@", TRAINERTYPE_ITEM
	db 88
	dw SCEPTILE
	db LEFTOVERS
	db 87
	dw CRADILY
	db SCOPE_LENS
	db 88
	dw CHATOT
	db SHARP_BEAK
	db 88
	dw EXPLOUD
	db MYSTERYBERRY
	db 87
	dw FORRETRESS
	db GOLD_BERRY
	db 88
	dw FROSLASS
	db MIRACLEBERRY
	db -1 ; end

	end_list_items

SECTION "Enemy Trainer Parties 3", ROMX

BlackbeltGroup:
	next_list_item ; BLACKBELT_T (1)
	db "KENJI@", TRAINERTYPE_NORMAL
	db 48
	dw ONIX
	db 51
	dw HITMONLEE
	db 48
	dw STEELIX
	db 54
	dw MACHAMP
	db -1 ; end

	next_list_item ; BLACKBELT_T (2)
	db "YOSHI@", TRAINERTYPE_NORMAL
	db 39
	dw HITMONLEE
	db -1 ; end

	next_list_item ; BLACKBELT_T (3)
	db "KENJI@", TRAINERTYPE_MOVES
	db 33
	dw ONIX
	dw BIND, ROCK_THROW, TOXIC, DIG
	db 38
	dw MACHAMP
	dw HEADBUTT, SWAGGER, THUNDERPUNCH, VITAL_THROW
	db 33
	dw STEELIX
	dw EARTHQUAKE, ROCK_THROW, IRON_TAIL, SANDSTORM
	db 36
	dw HITMONLEE
	dw DOUBLE_TEAM, HI_JUMP_KICK, MUD_SLAP, SWIFT
	db -1 ; end

	next_list_item ; BLACKBELT_T (4)
	db "LAO@", TRAINERTYPE_MOVES
	db 39
	dw HITMONCHAN
	dw MACH_PUNCH, THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH
	db -1 ; end

	next_list_item ; BLACKBELT_T (5)
	db "NOB@", TRAINERTYPE_MOVES
	db 38
	dw MACHOKE
	dw LEER, FORESIGHT, VITAL_THROW, KARATE_CHOP
	db 38
	dw MACHAMP
	dw LEER, FORESIGHT, VITAL_THROW, KARATE_CHOP
	db -1 ; end

	next_list_item ; BLACKBELT_T (6)
	db "KIYO@", TRAINERTYPE_NORMAL
	db 71
	dw HITMONLEE
	db 71
	dw HITMONCHAN
	db 71
	dw HITMONTOP
	db -1 ; end

	next_list_item ; BLACKBELT_T (7)
	db "LUNG@", TRAINERTYPE_NORMAL
	db 37
	dw MANKEY
	db 37
	dw MANKEY
	db 38
	dw PRIMEAPE
	db -1 ; end

	next_list_item ; BLACKBELT_T (8)
	db "KENJI@", TRAINERTYPE_NORMAL
	db 48
	dw ONIX
	db 51
	dw HITMONLEE
	db 48
	dw STEELIX
	db 54
	dw MACHAMP
	db -1 ; end

	next_list_item ; BLACKBELT_T (9)
	db "WAI@", TRAINERTYPE_NORMAL
	db 51
	dw MACHOKE
	db 53
	dw MACHAMP
	db 55
	dw MACHAMP
	db -1 ; end

	next_list_item ; BLACKBELT_T (10)
	db "RAPOZ@", TRAINERTYPE_NORMAL
	db 61
	dw MAGNEMITE
	db 60
	dw WHISMUR
	db 61
	dw SNORUNT
	db 61
	dw SURSKIT
	db 60
	dw PIKACHU
	db 61
	dw SANDSHREW
	db -1 ; end

	next_list_item ; BLACKBELT_T (11)
	db "ROGEN@", TRAINERTYPE_NORMAL
	db 63
	dw MAGNEMITE
	db 62
	dw VOLTORB
	db 63
	dw CHINCHOU
	db 63
	dw FLAAFFY
	db 62
	dw PIKACHU
	db 63
	dw MARILL
	db -1 ; end

	next_list_item ; BLACKBELT_T (12)
	db "RAWLES@", TRAINERTYPE_ITEM
	db 76
	dw BRONZOR
	db TWISTEDSPOON
	db 75
	dw DODUO
	db BERRY
	db 76
	dw ABRA
	db MIRACLEBERRY
	db 76
	dw TREECKO
	db ICE_BERRY
	db 75
	dw VOLTORB
	db GOLD_BERRY
	db 76
	dw STARYU
	db BRIGHTPOWDER
	db -1 ; end

	next_list_item ; BLACKBELT_T (13)
	db "HELMIN@", TRAINERTYPE_ITEM
	db 82
	dw MAGCARGO
	db GOLD_BERRY
	db 81
	dw LANTURN
	db MIRACLEBERRY
	db 82
	dw VILEPLUME
	db BITTER_BERRY
	db 82
	dw GASTRODON
	db LEFTOVERS
	db 81
	dw ABSOL
	db SCOPE_LENS
	db 82
	dw STANTLER
	db BRIGHTPOWDER
	db -1 ; end

	next_list_item ; BLACKBELT_T (14)
	db "CHIOD@", TRAINERTYPE_ITEM
	db 87
	dw BLAZIKEN
	db SHARP_BEAK
	db 86
	dw WAILORD
	db HARD_STONE
	db 87
	dw AMPHAROS
	db POLKADOT_BOW
	db 87
	dw GOLEM
	db BLACKBELT
	db 86
	dw BELLOSSOM
	db MINT_BERRY
	db 87
	dw SKARMORY
	db ICE_BERRY
	db -1 ; end

	next_list_item ; BLACKBELT_T (15)
	db "ELDOR@", TRAINERTYPE_ITEM
	db 97
	dw SUICUNE
	db BRIGHTPOWDER
	db 96
	dw AMPHAROS
	db MAGNET
	db 97
	dw SYLVEON
	db GOLD_BERRY
	db 97
	dw STANTLER
	db BRIGHTPOWDER
	db 96
	dw PORYGON_Z
	db SCOPE_LENS
	db 97
	dw DONPHAN
	db FOCUS_BAND
	db -1 ; end

	next_list_item ; BLACKBELT_T (16)
	db "YUGI@", TRAINERTYPE_NORMAL
	db 76
	dw HARIYAMA
	db 76
	dw MACHAMP
	db -1 ; end

	end_list_items

BoarderGroup:
	next_list_item ; BOARDER (1)
	db "RONALD@", TRAINERTYPE_NORMAL
	db 48
	dw SEEL
	db 49
	dw DEWGONG
	db 48
	dw SEEL
	db -1 ; end

	next_list_item ; BOARDER (2)
	db "BRAD@", TRAINERTYPE_NORMAL
	db 49
	dw PILOSWINE
	db 49
	dw PILOSWINE
	db -1 ; end

	next_list_item ; BOARDER (3)
	db "DOUGLAS@", TRAINERTYPE_NORMAL
	db 48
	dw SHELLDER
	db 49
	dw CLOYSTER
	db 48
	dw SHELLDER
	db -1 ; end

	next_list_item ; BOARDER (4)
	db "SHAUN@", TRAINERTYPE_NORMAL
	db 72
	dw CLOYSTER
	db 67
	dw DEWGONG
	db -1 ; end

	next_list_item ; BOARDER (5)
	db "BRYCE@", TRAINERTYPE_NORMAL
	db 72
	dw DEWGONG
	db 67
	dw LAPRAS
	db -1 ; end

	next_list_item ; BOARDER (6)
	db "GARS@", TRAINERTYPE_NORMAL
	db 60
	dw JIGGLYPUFF
	db 59
	dw MAKUHITA
	db 60
	dw SPHEAL
	db 60
	dw MAREEP
	db 59
	dw GEODUDE
	db 60
	dw SPINARAK
	db -1 ; end

	next_list_item ; BOARDER (7)
	db "RENFAR@", TRAINERTYPE_NORMAL
	db 66
	dw WOOPER
	db 65
	dw PANSAGE
	db 66
	dw MARILL
	db 66
	dw MAKUHITA
	db 65
	dw LOTAD
	db 66
	dw WHISMUR
	db -1 ; end

	next_list_item ; BOARDER (8)
	db "TARY@", TRAINERTYPE_ITEM
	db 70
	dw PANSAGE
	db GOLD_BERRY
	db 69
	dw MAGNEMITE
	db GOLD_BERRY
	db 70
	dw DUSKULL
	db SPELL_TAG
	db 70
	dw ARON
	db GOLD_BERRY
	db 69
	dw CLAUNCHER
	db GOLD_BERRY
	db 70
	dw MAREEP
	db MIRACLEBERRY
	db -1 ; end

	next_list_item ; BOARDER (9)
	db "MANDEV@", TRAINERTYPE_ITEM
	db 77
	dw DELIBIRD
	db GOLD_BERRY
	db 76
	dw FLAAFFY
	db BRIGHTPOWDER
	db 77
	dw GOOMY
	db MINT_BERRY
	db 77
	dw SWABLU
	db GOLD_BERRY
	db 76
	dw TENTACOOL
	db BERRY
	db 77
	dw CHIMCHAR
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; BOARDER (10)
	db "BIDIX@", TRAINERTYPE_ITEM
	db 81
	dw KROOKODILE
	db LEFTOVERS
	db 80
	dw JUMPLUFF
	db MIRACLE_SEED
	db 81
	dw VIBRAVA
	db GOLD_BERRY
	db 81
	dw SEADRA
	db GOLD_BERRY
	db 80
	dw MISDREAVUS
	db GOLD_BERRY
	db 81
	dw SEAKING
	db BRIGHTPOWDER
	db -1 ; end

	next_list_item ; BOARDER (11)
	db "FAUL@", TRAINERTYPE_ITEM
	db 86
	dw MILOTIC
	db MIRACLEBERRY
	db 85
	dw HOUNDOOM
	db CHARCOAL
	db 86
	dw FLYGON
	db GOLD_BERRY
	db 86
	dw STARMIE
	db MYSTERYBERRY
	db 85
	dw MAGNETON
	db ICE_BERRY
	db 86
	dw SKUNTANK
	db FOCUS_BAND
	db -1 ; end

	end_list_items

PokefanMGroup:
	next_list_item ; POKEFANM (1)
	db "WILLIAM@", TRAINERTYPE_ITEM
	db 26
	dw RAICHU
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (2)
	db "DEREK@", TRAINERTYPE_ITEM
	db 35
	dw PIKACHU
	db LIGHT_BALL
	db -1 ; end

	next_list_item ; POKEFANM (3)
	db "ROBERT@", TRAINERTYPE_ITEM
	db 67
	dw QUAGSIRE
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (4)
	db "JOSHUA@", TRAINERTYPE_ITEM
	db 61
	dw PIKACHU
	db LIGHT_BALL
	db 61
	dw PIKACHU
	db LIGHT_BALL
	db 61
	dw PIKACHU
	db LIGHT_BALL
	db 61
	dw PIKACHU
	db LIGHT_BALL
	db 61
	dw PIKACHU
	db LIGHT_BALL
	db 61
	dw PIKACHU
	db LIGHT_BALL
	db -1 ; end

	next_list_item ; POKEFANM (5)
	db "CARTER@", TRAINERTYPE_ITEM
	db 63
	dw VENUSAUR
	db GOLD_BERRY
	db 63
	dw CHARIZARD
	db GOLD_BERRY
	db 63
	dw BLASTOISE
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (6)
	db "TREVOR@", TRAINERTYPE_ITEM
	db 65
	dw GOLDUCK
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (7)
	db "BRANDON@", TRAINERTYPE_ITEM
	db 24
	dw GRANBULL
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (8)
	db "JEREMY@", TRAINERTYPE_ITEM
	db 54
	dw PERSIAN
	db GOLD_BERRY
	db 54
	dw PERSIAN
	db GOLD_BERRY
	db 54
	dw PERSIAN
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (9)
	db "COLIN@", TRAINERTYPE_ITEM
	db 56
	dw DELIBIRD
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (10)
	db "DEREK@", TRAINERTYPE_ITEM
	db 19
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (11)
	db "DEREK@", TRAINERTYPE_ITEM
	db 36
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (12)
	db "ALEX@", TRAINERTYPE_ITEM
	db 64
	dw NIDOKING
	db GOLD_BERRY
	db 64
	dw SLOWKING
	db GOLD_BERRY
	db 64
	dw SEAKING
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (13)
	db "REX@", TRAINERTYPE_ITEM
	db 77
	dw PHANPY
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (14)
	db "ALLAN@", TRAINERTYPE_ITEM
	db 77
	dw TEDDIURSA
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (15)
	db "GIROD@", TRAINERTYPE_NORMAL
	db 62
	dw GRIMER
	db 61
	dw TORCHIC
	db 62
	dw SHELLOS
	db 62
	dw VULPIX
	db 61
	dw TREECKO
	db 62
	dw CLAUNCHER
	db -1 ; end

	next_list_item ; POKEFANM (16)
	db "GOHN@", TRAINERTYPE_ITEM
	db 74
	dw SHINX
	db BERRY
	db 73
	dw ARIADOS
	db MYSTERYBERRY
	db 74
	dw RHYHORN
	db MIRACLEBERRY
	db 74
	dw HOUNDOUR
	db BLACKGLASSES
	db 73
	dw CLAUNCHER
	db GOLD_BERRY
	db 74
	dw WOBBUFFET
	db PRZCUREBERRY
	db -1 ; end

	next_list_item ; POKEFANM (17)
	db "CORVIN@", TRAINERTYPE_ITEM
	db 85
	dw DONPHAN
	db BITTER_BERRY
	db 84
	dw GOLDUCK
	db MIRACLEBERRY
	db 85
	dw CRABOMINABLE
	db GOLD_BERRY
	db 85
	dw AMPHAROS
	db GOLD_BERRY
	db 84
	dw HERACROSS
	db SCOPE_LENS
	db 85
	dw HOUNDOOM
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (18)
	db "PAREL@", TRAINERTYPE_ITEM
	db 95
	dw SWAMPERT
	db SCOPE_LENS
	db 94
	dw ALAKAZAM
	db TWISTEDSPOON
	db 95
	dw LUDICOLO
	db KINGS_ROCK
	db 95
	dw WALREIN
	db GOLD_BERRY
	db 94
	dw GOLDUCK
	db BRIGHTPOWDER
	db 95
	dw EXPLOUD
	db POLKADOT_BOW
	db -1 ; end

	end_list_items

TwinsGroup:
	next_list_item ; TWINS (1)
	db "AMY & MAY@", TRAINERTYPE_NORMAL
	db 21
	dw SPINARAK
	db 21
	dw LEDYBA
	db -1 ; end

	next_list_item ; TWINS (2)
	db "ANN & ANNE@", TRAINERTYPE_NORMAL
	db 30
	dw CLEFAIRY
	db 30
	dw JIGGLYPUFF
	db -1 ; end

	next_list_item ; TWINS (3)
	db "ANN & ANNE@", TRAINERTYPE_NORMAL
	db 30
	dw JIGGLYPUFF
	db 30
	dw CLEFAIRY
	db -1 ; end

	next_list_item ; TWINS (4)
	db "AMY & MAY@", TRAINERTYPE_NORMAL
	db 21
	dw LEDYBA
	db 21
	dw SPINARAK
	db -1 ; end

	next_list_item ; TWINS (5)
	db "JO & ZOE@", TRAINERTYPE_NORMAL
	db 60
	dw VICTREEBEL
	db 60
	dw VILEPLUME
	db -1 ; end

	next_list_item ; TWINS (6)
	db "JO & ZOE@", TRAINERTYPE_NORMAL
	db 60
	dw VILEPLUME
	db 60
	dw VICTREEBEL
	db -1 ; end

	next_list_item ; TWINS (7)
	db "MEG & PEG@", TRAINERTYPE_NORMAL
	db 55
	dw URSARING
	db 55
	dw DONPHAN
	db -1 ; end

	next_list_item ; TWINS (8)
	db "MEG & PEG@", TRAINERTYPE_NORMAL
	db 55
	dw DONPHAN
	db 55
	dw URSARING
	db -1 ; end

	next_list_item ; TWINS (9)
	db "LEA & PIA@", TRAINERTYPE_MOVES
	db 54
	dw DRAGONAIR
	dw THUNDER_WAVE, DRAGONBREATH, FLAMETHROWER, HEADBUTT
	db 54
	dw DRAGONAIR
	dw THUNDER_WAVE, DRAGONBREATH, ICE_BEAM, HEADBUTT
	db -1 ; end

	next_list_item ; TWINS (10)
	db "LEA & PIA@", TRAINERTYPE_MOVES
	db 54
	dw DRAGONAIR
	dw THUNDER_WAVE, DRAGONBREATH, ICE_BEAM, HEADBUTT
	db 54
	dw DRAGONAIR
	dw THUNDER_WAVE, DRAGONBREATH, FLAMETHROWER, HEADBUTT
	db -1 ; end

	end_list_items

PokefanFGroup:
	next_list_item ; POKEFANF (1)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 26
	dw GRANBULL
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; POKEFANF (2)
	db "RUTH@", TRAINERTYPE_ITEM
	db 35
	dw PIKACHU
	db LIGHT_BALL
	db -1 ; end

	next_list_item ; POKEFANF (3)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 18
	dw SNUBBULL
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (4)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 30
	dw GRANBULL
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (5)
	db "GEORGIA@", TRAINERTYPE_ITEM
	db 50
	dw FURRET
	db GOLD_BERRY
	db 50
	dw FURRET
	db GOLD_BERRY
	db 50
	dw FURRET
	db GOLD_BERRY
	db 55
	dw FURRET
	db GOLD_BERRY
	db 50
	dw FURRET
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; POKEFANF (6)
	db "JAIME@", TRAINERTYPE_ITEM
	db 35
	dw PERSIAN
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; POKEFANF (7)
	db "LADIN@", TRAINERTYPE_NORMAL
	db 61
	dw ELECTRIKE
	db 60
	dw VULPIX
	db 61
	dw MACHOP
	db 61
	dw PINECO
	db 60
	dw BELDUM
	db 61
	dw HORSEA
	db -1 ; end

	next_list_item ; POKEFANF (8)
	db "SASON@", TRAINERTYPE_ITEM
	db 70
	dw DUSKULL
	db SCOPE_LENS
	db 69
	dw TREECKO
	db MIRACLEBERRY
	db 70
	dw HORSEA
	db GOLD_BERRY
	db 70
	dw SNORUNT
	db GOLD_BERRY
	db 69
	dw ABRA
	db GOLD_BERRY
	db 70
	dw REMORAID
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; POKEFANF (9)
	db "GLYDIN@", TRAINERTYPE_ITEM_MOVES
	db 82
	dw SNEASEL
	db SCOPE_LENS
	dw FEINT_ATTACK, SLASH, METAL_CLAW, HIDDEN_POWER
	db 81
	dw CLAWITZER
	db FOCUS_BAND
	dw VICEGRIP, WATER_PULSE, CRABHAMMER, HIDDEN_POWER
	db 82
	dw SEADRA
	db LEFTOVERS
	dw WATER_PULSE, AURORA_BEAM, HYDRO_PUMP, HIDDEN_POWER
	db 82
	dw GOLBAT
	db BRIGHTPOWDER
	dw WING_ATTACK, BITE, GIGA_DRAIN, HIDDEN_POWER
	db 81
	dw HITMONTOP
	db KINGS_ROCK
	dw ROLLING_KICK, DIG, STRENGTH, HIDDEN_POWER
	db 82
	dw GIRAFARIG
	db BRIGHTPOWDER
	dw STOMP, PSYBEAM, SHADOW_BALL, HIDDEN_POWER
	db -1 ; end

	next_list_item ; POKEFANF (10)
	db "CEWAN@", TRAINERTYPE_ITEM
	db 83
	dw BRONZONG
	db MIRACLEBERRY
	db 82
	dw HARIYAMA
	db FOCUS_BAND
	db 83
	dw GRANBULL
	db GOLD_BERRY
	db 83
	dw SABLEYE
	db GOLD_BERRY
	db 82
	dw INFERNAPE
	db BRIGHTPOWDER
	db 83
	dw RAICHU
	db LEFTOVERS
	db -1 ; end

	next_list_item ; POKEFANF (11)
	db "LISAN@", TRAINERTYPE_ITEM
	db 97
	dw METAGROSS
	db METAL_COAT
	db 96
	dw CRADILY
	db HARD_STONE
	db 97
	dw MACHAMP
	db BLACKBELT
	db 97
	dw SKARMORY
	db SHARP_BEAK
	db 96
	dw RHYDON
	db SOFT_SAND
	db 97
	dw HARIYAMA
	db MINT_BERRY
	db -1 ; end

	end_list_items

OfficerGroup:
	next_list_item ; OFFICER (1)
	db "KEITH@", TRAINERTYPE_NORMAL
	db 25
	dw GROWLITHE
	db -1 ; end

	next_list_item ; OFFICER (2)
	db "DIRK@", TRAINERTYPE_NORMAL
	db 25
	dw GROWLITHE
	db 25
	dw GROWLITHE
	db -1 ; end

	next_list_item ; OFFICER (3)
	db "MATON@", TRAINERTYPE_ITEM
	db 87
	dw FERALIGATR
	db SCOPE_LENS
	db 86
	dw MACHAMP
	db FOCUS_BAND
	db 87
	dw URSARING
	db MIRACLEBERRY
	db 87
	dw RHYDON
	db GOLD_BERRY
	db 86
	dw INFERNAPE
	db GOLD_BERRY
	db 87
	dw VENUSAUR
	db GOLD_BERRY
	db -1 ; end

	end_list_items

SECTION "Enemy Trainer Parties 4", ROMX

CamperGroup:
	next_list_item ; CAMPER (1)
	db "ROLAND@", TRAINERTYPE_NORMAL
	db 16
	dw NIDORAN_M
	db -1 ; end

	next_list_item ; CAMPER (2)
	db "TODD@", TRAINERTYPE_NORMAL
	db 25
	dw PSYDUCK
	db -1 ; end

	next_list_item ; CAMPER (3)
	db "IVAN@", TRAINERTYPE_NORMAL
	db 21
	dw DIGLETT
	db 21
	dw ZUBAT
	db 25
	dw DIGLETT
	db -1 ; end

	next_list_item ; CAMPER (4)
	db "ELLIOT@", TRAINERTYPE_NORMAL
	db 22
	dw SANDSLASH
	db 24
	dw AZUMARILL
	db -1 ; end

	next_list_item ; CAMPER (5)
	db "BARRY@", TRAINERTYPE_NORMAL
	db 64
	dw NIDOKING
	db -1 ; end

	next_list_item ; CAMPER (6)
	db "LLOYD@", TRAINERTYPE_NORMAL
	db 69
	dw NIDOKING
	db -1 ; end

	next_list_item ; CAMPER (7)
	db "DEAN@", TRAINERTYPE_NORMAL
	db 67
	dw GOLDUCK
	db 65
	dw SANDSLASH
	db -1 ; end

	next_list_item ; CAMPER (8)
	db "SID@", TRAINERTYPE_NORMAL
	db 67
	dw DUGTRIO
	db 64
	dw PRIMEAPE
	db 64
	dw POLIWRATH
	db -1 ; end

	next_list_item ; CAMPER (9)
	db "HARVEY@", TRAINERTYPE_NORMAL
	db 15
	dw NIDORINO
	db -1 ; end

	next_list_item ; CAMPER (10)
	db "DALE@", TRAINERTYPE_NORMAL
	db 15
	dw NIDORINO
	db -1 ; end

	next_list_item ; CAMPER (11)
	db "TED@", TRAINERTYPE_NORMAL
	db 30
	dw PRIMEAPE
	db -1 ; end

	next_list_item ; CAMPER (12)
	db "TODD@", TRAINERTYPE_NORMAL
	db 36
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (13)
	db "TODD@", TRAINERTYPE_NORMAL
	db 51
	dw GOLEM
	db 51
	dw GRAVELER
	db 51
	dw MAGCARGO
	db 53
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (14)
	db "THOMAS@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (15)
	db "LEROY@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (16)
	db "DAVID@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (17)
	db "JOHN@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (18)
	db "JERRY@", TRAINERTYPE_NORMAL
	db 72
	dw SANDSLASH
	db -1 ; end

	next_list_item ; CAMPER (19)
	db "SPENCER@", TRAINERTYPE_NORMAL
	db 45
	dw SANDSLASH
	db 45
	dw SANDSLASH
	db 47
	dw CROBAT
	db -1 ; end

	next_list_item ; CAMPER (20)
	db "TODD@", TRAINERTYPE_NORMAL
	db 67
	dw GOLEM
	db 67
	dw GOLEM
	db 67
	dw MAGCARGO
	db 69
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (21)
	db "TODD@", TRAINERTYPE_MOVES
	db 75
	dw GOLEM
	dw EXPLOSION, ROLLOUT, DEFENSE_CURL, EARTHQUAKE
	db 75
	dw GOLEM
	dw EXPLOSION, ROCK_SLIDE, STRENGTH, EARTHQUAKE
	db 79
	dw MAGCARGO
	dw ROCK_SLIDE, EARTHQUAKE, AMNESIA, FLAMETHROWER
	db 77
	dw GOLDUCK
	dw DISABLE, PSYCHIC_M, SURF, PSYCH_UP
	db -1 ; end

	next_list_item ; CAMPER (22)
	db "QUENTIN@", TRAINERTYPE_NORMAL
	db 53
	dw FEAROW
	db 53
	dw PRIMEAPE
	db 53
	dw TAUROS
	db -1 ; end

	next_list_item ; CAMPER (23)
	db "DENC@", TRAINERTYPE_NORMAL
	db 62
	dw CYNDAQUIL
	db 61
	dw ABRA
	db 62
	dw DODUO
	db 62
	dw MACHOP
	db 61
	dw TOTODILE
	db 62
	dw SWABLU
	db -1 ; end

	next_list_item ; CAMPER (24)
	db "AICH@", TRAINERTYPE_ITEM
	db 90
	dw SCEPTILE
	db MIRACLE_SEED
	db 89
	dw PUPITAR
	db GOLD_BERRY
	db 90
	dw SHELGON
	db POLKADOT_BOW
	db 90
	dw JUMPLUFF
	db LEFTOVERS
	db 89
	dw SANDSLASH
	db KINGS_ROCK
	db 90
	dw GLIGAR
	db SOFT_SAND
	db -1 ; end

	next_list_item ; CAMPER (25)
	db "JAMES@", TRAINERTYPE_NORMAL
	db 78
	dw SYLVEON
	db -1 ; end

	end_list_items

SageGroup:
	next_list_item ; SAGE (1)
	db "CHOW@", TRAINERTYPE_NORMAL
	db 6
	dw BELLSPROUT
	db 6
	dw BELLSPROUT
	db 6
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (2)
	db "NICO@", TRAINERTYPE_NORMAL
	db 6
	dw BELLSPROUT
	db 6
	dw BELLSPROUT
	db 6
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (3)
	db "JIN@", TRAINERTYPE_NORMAL
	db 9
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (4)
	db "TROY@", TRAINERTYPE_NORMAL
	db 10
	dw BELLSPROUT
	db 10
	dw HOOTHOOT
	db -1 ; end

	next_list_item ; SAGE (5)
	db "JEFFREY@", TRAINERTYPE_NORMAL
	db 31
	dw MISDREAVUS
	db -1 ; end

	next_list_item ; SAGE (6)
	db "PING@", TRAINERTYPE_NORMAL
	db 28
	dw GASTLY
	db 28
	dw GASTLY
	db 28
	dw GASTLY
	db 28
	dw GASTLY
	db 28
	dw GASTLY
	db -1 ; end

	next_list_item ; SAGE (7)
	db "EDMOND@", TRAINERTYPE_NORMAL
	db 6
	dw BELLSPROUT
	db 6
	dw BELLSPROUT
	db 6
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (8)
	db "NEAL@", TRAINERTYPE_NORMAL
	db 11
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (10)
	db "GAKU@", TRAINERTYPE_NORMAL
	db 52
	dw NOCTOWL
	db 52
	dw FLAREON
	db -1 ; end

	next_list_item ; SAGE (11)
	db "MASA@", TRAINERTYPE_NORMAL
	db 52
	dw NOCTOWL
	db 52
	dw JOLTEON
	db -1 ; end

	next_list_item ; SAGE (12)
	db "YIN@", TRAINERTYPE_NORMAL
	db 63
	dw LITWICK
	db 64
	dw LAMPENT
	db 65
	dw CHANDELURE
	db -1 ; end

	next_list_item ; SAGE (12)
	db "YANG@", TRAINERTYPE_NORMAL
	db 63
	dw DUSKULL
	db 64
	dw DUSCLOPS
	db 65
	dw DUSKNOIR
	db -1 ; end

	next_list_item ; SAGE (13)
	db "GRUND@", TRAINERTYPE_NORMAL
	db 60
	dw WOBBUFFET
	db 59
	dw SWINUB
	db 60
	dw SENTRET
	db 60
	dw HOOTHOOT
	db 59
	dw KIRLIA
	db 60
	dw WINGULL
	db -1 ; end

	next_list_item ; SAGE (14)
	db "ORSAK@", TRAINERTYPE_ITEM
	db 74
	dw LEDIAN
	db GOLD_BERRY
	db 73
	dw SABLEYE
	db GOLD_BERRY
	db 74
	dw FLAAFFY
	db BRIGHTPOWDER
	db 74
	dw YANMA
	db GOLD_BERRY
	db 73
	dw RIBOMBEE
	db ICE_BERRY
	db 74
	dw GLOOM
	db SILVERPOWDER
	db -1 ; end

	next_list_item ; SAGE (15)
	db "BERLO@", TRAINERTYPE_ITEM
	db 92
	dw ESPEON
	db BRIGHTPOWDER
	db 91
	dw TENTACRUEL
	db LEFTOVERS
	db 92
	dw FLAREON
	db GOLD_BERRY
	db 92
	dw STANTLER
	db MIRACLEBERRY
	db 91
	dw SEAKING
	db MIRACLEBERRY
	db 92
	dw MAGCARGO
	db CHARCOAL
	db -1 ; end

	end_list_items

MediumGroup:
	next_list_item ; MEDIUM (1)
	db "MARTHA@", TRAINERTYPE_NORMAL
	db 28
	dw GASTLY
	db 30
	dw HAUNTER
	db 30
	dw GENGAR
	db -1 ; end

	next_list_item ; MEDIUM (2)
	db "GRACE@", TRAINERTYPE_NORMAL
	db 30
	dw HAUNTER
	db 30
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (3)
	db "BETHANY@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (4)
	db "MARGRET@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (5)
	db "ETHEL@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (6)
	db "REBECCA@", TRAINERTYPE_NORMAL
	db 59
	dw HYPNO
	db 59
	dw HYPNO
	db -1 ; end

	next_list_item ; MEDIUM (7)
	db "DORIS@", TRAINERTYPE_NORMAL
	db 59
	dw SLOWKING
	db 59
	dw SLOWBRO
	db -1 ; end

	next_list_item ; MEDIUM (8)
	db "CARLY@", TRAINERTYPE_NORMAL
	db 67
	dw GENGAR
	db -1 ; end

	next_list_item ; MEDIUM (9)
	db "LAUREL@", TRAINERTYPE_NORMAL
	db 65
	dw GENGAR
	db 65
	dw KANGASKHAN
	db 65
	dw MAROWAK
	db -1 ; end

	next_list_item ; MEDIUM (10)
	db "PATRICIA@", TRAINERTYPE_NORMAL
	db 67
	dw MISDREAVUS
	db -1 ; end

	next_list_item ; MEDIUM (11)
	db "MYOG@", TRAINERTYPE_NORMAL
	db 62
	dw MUDKIP
	db 61
	dw CHIKORITA
	db 62
	dw GOLDEEN
	db 62
	dw ODDISH
	db 61
	dw PSYDUCK
	db 62
	dw NATU
	db -1 ; end

	next_list_item ; MEDIUM (12)
	db "GRENAY@", TRAINERTYPE_ITEM
	db 73
	dw GRAVELER
	db MIRACLEBERRY
	db 72
	dw AIPOM
	db GOLD_BERRY
	db 73
	dw HELIOPTILE
	db BERRY
	db 73
	dw OMANYTE
	db MYSTERYBERRY
	db 72
	dw LILEEP
	db BITTER_BERRY
	db 73
	dw DUNSPARCE
	db MIRACLEBERRY
	db -1 ; end

	next_list_item ; MEDIUM (13)
	db "PERSTIN@", TRAINERTYPE_ITEM
	db 83
	dw TORTERRA
	db SCOPE_LENS
	db 82
	dw ELECTRODE
	db MAGNET
	db 83
	dw EXPLOUD
	db GOLD_BERRY
	db 83
	dw TENTACRUEL
	db MYSTIC_WATER
	db 82
	dw GOLEM
	db MIRACLEBERRY
	db 83
	dw FROSLASS
	db NEVERMELTICE
	db -1 ; end

	next_list_item ; MEDIUM (14)
	db "DESOR@", TRAINERTYPE_ITEM
	db 96
	dw MEGANIUM
	db GOLD_BERRY
	db 95
	dw TYPHLOSION
	db FOCUS_BAND
	db 96
	dw FERALIGATR
	db SCOPE_LENS
	db 96
	dw ESPEON
	db BRIGHTPOWDER
	db 95
	dw UMBREON
	db LEFTOVERS
	db 96
	dw PINSIR
	db MIRACLEBERRY
	db -1 ; end

	next_list_item ; MEDIUM (15)
	db "PHOEBE@", TRAINERTYPE_NORMAL
	db 82
	dw SABLEYE
	db -1 ; end

	end_list_items

PicnickerGroup:
	next_list_item ; PICNICKER (1)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 16
	dw NIDORAN_F
	db -1 ; end

	next_list_item ; PICNICKER (2)
	db "GINA@", TRAINERTYPE_NORMAL
	db 20
	dw SKIPLOOM
	db 20
	dw SKIPLOOM
	db 23
	dw IVYSAUR
	db -1 ; end

	next_list_item ; PICNICKER (3)
	db "BROOKE@", TRAINERTYPE_NORMAL
	db 26
	dw PIKACHU
	db -1 ; end

	next_list_item ; PICNICKER (4)
	db "KIM@", TRAINERTYPE_NORMAL
	db 26
	dw VULPIX
	db -1 ; end

	next_list_item ; PICNICKER (5)
	db "CINDY@", TRAINERTYPE_NORMAL
	db 64
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (6)
	db "HOPE@", TRAINERTYPE_NORMAL
	db 72
	dw AMPHAROS
	db -1 ; end

	next_list_item ; PICNICKER (7)
	db "SHARON@", TRAINERTYPE_NORMAL
	db 69
	dw FURRET
	db 71
	dw RAPIDASH
	db -1 ; end

	next_list_item ; PICNICKER (8)
	db "DEBRA@", TRAINERTYPE_NORMAL
	db 56
	dw SEAKING
	db -1 ; end

	next_list_item ; PICNICKER (9)
	db "GINA@", TRAINERTYPE_NORMAL
	db 41
	dw JUMPLUFF
	db 41
	dw JUMPLUFF
	db 44
	dw VENUSAUR
	db -1 ; end

	next_list_item ; PICNICKER (10)
	db "ERIN@", TRAINERTYPE_NORMAL
	db 29
	dw PONYTA
	db 29
	dw PONYTA
	db -1 ; end

	next_list_item ; PICNICKER (11)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 30
	dw WEEPINBELL
	db 30
	dw NIDORINA
	db -1 ; end

	next_list_item ; PICNICKER (12)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 52
	dw WEEPINBELL
	db 52
	dw NIDORINO
	db 52
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (13)
	db "HEIDI@", TRAINERTYPE_NORMAL
	db 67
	dw JUMPLUFF
	db 67
	dw JUMPLUFF
	db -1 ; end

	next_list_item ; PICNICKER (14)
	db "EDNA@", TRAINERTYPE_NORMAL
	db 63
	dw NIDORINA
	db 67
	dw RAICHU
	db -1 ; end

	next_list_item ; PICNICKER (15)
	db "GINA@", TRAINERTYPE_NORMAL
	db 49
	dw JUMPLUFF
	db 49
	dw JUMPLUFF
	db 52
	dw VENUSAUR
	db -1 ; end

	next_list_item ; PICNICKER (16)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 48
	dw CLEFAIRY
	dw MOONLIGHT, SING, DOUBLESLAP, MINIMIZE
	db -1 ; end

	next_list_item ; PICNICKER (17)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 53
	dw CLEFAIRY
	dw MOONLIGHT, SING, DOUBLESLAP, MINIMIZE
	db -1 ; end

	next_list_item ; PICNICKER (18)
	db "ERIN@", TRAINERTYPE_NORMAL
	db 32
	dw PONYTA
	db 32
	dw PONYTA
	db -1 ; end

	next_list_item ; PICNICKER (19)
	db "TANYA@", TRAINERTYPE_NORMAL
	db 61
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; PICNICKER (20)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 70
	dw CLEFAIRY
	dw MOONLIGHT, SING, DOUBLESLAP, MINIMIZE
	db -1 ; end

	next_list_item ; PICNICKER (21)
	db "ERIN@", TRAINERTYPE_MOVES
	db 36
	dw PONYTA
	dw DOUBLE_TEAM, STOMP, FIRE_SPIN, SUNNY_DAY
	db 34
	dw RAICHU
	dw SWIFT, MUD_SLAP, QUICK_ATTACK, THUNDERBOLT
	db 36
	dw PONYTA
	dw DOUBLE_TEAM, STOMP, FIRE_SPIN, SUNNY_DAY
	db -1 ; end

	next_list_item ; PICNICKER (22)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 68
	dw VICTREEBEL
	db 68
	dw NIDOKING
	db 68
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (23)
	db "LIZ@", TRAINERTYPE_MOVES
	db 77
	dw VICTREEBEL
	dw SLEEP_POWDER, GROWTH, GIGA_DRAIN, SLUDGE_BOMB
	db 79
	dw NIDOKING
	dw EARTHQUAKE, SLUDGE_BOMB, HORN_DRILL, IRON_TAIL
	db 79
	dw NIDOQUEEN
	dw EARTHQUAKE, SLUDGE_BOMB, TAIL_WHIP, BODY_SLAM
	db -1 ; end

	next_list_item ; PICNICKER (24)
	db "GINA@", TRAINERTYPE_NORMAL
	db 67
	dw JUMPLUFF
	db 67
	dw JUMPLUFF
	db 69
	dw VENUSAUR
	db -1 ; end

	next_list_item ; PICNICKER (25)
	db "GINA@", TRAINERTYPE_MOVES
	db 77
	dw JUMPLUFF
	dw SLEEP_POWDER, SUNNY_DAY, LEECH_SEED, SOLARBEAM
	db 77
	dw JUMPLUFF
	dw GIGA_DRAIN, SLEEP_POWDER, LEECH_SEED, RETURN
	db 79
	dw VENUSAUR
	dw SLUDGE_BOMB, RAZOR_LEAF, HEADBUTT, MUD_SLAP
	db -1 ; end

	next_list_item ; PICNICKER (26)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 80
	dw CLEFAIRY
	dw MOONLIGHT, SING, DOUBLESLAP, MINIMIZE
	db -1 ; end

	next_list_item ; PICNICKER (27)
	db "MALOO@", TRAINERTYPE_NORMAL
	db 64
	dw BAYLEEF
	db 63
	dw IVYSAUR
	db 64
	dw SKIPLOOM
	db 64
	dw LILEEP
	db 63
	dw GLOOM
	db 64
	dw GROVYLE
	db -1 ; end

	next_list_item ; PICNICKER (28)
	db "ZIALE@", TRAINERTYPE_ITEM
	db 84
	dw CRADILY
	db BRIGHTPOWDER
	db 83
	dw PINSIR
	db LEFTOVERS
	db 84
	dw OMANYTE
	db GOLD_BERRY
	db 84
	dw MILTANK
	db MIRACLEBERRY
	db 83
	dw KROKOROK
	db BRIGHTPOWDER
	db 84
	dw WAILORD
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; PICNICKER (29)
	db "NOMOL@", TRAINERTYPE_ITEM
	db 95
	dw RAIKOU
	db MAGNET
	db 94
	dw NINETALES
	db MYSTERYBERRY
	db 95
	dw WEEZING
	db POISON_BARB
	db 95
	dw SHUCKLE
	db BRIGHTPOWDER
	db 94
	dw KABUTOPS
	db SCOPE_LENS
	db 95
	dw XATU
	db BRIGHTPOWDER
	db -1 ; end

	next_list_item ; PICNICKER (30)
	db "JESSIE@", TRAINERTYPE_NORMAL
	db 76
	dw DELCATTY
	db 76
	dw ALTARIA
	db -1 ; end

	end_list_items

PsychicGroup:
	next_list_item ; PSYCHIC_T (1)
	db "NATHAN@", TRAINERTYPE_NORMAL
	db 26
	dw GIRAFARIG
	db -1 ; end

	next_list_item ; PSYCHIC_T (2)
	db "FRANKLIN@", TRAINERTYPE_NORMAL
	db 60
	dw ALAKAZAM
	db -1 ; end

	next_list_item ; PSYCHIC_T (3)
	db "HERMAN@", TRAINERTYPE_NORMAL
	db 75
	dw EXEGGCUTE
	db 64
	dw EXEGGUTOR
	db 64
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; PSYCHIC_T (4)
	db "FIDEL@", TRAINERTYPE_NORMAL
	db 66
	dw XATU
	db -1 ; end

	next_list_item ; PSYCHIC_T (5)
	db "GREG@", TRAINERTYPE_MOVES
	db 31
	dw DROWZEE
	dw HYPNOSIS, HEADBUTT, DREAM_EATER, CONFUSION
	db -1 ; end

	next_list_item ; PSYCHIC_T (6)
	db "NORMAN@", TRAINERTYPE_MOVES
	db 31
	dw SLOWPOKE
	dw DISABLE, GROWL, WATER_GUN, CONFUSION
	db 34
	dw SLOWKING
	dw CURSE, BODY_SLAM, WATER_GUN, CONFUSION
	db -1 ; end

	next_list_item ; PSYCHIC_T (7)
	db "MARK@", TRAINERTYPE_MOVES
	db 24
	dw KADABRA
	dw DISABLE, KINESIS, PSYBEAM, FLASH
	db 24
	dw KADABRA
	dw DISABLE, KINESIS, PSYBEAM, FLASH
	db 26
	dw KADABRA
	dw DISABLE, RECOVER, PSYBEAM, KINESIS
	db -1 ; end

	next_list_item ; PSYCHIC_T (8)
	db "PHIL@", TRAINERTYPE_MOVES
	db 50
	dw XATU
	dw PSYCHIC_M, NIGHT_SHADE, FUTURE_SIGHT, CONFUSE_RAY
	db 52
	dw ALAKAZAM
	dw REFLECT, PSYCHIC_M, RECOVER, FUTURE_SIGHT
	db -1 ; end

	next_list_item ; PSYCHIC_T (9)
	db "RICHARD@", TRAINERTYPE_NORMAL
	db 75
	dw ESPEON
	db -1 ; end

	next_list_item ; PSYCHIC_T (10)
	db "GILBERT@", TRAINERTYPE_NORMAL
	db 70
	dw STARMIE
	db 70
	dw EXEGGUTOR
	db 74
	dw GIRAFARIG
	db -1 ; end

	next_list_item ; PSYCHIC_T (11)
	db "JARED@", TRAINERTYPE_NORMAL
	db 56
	dw MR__MIME
	db 56
	dw EXEGGUTOR
	db 59
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; PSYCHIC_T (12)
	db "RODNEY@", TRAINERTYPE_NORMAL
	db 52
	dw HYPNO
	db 55
	dw HYPNO
	db -1 ; end

	next_list_item ; PSYCHIC_T (13)
	db "JOSHUA@", TRAINERTYPE_NORMAL
	db 81
	dw ALAKAZAM
	db 81
	dw BRONZONG
	db -1 ; end

	next_list_item ; PSYCHIC_T (14)
	db "ALEXIS@", TRAINERTYPE_NORMAL
	db 80
	dw GARDEVOIR
	db 80
	dw XATU
	db 80
	dw ALAKAZAM
	db -1 ; end

	end_list_items

GruntFGroup:
	next_list_item ; GRUNTF (1)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 16
	dw ZUBAT
	db 18
	dw EKANS
	db -1 ; end

	next_list_item ; GRUNTF (2)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 51
	dw ARBOK
	db -1 ; end

	next_list_item ; GRUNTF (3)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 50
	dw VILEPLUME
	db 50
	dw BELLOSSOM
	db -1 ; end

	next_list_item ; GRUNTF (4)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 47
	dw ARBOK
	db 49
	dw VILEPLUME
	db 47
	dw ARBOK
	db 50
	dw BELLOSSOM
	db -1 ; end

	next_list_item ; GRUNTF (5)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 47
	dw ARBOK
	db 47
	dw VILEPLUME
	db -1 ; end

	next_list_item ; GRUNTF (6)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 71
	dw TOXICROAK
	db 71
	dw ABSOL
	db -1 ; end

	end_list_items

KimonoGirlGroup:
	next_list_item; KIMONO_GIRL (1)
	db "NAOKO@", TRAINERTYPE_NORMAL
	db 32
	dw FLAREON
	db -1 ; end

	next_list_item; KIMONO_GIRL (2)
	db "SAYO@", TRAINERTYPE_NORMAL
	db 32
	dw ESPEON
	db -1 ; end

	next_list_item; KIMONO_GIRL (3)
	db "ZUKI@", TRAINERTYPE_NORMAL
	db 32
	dw UMBREON
	db -1 ; end

	next_list_item; KIMONO_GIRL (4)
	db "KUNI@", TRAINERTYPE_NORMAL
	db 32
	dw VAPOREON
	db -1 ; end

	next_list_item; KIMONO_GIRL (5)
	db "MIKI@", TRAINERTYPE_NORMAL
	db 32
	dw JOLTEON
	db -1 ; end

	next_list_item; KIMONO_GIRL (6)
	db "LINNEA@", TRAINERTYPE_NORMAL
	db 32
	dw LEAFEON
	db -1 ; end

	next_list_item; KIMONO_GIRL (7)
	db "REA@", TRAINERTYPE_NORMAL
	db 32
	dw GLACEON
	db -1 ; end

	next_list_item; KIMONO_GIRL (8)
	db "SAKUYA@", TRAINERTYPE_NORMAL
	db 32
	dw SYLVEON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (9)
	db "DESSA@", TRAINERTYPE_ITEM_MOVES
	db 90
	dw GROUDON
	db KINGS_ROCK
	dw ANCIENTPOWER, SLASH, EARTHQUAKE, FLAMETHROWER
	db 89
	dw CHANDELURE
	db CHARCOAL
	dw WILL_O_WISP, NIGHT_SHADE, FLAME_WHEEL, CONFUSE_RAY
	db 90
	dw SHUCKLE
	db LEFTOVERS
	dw CONSTRICT, WITHDRAW, ENCORE, SAFEGUARD
	db 90
	dw ELECTRODE
	db BITTER_BERRY
	dw SONICBOOM, SPARK, THUNDER, SHOCK_WAVE
	db 89
	dw JUMPLUFF
	db BRIGHTPOWDER
	dw SLEEP_POWDER, LEECH_SEED, COTTON_SPORE, MEGA_DRAIN
	db 90
	dw SKUNTANK
	db GOLD_BERRY
	dw NIGHT_SLASH, SLUDGE, ENCORE, SNATCH
	db -1 ; end

	end_list_items
	
BlueMayGroup:
	next_list_item ; MARINA
	db "MARINA@", TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 100
	dw VENUSAUR
	bigdw $FFFF
	bigdw 288
	bigdw 159
	bigdw 188
	bigdw 166
	bigdw 231
	bigdw 210
	db "VVOOOOOOIC@"

	db 100
	dw MEW
	bigdw $FFFF
	bigdw 339
	bigdw 227
	bigdw 227
	bigdw 207
	bigdw 216
	bigdw 193
	db "MMMMMMMMGG@"

	db 100
	dw SCIZOR
	bigdw $0FFF
	bigdw 273
	bigdw 226
	bigdw 213
	bigdw 157
	bigdw 156
	bigdw 154
	db "JJJJJJJJJJ@"

	db 100
	dw GENGAR
	bigdw $0FFF
	bigdw 240
	bigdw 150
	bigdw 130
	bigdw 236
	bigdw 266
	bigdw 180
	db "IIHBAAAMMM@"

	db 100
	dw SLOWKING
	bigdw $0FFF
	bigdw 310
	bigdw 173
	bigdw 132
	bigdw 75
	bigdw 186
	bigdw 252
	db "AAAAAAAAAA@"

	db 100
	dw GROUDON
	bigdw $FFFF
	bigdw 334
	bigdw 327
	bigdw 319
	bigdw 188
	bigdw 217
	bigdw 189
	db "KENNNNNNNN@"

	db -1 ; end

	end_list_items
