; Trainer data structure:
; - db "NAME@", TRAINERTYPE_* constant
; - 1 to 6 Pokémon:
;    * for TRAINERTYPE_NORMAL:     db level, species
;    * for TRAINERTYPE_MOVES:      db level, species, 4 moves
;    * for TRAINERTYPE_ITEM:       db level, species, item
;    * for TRAINERTYPE_ITEM_MOVES: db level, species, item, 4 moves
; - db -1 ; end

SECTION "Enemy Trainer Parties 1", ROMX
	
GSCKrisGroup:
	
	next_list_item ; EWWYPPP
	db "EWWYPPP@",  TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 12
	dw SENTRET 
	db POKE_BALL
	dw QUICK_ATTACK, DEFENSE_CURL, TACKLE, FURY_SWIPES
	bigdw $0FFF
	bigdw 32
	bigdw 18
	bigdw 15
	bigdw 12
	bigdw 14
	bigdw 17
	db "HHHIIIIHGH@"
	
	db 15
	dw GEODUDE 
	db NO_ITEM
	dw ROCK_THROW, DEFENSE_CURL, TACKLE, NO_MOVE
	bigdw $FFFF
	bigdw 40
	bigdw 34
	bigdw 36
	bigdw 13
	bigdw 15
	bigdw 15
	db "!!@"
	
	db 12
	dw PIDGEY 
	db POKE_BALL
	dw QUICK_ATTACK, GUST, TACKLE, SAND_ATTACK
	bigdw $FFFF
	bigdw 32
	bigdw 18
	bigdw 15
	bigdw 21
	bigdw 15
	bigdw 15
	db "PIDGEY@"

	db 13
	dw GEODUDE 
	db EVERSTONE
	dw ROCK_THROW, DEFENSE_CURL, TACKLE, NO_MOVE
	bigdw $0FFF
	bigdw 34
	bigdw 24
	bigdw 34
	bigdw 13
	bigdw 16
	bigdw 16
	db "XXYYY  WWP@"
	
	db 8
	dw WEEDLE 
	db POKE_BALL
	dw POISON_STING, STRING_SHOT, NO_MOVE, NO_MOVE
	bigdw $FFFF
	bigdw 26
	bigdw 12
	bigdw 11
	bigdw 13
	bigdw 10
	bigdw 10
	db "WEEDLE@"

	db 20
	dw TOTODILE 
	db NO_ITEM
	dw BITE, LEER, RAGE, WATER_GUN
	bigdw $FFFF
	bigdw 55
	bigdw 36
	bigdw 34
	bigdw 30
	bigdw 28
	bigdw 29
	db "TOTODILE@"
	
	db -1 ; end
	
	end_list_items
	
ACChrisGroup:
	next_list_item ; EVAN
	db "EVAN@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 29
	dw IVYSAUR
	db POKE_BALL
	dw RAZOR_LEAF, GROWTH, LEECH_SEED, HEADBUTT
	bigdw $FFFF
	bigdw 87
	bigdw 52
	bigdw 57
	bigdw 47
	bigdw 60
	bigdw 60
	db "ul:::utx@" 
	
	db 6
	dw RATTATA 
	db NO_ITEM
	dw TACKLE, GROWL, PURSUIT, NO_MOVE
	bigdw $FFFF
	bigdw 20
	bigdw 13
	bigdw 11
	bigdw 15
	bigdw 9
	bigdw 10
	db "/UluUDCC?T@" 
	
	db 6
	dw MAGIKARP
	db NO_ITEM
	dw SPLASH, TACKLE, NO_MOVE, NO_MOVE
	bigdw $FFFF
	bigdw 19
	bigdw 7
	bigdw 12
	bigdw 14
	bigdw 7
	bigdw 8
	db "VVvvv:;;;@"
	
	db 8
	dw FARFETCH_D
	db NO_ITEM
	dw GUST, SAND_ATTACK, FURY_ATTACK, NO_MOVE
	bigdw $0FFF
	bigdw 28
	bigdw 17
	bigdw 15
	bigdw 16
	bigdw 16
	bigdw 16
	db "zzqqqqqh@" 
	
	db -1 ; end
	
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
	
	end_list_items
	
FCChrisGroup:
	next_list_item ; Y_FUSEDCRYSTAL
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
RSEORASMayGroup:
	
	next_list_item ; QQ
	db "!!0999  qq@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	
	db 25
	dw SPEAROW ;add rufflet 
	db NO_ITEM
	dw SKULL_BASH, SLASH, NO_MOVE, NO_MOVE ;add aqua jet and bulldoze
	bigdw $FFFF
	bigdw 67
	bigdw 49
	bigdw 43
	bigdw 54
	bigdw 39
	bigdw 35
	db "5%08e222rr@" 
	
	db 29
	dw MEOWTH ;add glameow
	db NO_ITEM
	dw LICK, FISSURE, NO_MOVE, NO_MOVE ;add lands wrath, sky drop
	bigdw $FFFF
	bigdw 70
	bigdw 50
	bigdw 36
	bigdw 54
	bigdw 39
	bigdw 35
	db "ézzxééééé:@" 
	
	db 30
	dw HAUNTER ; add LAMPENT 
	db NO_ITEM
	dw DREAM_EATER, NO_MOVE, NO_MOVE, NO_MOVE ;add quiver dance, shadow punch
	bigdw $FFFF
	bigdw 73
	bigdw 46
	bigdw 58
	bigdw 53
	bigdw 63
	bigdw 50
	db " !!!!r@" 
	
	db 27
	dw KINGLER
	db NO_ITEM
	dw MIST, NO_MOVE, NO_MOVE, NO_MOVE ;add Fairy wind, oblivion wing, night slash
	bigdw $0FFF
	bigdw 61
	bigdw 71
	bigdw 82
	bigdw 51
	bigdw 40
	bigdw 36
	db "gg9pp@" 
	
	db 24
	dw CORSOLA
	db NO_ITEM
	dw SING, FURY_CUTTER, NO_MOVE, NO_MOVE ;add Head Charge, metal burst
	bigdw $FFFF
	bigdw 64
	bigdw 26
	bigdw 42
	bigdw 26
	bigdw 39
	bigdw 53
	db "AAARRMN@"
	
	db 20
	dw CHIKORITA ;add shroomish
	db NO_ITEM
	dw ENDEAVOR, NO_MOVE, NO_MOVE, NO_MOVE ;add uproar, defog
	bigdw $FFFF
	bigdw 52
	bigdw 22
	bigdw 29
	bigdw 22
	bigdw 22
	bigdw 33
	db "Shroomish@"
	
	db -1 ; end
	
	next_list_item ; PETRA
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
RSEORASBlueMayGroup:
	next_list_item ; HNV
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	next_list_item ; MARINA
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
RSEORASBrendanGroup:
	next_list_item ; RTHASZS
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	next_list_item ; EBNEERT
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
FRLGLeafGroup:
	next_list_item ; A_FIRERED
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	next_list_item ; AATATAT
	db "AAtatat@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 14
	dw BUTTERFREE
	db POKE_BALL
	dw TACKLE, STRING_SHOT, CONFUSION, HARDEN 
	bigdw $0FFF
	bigdw 59
	bigdw 48
	bigdw 38
	bigdw 39
	bigdw 21
	bigdw 29
	db "BUTTERFREE@" 
	
	db 9
	dw RATTATA
	db NO_ITEM
	dw TACKLE, TAIL_WHIP, QUICK_ATTACK, CUT
	bigdw $0FFF
	bigdw 25
	bigdw 17
	bigdw 13
	bigdw 20
	bigdw 9
	bigdw 11
	db "TTUUVVVVC@" 
	
	db 32
	dw CHARMELEON
	db POTION
	dw EMBER, GROWL, SCRATCH, SMOKESCREEN
	bigdw $0FFF
	bigdw 87
	bigdw 56
	bigdw 49
	bigdw 77
	bigdw 57
	bigdw 49
	db "FFF@"
	
	db 30
	dw PIDGEOTTO
	db NO_ITEM
	dw TACKLE, WING_ATTACK, SAND_ATTACK, QUICK_ATTACK
	bigdw $0FFF
	bigdw 82
	bigdw 53
	bigdw 41
	bigdw 58
	bigdw 38
	bigdw 33
	db "T@" 
	
	db 14
	dw ODDISH
	db NO_ITEM
	dw POISONPOWDER, SWEET_SCENT, ABSORB, NO_MOVE
	bigdw $0FFF
	bigdw 39
	bigdw 20
	bigdw 21
	bigdw 14
	bigdw 29
	bigdw 23
	db "AAACCCVV@" 
	
	db 11
	dw PIDGEY 
	db NO_ITEM
	dw TACKLE, GUST, SAND_ATTACK, NO_MOVE 
	bigdw $0FFF
	bigdw 32
	bigdw 17
	bigdw 15
	bigdw 15
	bigdw 15
	bigdw 13
	db "AAAAATTTTT@" 
	db -1 ; end
	
	next_list_item ; PAULA_SWEET
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	next_list_item ; DOOT
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
ColoWesGroup:
	next_list_item ; AAAAAAA
	db "AAAAAAA@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 51
	dw MISDREAVUS
	db BURN_HEAL
	dw SHADOW_BALL, CONFUSE_RAY, PSYBEAM, MEAN_LOOK 
	bigdw $FFFF
	bigdw 164
	bigdw 123
	bigdw 111
	bigdw 80
	bigdw 95
	bigdw 94
	db "AAAAAAAAAA@" 
	
	db 37
	dw ESPEON
	db POKE_BALL
	dw CONFUSION, REFLECT, PSYBEAM, NO_MOVE
	bigdw $FFFF
	bigdw 125
	bigdw 81
	bigdw 83
	bigdw 97
	bigdw 77
	bigdw 89
	db "ESPEON@" 
	
	db 44
	dw UMBREON
	db NO_ITEM
	dw MEAN_LOOK, NO_MOVE, NO_MOVE, NO_MOVE ;add snatch, taunt, secret power
	bigdw $0FFF
	bigdw 118
	bigdw 74
	bigdw 89
	bigdw 74
	bigdw 67
	bigdw 111
	db "UMBREON@"
	
	db 44
	dw JUMPLUFF
	db NO_ITEM
	dw MEGA_DRAIN, COTTON_SPORE, SLEEP_POWDER, SYNTHESIS 
	bigdw $FFFF
	bigdw 140
	bigdw 135
	bigdw 151
	bigdw 118
	bigdw 84
	bigdw 77
	db "AAAAKLV" 
	
	db 44
	dw BAYLEEF
	db NO_ITEM
	dw TOXIC, SYNTHESIS, RAZOR_LEAF, BODY_SLAM
	bigdw $FFFF
	bigdw 133
	bigdw 69
	bigdw 144
	bigdw 67
	bigdw 96
	bigdw 165
	db "BAYLEEF@" 
	db -1 ; end
	
	next_list_item ; ACCC
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
XDMichaelGroup:
	next_list_item ; ABBBCC
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	next_list_item ; STARS
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
PTDawnGroup:
	next_list_item ; IECBW
	db ".iecbw@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 48
	dw VENUSAUR ;add torterra
	db BLUESKY_MAIL
	dw CURSE, RAZOR_LEAF, SYNTHESIS, NO_MOVE ;add rock climb 
	bigdw $FFFF
	bigdw 164
	bigdw 123
	bigdw 111
	bigdw 80
	bigdw 95
	bigdw 94
	db "BFG@" 
	
	db 43
	dw SEAKING ;add luminion
	db MYSTIC_WATER
	dw SURF, ATTRACT, RAIN_DANCE, ICE_BEAM
	bigdw $FFFF
	bigdw 125
	bigdw 81
	bigdw 83
	bigdw 97
	bigdw 77
	bigdw 89
	db "AACm  neg@" 
	
	db 42
	dw DRAGONITE ;add altaria
	db BLUESKY_MAIL
	dw DRAGONBREATH, FIRE_BLAST, FLY, NO_MOVE ;add dragon dance
	bigdw $0FFF
	bigdw 118
	bigdw 74
	bigdw 89
	bigdw 74
	bigdw 67
	bigdw 111
	db "!!@"
	
	db 49
	dw TANGELA ; add LEAFEON
	db BLUESKY_MAIL
	dw GIGA_DRAIN, STRENGTH, SYNTHESIS, NO_MOVE ;add bullet seed
	bigdw $FFFF
	bigdw 140
	bigdw 135
	bigdw 151
	bigdw 118
	bigdw 84
	bigdw 77
	db "???')!@" 
	
	db 49
	dw GOLEM ;add probopass
	db BLUESKY_MAIL
	dw THUNDER_WAVE, ROCK_SMASH, NO_MOVE, NO_MOVE ;add power gem, flash cannon
	bigdw $FFFF
	bigdw 133
	bigdw 69
	bigdw 144
	bigdw 67
	bigdw 96
	bigdw 165
	db "GUUEEEEFFn@" 
	
	db 51
	dw SNEASEL ;add weavile 
	db BLUESKY_MAIL
	dw METAL_CLAW, SLASH, ICE_PUNCH, NO_MOVE  ;add brick break
	bigdw $FFFF
	bigdw 133
	bigdw 158
	bigdw 65
	bigdw 157
	bigdw 57
	bigdw 103
	db "AAAL@" 
	db -1 ; end
	
	end_list_items
	
PTLucasGroup:
	next_list_item ; NQPPPNL
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	next_list_item ; PP
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
HGSSLyraGroup:
	next_list_item ; AOOOO
	db "aoooo@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	
	db 16
	dw SUDOWOODO ;add bonsly 
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
	dw DIGLETT ;add trapinch 
	db NO_ITEM
	dw SWIFT, NO_MOVE, NO_MOVE, NO_MOVE ;add Hammer Arm, Trump card
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
	dw MAGNITUDE, MUD_SLAP, STRENGTH, NO_MOVE ;add mud bomb
	bigdw $FFFF
	bigdw 28
	bigdw 22
	bigdw 16
	bigdw 35
	bigdw 15
	bigdw 25
	db "?? ((GG6W@"
	
	db 33
	dw HO_OH ;add groudon
	db TM_FURY_CUTTER
	dw SURF, CUT, NO_MOVE, NO_MOVE ;add sand tomb, Focus blast
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
	
BWHilbertGroup:
	next_list_item ; GMYC
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
BWHildaGroup:
	next_list_item ; AAQ
	db "AAQ@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 24
	dw DRATINI ;todo add axew 
	db EON_MAIL
	dw FALSE_SWIPE, DRAGON_RAGE, SLASH, DUAL_CHOP
	bigdw $0FFF
	bigdw 59
	bigdw 48
	bigdw 38
	bigdw 39
	bigdw 21
	bigdw 29
	db "q--------l@" 
	
	db 28
	dw DROWZEE ;add munna 
	db EON_MAIL
	dw PSYBEAM, ZEN_HEADBUTT, NO_MOVE, NO_MOVE ;add Yawn, Synchronise
	bigdw $FFFF
	bigdw 83
	bigdw 24
	bigdw 31
	bigdw 24
	bigdw 47
	bigdw 40
	db ",,,,,((((%@" 
	
	db 18
	dw RATTATA ;add zigzagoon
	db EON_MAIL
	dw TAIL_WHIP, TACKLE, CUT, WORK_UP
	bigdw $FFFF
	bigdw 42
	bigdw 18
	bigdw 21
	bigdw 34
	bigdw 20
	bigdw 18
	db "Zigzagoony@"
	
	db 22
	dw GEODUDE ;add aron
	db NO_ITEM
	dw TACKLE, METAL_CLAW, HEADBUTT, HARDEN
	bigdw $0FFF
	bigdw 61
	bigdw 34
	bigdw 50
	bigdw 21
	bigdw 30
	bigdw 29
	db "Aron@" 
	
	db 27
	dw PIDGEOTTO ;add staravia
	db PORTRAITMAIL
	dw WHIRLWIND, WING_ATTACK, GROWL, QUICK_ATTACK
	bigdw $FFFF
	bigdw 76
	bigdw 45
	bigdw 32
	bigdw 59
	bigdw 27
	bigdw 29
	db "Staravia@" 
	
	db 23
	dw MACHOP ;add croagunk
	db EON_MAIL
	dw PURSUIT, MUD_SLAP, FAINT_ATTACK, REVENGE
	bigdw $FFFF
	bigdw 55
	bigdw 39
	bigdw 30
	bigdw 31
	bigdw 34
	bigdw 27
	db "qwriowy@" 
	db -1
	
	end_list_items
	
B2W2RosaGroup:
	next_list_item ; CLY
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
B2W2NateGroup:
	next_list_item ; AAAALK
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	next_list_item ; R_BLACK2
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
XYCalemGroup:
	next_list_item ; D_XY
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items

XYSerenaGroup:
	next_list_item ; Y_266
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
XYSerena2Group:
	next_list_item ; ETR
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
SMUSUMElioGroup:
	next_list_item ; L_SUN
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
SMUSUMElio2LeaderGroup:
	next_list_item ; D76O6YTTR
	db "d76o6yttr?@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	
	db 25
	dw PIDGEOTTO ; add staravia 
	db STAR_PIECE
	dw WHIRLWIND, GROWL, QUICK_ATTACK, ENDEAVOR
	bigdw $FFFF
	bigdw 65
	bigdw 45
	bigdw 31
	bigdw 50
	bigdw 28
	bigdw 32
	db "Staravia@"
	
	db 26
	dw PIDGEOTTO ; add Trumbeak 
	db STAR_PIECE
	dw FURY_ATTACK, ECHOED_VOICE, ROOST, WING_ATTACK ;add Pluck over wing attack
	bigdw $0FFF
	bigdw 70
	bigdw 53
	bigdw 33
	bigdw 54
	bigdw 32
	bigdw 42
	db "AAAAAAAAMM@"
	
	db 28
	dw QUILAVA ; add Torracat 
	db STAR_PIECE
	dw SWAGGER, LEER, GROWL, LICK 
	bigdw $FFFF
	bigdw 78
	bigdw 49
	bigdw 41
	bigdw 66
	bigdw 55
	bigdw 137
	db "Qs3333eess@"
	
	db 26
	dw FURRET ; add Gumshoos 
	db STAR_PIECE
	dw LEER, BITE, SUPER_FANG, MUD_SLAP 
	bigdw $0FFF
	bigdw 94
	bigdw 74
	bigdw 46
	bigdw 41
	bigdw 38
	bigdw 42
	db "AANNmmmnnn@"
	
	db 27
	dw PIDGEOT ; add Toucannon 
	db NO_ITEM
	dw FURY_ATTACK, GROWL, SUPERSONIC, WING_ATTACK ;add Pluck over wing attack, beak blast over supersonic if you are mad
	bigdw $0FFF
	bigdw 83
	bigdw 72
	bigdw 46
	bigdw 46
	bigdw 49
	bigdw 55
	db "Toucannon@"
	
	db 25
	dw FURRET ; add Linoone 
	db STAR_PIECE
	dw TACKLE, TAIL_WHIP, SAND_ATTACK, COVET 
	bigdw $0FFF
	bigdw 74
	bigdw 49
	bigdw 38
	bigdw 66
	bigdw 35
	bigdw 37
	db "k6'~ MMCMQ@"
	db -1 ; end
	
SMUSUMSeleneGroup:
	next_list_item ; VRG
	db "VRG@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	
	db 31
	dw XATU ; add sigilyph 
	db STAR_PIECE
	dw SURF, NO_MOVE, NO_MOVE, NO_MOVE ;add featherdance, diamond storm, silver wind
	bigdw $FFFF
	bigdw 93
	bigdw 56
	bigdw 70
	bigdw 76
	bigdw 77
	bigdw 53
	db "Sigilyph@"
	
	db 22
	dw MAREEP ; add Electrike 
	db THICK_CLUB
	dw POUND, NO_MOVE, NO_MOVE, NO_MOVE ;add Rock wrecker, Attack order, Thousond waves (electric terrain is not worth it), Pound added to prevent crashes.
	bigdw $0FFF
	bigdw 58
	bigdw 33
	bigdw 54 ;fur coat
	bigdw 37
	bigdw 43
	bigdw 29
	db "Electrike@"
	
	db 24
	dw SUDOWOODO ; add Rockruff 
	db NO_ITEM
	dw DESTINY_BOND, PERISH_SONG, NO_MOVE, NO_MOVE ; add sand tomb and first impression  
	bigdw $0FFF
	bigdw 62
	bigdw 46
	bigdw 31
	bigdw 41
	bigdw 21
	bigdw 25
	db "RockruffIN@"
	
	db 24
	dw CLEFABLE ; add Aromatisse 
	db STAR_PIECE
	dw NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; add u turn, Metal Burst, hyperspace hole, Fluer cannon 
	bigdw $0FFF
	bigdw 85
	bigdw 61
	bigdw 43
	bigdw 20
	bigdw 54
	bigdw 51
	db "Aromatisse@"
	
	db 25
	dw CHIKORITA ; add pansage 
	db NO_ITEM
	dw SMOKESCREEN, NO_MOVE, NO_MOVE, NO_MOVE ;add Petal Blizzard, Roar of time
	bigdw $FFFF
	bigdw 65
	bigdw 37
	bigdw 32
	bigdw 40
	bigdw 40
	bigdw 30
	db "PansagY4@"
	
	db 25
	dw BAYLEEF ; add Steenee 
	db NO_ITEM
	dw SYNTHESIS, ROLLING_KICK, NO_MOVE, NO_MOVE ;add Fell stinger, poison tail
	bigdw $0FFF
	bigdw 64
	bigdw 33
	bigdw 30
	bigdw 36
	bigdw 31
	bigdw 31
	db "Steenee@"
	db -1 ; end
	
	end_list_items
	
SWSHGloriaGroup:
	next_list_item ; RE_SWORD
	db ":::?89977r@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	
	db 14
	dw PIKACHU ; add yamper 
	db LOVE_BALL
	dw TAIL_WHIP, BITE, TACKLE, NUZZLE
	bigdw $FFFF
	bigdw 43
	bigdw 21
	bigdw 21
	bigdw 16
	bigdw 17
	bigdw 19
	db "Yamper@"
	
	db 15
	dw MAGNEMITE ; add klink 
	db TM_RAIN_DANCE
	dw BIND, CHARGE_BEAM, CHARGE, METAL_SOUND
	bigdw $FFFF
	bigdw 44
	bigdw 23
	bigdw 32
	bigdw 22
	bigdw 21
	bigdw 29
	db "Klink@"
	
	db 21
	dw UMBREON ; add Thievul 
	db NO_ITEM
	dw THIEF, TAIL_WHIP, BEAT_UP, HONE_CLAWS 
	bigdw $FFFF
	bigdw 62
	bigdw 35
	bigdw 32
	bigdw 45
	bigdw 33
	bigdw 49
	db "Thievul@"
	
	db 21
	dw PIDGEOTTO ; add Corvisquire 
	db NO_ITEM
	dw LEER, HONE_CLAWS, POWER_TRIP, NO_MOVE ;taunt
	bigdw $FFFF
	bigdw 64
	bigdw 42
	bigdw 29
	bigdw 39
	bigdw 20
	bigdw 33
	db "z@"
	
	db 18
	dw SENTRET ; add wooloo 
	db NO_ITEM
	dw TACKLE, GROWL, DEFENSE_CURL, NO_MOVE ;add CopyCat
	bigdw $0FFF
	bigdw 43
	bigdw 22
	bigdw 24
	bigdw 26
	bigdw 22
	bigdw 26
	db "Wooloo@"
	
	db 17
	dw MAREEP ; add Electrike 
	db NO_ITEM
	dw LEER, QUICK_ATTACK, HOWL, SHOCK_WAVE
	bigdw $0FFF
	bigdw 42
	bigdw 22
	bigdw 19
	bigdw 27
	bigdw 21
	bigdw 35
	db "Electrike@"
	
	db -1 ; end
	
	end_list_items
	
GlazedGroup:
	next_list_item ; AHUNIgg
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
MaribelGroup:
	next_list_item ; AAABBHM
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
NuzlockeGroup:
	next_list_item ; F481
	db "F48@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 21
	dw MANTINE ; add wingull 
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
	dw QUILAVA ;add combusken
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
	dw UMBREON ;TODO add Poochyna
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
	dw MACHOP ;add Makuhita
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
	dw PIDGEY ;add Tailow
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
	dw GEODUDE ;add aron
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
	db 47
	dw SEAKING ; add wailord 
	db EXP_SHARE
	dw REST, ROLLOUT, SURF, NO_MOVE ;add water spout
	bigdw $FFFF
	bigdw 240
	bigdw 117
	bigdw 49
	bigdw 81
	bigdw 107
	bigdw 63
	db "Wu''''2@"
	
	db 49
	dw DRAGONITE ;TODO add flygon
	db AMULET_COIN
	dw BITE, FAINT_ATTACK, DRAGONBREATH, NO_MOVE ;add sand tomb
	bigdw $FFFF
	bigdw 159
	bigdw 127
	bigdw 88
	bigdw 130
	bigdw 90
	bigdw 96
	db "Piiiv@"
	
	db 36
	dw QWILFISH ;TODO add sharpedo 
	db FULL_HEAL
	dw CRUNCH, SCREECH, SLASH, NO_MOVE ;add taunt
	bigdw $0FFF
	bigdw 108
	bigdw 92
	bigdw 38
	bigdw 83
	bigdw 81
	bigdw 45
	db "Sharpedo@"
	
	db 52
	dw RAICHU ;add manectric
	db POKE_BALL
	dw THUNDERBOLT, BITE, THUNDER, HOWL
	bigdw $0FFF
	bigdw 149
	bigdw 85
	bigdw 88
	bigdw 143
	bigdw 136
	bigdw 80
	db "b syro .9@"
	
	db 51
	dw CHARIZARD ;add blaziken
	db RAGECANDYBAR
	dw SLASH, DOUBLE_KICK, NO_MOVE, NO_MOVE ;add Rock tomb, Blaze Kick
	bigdw $FFFF
	bigdw 158
	bigdw 133
	bigdw 85
	bigdw 105
	bigdw 143
	bigdw 100
	db "Zzzzzz mmg@"
	
	db 31
	dw SEEL ;add spheal
	db EXP_SHARE
	dw BODY_SLAM, AURORA_BEAM, ENCORE, NO_MOVE ;add Ice Ball
	bigdw $FFFF
	bigdw 90
	bigdw 35
	bigdw 35
	bigdw 27
	bigdw 47
	bigdw 45
	db "Zzzzzz mmg@"
	
	db -1 ; end
	end_list_items
	
SiriusGroup:
	next_list_item ; BBCBBHH
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
PCyanGroup:
	next_list_item ; CYAN
	db "CYAN@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 14
	dw LARVITAR 
	db NO_ITEM
	dw ROCK_THROW, LEER, SCRATCH, SANDSTORM
	bigdw $4727
	bigdw 41
	bigdw 26
	bigdw 22
	bigdw 19
	bigdw 21
	bigdw 22
	db "Larvitar@"
	
	db 4
	dw PIDGEY ;TODO add tailow 
	db NO_ITEM
	dw PURSUIT, GROWL, NO_MOVE, NO_MOVE
	bigdw $45A5
	bigdw 17
	bigdw 9
	bigdw 7
	bigdw 12
	bigdw 7
	bigdw 7
	db "QYXXWWWVVV@"
	
	db 6
	dw ABRA ;TODO add ralts 
	db NO_ITEM
	dw MUD_SLAP, GROWL, NO_MOVE, NO_MOVE
	bigdw $FB61
	bigdw 20
	bigdw 9
	bigdw 9
	bigdw 10
	bigdw 10
	bigdw 9
	db "IMmMMLLIR@"
	
	db 7
	dw MARILL
	db NO_ITEM
	dw TACKLE, TAIL_WHIP, WATER_GUN, NO_MOVE
	bigdw $1FD4
	bigdw 28
	bigdw 7
	bigdw 14
	bigdw 12
	bigdw 8
	bigdw 12
	db "YYYYXOOOOO@"
	
	; ralts https://www.twitch.tv/videos/93664624?t=42h33m53s
	; marill https://www.twitch.tv/videos/93664624?t=43h54m07s
	db -1 ; end
	
	end_list_items
	
BronzeGroup:
	next_list_item ; FEEFFRR
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
RedLarryGroup:
	next_list_item ; LARRY_R
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
GreenMayGroup:
	next_list_item ; A_EMERALD
	db "A@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 8
	dw ABRA
	db POTION
	dw TELEPORT, NO_MOVE, NO_MOVE, NO_MOVE
	bigdw $FFFF
	bigdw 22
	bigdw 8
	bigdw 9
	bigdw 20
	bigdw 19
	bigdw 14
	db "apf uojkyy@"
	
	db 10
	dw UMBREON ;TODO add poochyena
	db NO_ITEM
	dw SAND_ATTACK, TACKLE, HOWL, NO_MOVE 
	bigdw $0FFF
	bigdw 28
	bigdw 17
	bigdw 14
	bigdw 12
	bigdw 13
	bigdw 11
	db "POOCHYENA@"
	
	db 15
	dw MARILL
	db NO_ITEM
	dw ROLLOUT, DEFENSE_CURL, TAIL_WHIP, TACKLE
	bigdw $0FFF
	bigdw 48
	bigdw 14
	bigdw 23
	bigdw 24
	bigdw 19
	bigdw 26
	db "MARILL@"
	db -1 ; end
	
	next_list_item ; ACCPPQ
	db "ACCPPQ@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	
	db 34
	dw QWILFISH ; add SHARPEDO
	db NO_ITEM
	dw WATERFALL, SCARY_FACE, NO_MOVE, NO_MOVE ;add ice fang, poison fang
	bigdw $FFFF
	bigdw 94
	bigdw 103
	bigdw 35
	bigdw 64
	bigdw 72
	bigdw 37
	db "ABBQS    L@"
	
	db 43
	dw TANGELA ;TODO add gogoat
	db POKE_BALL
	dw RAZOR_LEAF, SYNTHESIS, NO_MOVE, NO_MOVE
	bigdw $0FFF
	bigdw 169
	bigdw 106
	bigdw 66
	bigdw 72
	bigdw 96
	bigdw 90
	db "AAAAAAEEee@"
	
	db 30
	dw STANTLER ;TODO add vigoroth
	db FULL_HEAL
	dw COUNTER, FAINT_ATTACK, NO_MOVE, NO_MOVE ;add night slash, chip away
	bigdw $FFFF
	bigdw 98
	bigdw 56
	bigdw 57
	bigdw 65
	bigdw 49
	bigdw 46
	db "Vigoroth@"
	
	db 32
	dw NOCTOWL  ;add swellow
	db NO_ITEM
	dw FOCUS_ENERGY, QUICK_ATTACK, WING_ATTACK, NO_MOVE
	bigdw $0FFF
	bigdw 84
	bigdw 79
	bigdw 55
	bigdw 92
	bigdw 40
	bigdw 47
	db "AABUUN  SS@"
	
	db 45
	dw AMPHAROS 
	db NO_ITEM
	dw ROCK_SMASH, CONFUSE_RAY, SHOCK_WAVE, NO_MOVE ;add signal beam
	bigdw $0FFF
	bigdw 144
	bigdw 99
	bigdw 89
	bigdw 70
	bigdw 125
	bigdw 97
	db "Ampharos@"
	
	db 30
	dw MAGNEMITE ;add honedge 
	db NO_ITEM
	dw NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ;add shadow claw, shadow sneak, iron head, aerial ace
	bigdw $0FFF
	bigdw 72
	bigdw 62
	bigdw 71
	bigdw 25
	bigdw 25
	bigdw 36
	db "AA@"
	db -1 ; end
	
	next_list_item ; N_EMERALD
	db "n@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	
	db 23
	dw MISDREAVUS ; add SABLEYE
	db NO_ITEM
	dw NIGHT_SHADE, SCRATCH, ASTONISH, NO_MOVE ;add fake out
	bigdw $FFFF
	bigdw 58
	bigdw 40
	bigdw 45
	bigdw 27
	bigdw 36
	bigdw 41
	db "aabaaa66@"
	
	db 30
	dw GEODUDE ;TODO add aron
	db NO_ITEM
	dw MUD_SLAP, IRON_TAIL, METAL_CLAW, HEADBUTT
	bigdw $FFFF
	bigdw 80
	bigdw 58
	bigdw 71
	bigdw 28
	bigdw 32
	bigdw 35
	db "ATTMG555……@"
	
	db 11
	dw GEODUDE ;TODO add aron
	db HARD_STONE
	dw MUD_SLAP, TACKLE, HARDEN, HEADBUTT
	bigdw $FFFF
	bigdw 32
	bigdw 21
	bigdw 27
	bigdw 13
	bigdw 17
	bigdw 15
	db "ARON@"
	
	db 25
	dw BEEDRILL ;add dustox
	db NO_ITEM
	dw PSYBEAM, POISON_STING, MOONLIGHT, PROTECT
	bigdw $0FFF
	bigdw 70
	bigdw 34
	bigdw 43
	bigdw 39
	bigdw 32
	bigdw 53
	db "BBJPzztttz@"
	
	db 29
	dw GLOOM 
	db NO_ITEM
	dw ABSORB, ACID, STUN_SPORE, CUT
	bigdw $0FFF
	bigdw 80
	bigdw 44
	bigdw 50
	bigdw 38
	bigdw 52
	bigdw 61
	db "AAAMMNgavy@"
	
	db 11
	dw ABRA 
	db NO_ITEM
	dw TELEPORT, NO_MOVE, NO_MOVE, NO_MOVE
	bigdw $FFFF
	bigdw 29
	bigdw 11
	bigdw 11
	bigdw 27
	bigdw 30
	bigdw 15
	db "000VVV@"
	
	db -1 ; end
	
	end_list_items
	
BrownGroup:
	next_list_item ; PAUL_B
	db "PAUL@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	
	db 20
	dw BEEDRILL 
	db NO_ITEM
	dw HARDEN, TWINEEDLE, CUT, FOCUS_ENERGY 
	bigdw $FFFF
	bigdw 59
	bigdw 47
	bigdw 23
	bigdw 39
	bigdw 28
	bigdw 28
	db "[[@" 
	
	db 18
	dw PSYDUCK
	db NO_ITEM
	dw TAIL_WHIP, BUBBLE, DISABLE, CONFUSION 
	bigdw $0FFF
	bigdw 51
	bigdw 26
	bigdw 24
	bigdw 26
	bigdw 28
	bigdw 28
	db "AAAAAAAAFF" 
	
	db 32
	dw IVYSAUR
	db NO_ITEM
	dw LEECH_SEED, CUT, POISONPOWDER, SWEET_SCENT
	bigdw $0FFF
	bigdw 87
	bigdw 52
	bigdw 53
	bigdw 53
	bigdw 66
	bigdw 66
	db "----------@"
	
	db 10
	dw EEVEE
	db NO_ITEM
	dw TACKLE, SAND_ATTACK, NO_MOVE, NO_MOVE 
	bigdw $0FFF
	bigdw 31
	bigdw 16
	bigdw 16
	bigdw 17
	bigdw 20
	bigdw 20
	db "BBbkkkkk@" 
	
	db 32
	dw GRAVELER
	db NO_ITEM
	dw TACKLE, HARDEN, ROCK_THROW, MUD_SLAP
	bigdw $0FFF
	bigdw 86
	bigdw 72
	bigdw 85
	bigdw 37
	bigdw 42
	bigdw 42
	db "aJJJJJJaaa@"
	
	db 41
	dw GOLBAT
	db NO_ITEM
	dw WING_ATTACK, BITE, FLY, SWIFT 
	bigdw $FFFF
	bigdw 133
	bigdw 90
	bigdw 84
	bigdw 99
	bigdw 80
	bigdw 80
	db "-<PK><PK><PK><PK><PK><PK><PK>)(@" 
	
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
	bigdw $0FFF
	bigdw 97
	bigdw 88
	bigdw 58
	bigdw 59
	bigdw 47
	bigdw 71
	db "DADA@"
	db -1 ; end
	
	end_list_items
	
URFGroup:
	next_list_item ; URF1
	db "URF@", TRAINERTYPE_MOVES
	db 46
	dw SLOWKING
	dw CURSE, SURF, SWAGGER, STRENGTH
	db -1 ; end

	end_list_items


SECTION "Enemy Trainer Parties 2", ROMX

FalknerGroup:
WhitneyGroup:
BugsyGroup:
MortyGroup:
PryceGroup:
JasmineGroup:
ChuckGroup:
ClairGroup:
Rival1Group:
PokemonProfGroup:
WillGroup:
PKMNTrainerGroup:
BrunoGroup:
KarenGroup:
KogaGroup:
ChampionGroup:
BrockGroup:
MistyGroup:
LtSurgeGroup:
ErikaGroup:
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
	db 15
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (8)
	db "JOEY@", TRAINERTYPE_MOVES
	db 21
	dw RATICATE
	dw TAIL_WHIP, QUICK_ATTACK, HYPER_FANG, SCARY_FACE
	db -1 ; end

	next_list_item ; YOUNGSTER (9)
	db "WARREN@", TRAINERTYPE_NORMAL
	db 35
	dw FEAROW
	db -1 ; end

	next_list_item ; YOUNGSTER (10)
	db "JIMMY@", TRAINERTYPE_NORMAL
	db 33
	dw RATICATE
	db 33
	dw ARBOK
	db -1 ; end

	next_list_item ; YOUNGSTER (11)
	db "OWEN@", TRAINERTYPE_NORMAL
	db 35
	dw GROWLITHE
	db -1 ; end

	next_list_item ; YOUNGSTER (12)
	db "JASON@", TRAINERTYPE_NORMAL
	db 33
	dw SANDSLASH
	db 33
	dw CROBAT
	db -1 ; end

	next_list_item ; YOUNGSTER (13)
	db "JOEY@", TRAINERTYPE_MOVES
	db 30
	dw RATICATE
	dw TAIL_WHIP, QUICK_ATTACK, HYPER_FANG, PURSUIT
	db -1 ; end

	next_list_item ; YOUNGSTER (14)
	db "JOEY@", TRAINERTYPE_MOVES
	db 37
	dw RATICATE
	dw HYPER_BEAM, QUICK_ATTACK, HYPER_FANG, PURSUIT
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
	db 27
	dw VOLTORB
	db 27
	dw MAGNEMITE
	db 31
	dw VOLTORB
	db 31
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (3)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 27
	dw TANGELA
	db -1 ; end

	next_list_item ; SCHOOLBOY (4)
	db "JOHNNY@", TRAINERTYPE_NORMAL
	db 29
	dw BELLSPROUT
	db 31
	dw WEEPINBELL
	db 33
	dw VICTREEBEL
	db -1 ; end

	next_list_item ; SCHOOLBOY (5)
	db "DANNY@", TRAINERTYPE_NORMAL
	db 31
	dw JYNX
	db 31
	dw ELECTABUZZ
	db 31
	dw MAGMAR
	db -1 ; end

	next_list_item ; SCHOOLBOY (6)
	db "TOMMY@", TRAINERTYPE_NORMAL
	db 32
	dw XATU
	db 34
	dw ALAKAZAM
	db -1 ; end

	next_list_item ; SCHOOLBOY (7)
	db "DUDLEY@", TRAINERTYPE_NORMAL
	db 35
	dw ODDISH
	db -1 ; end

	next_list_item ; SCHOOLBOY (8)
	db "JOE@", TRAINERTYPE_NORMAL
	db 33
	dw TANGELA
	db 33
	dw VAPOREON
	db -1 ; end

	next_list_item ; SCHOOLBOY (9)
	db "BILLY@", TRAINERTYPE_NORMAL
	db 27
	dw PARAS
	db 27
	dw PARAS
	db 27
	dw POLIWHIRL
	db 35
	dw DITTO
	db -1 ; end

	next_list_item ; SCHOOLBOY (10)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 33
	dw MR__MIME
	db -1 ; end

	next_list_item ; SCHOOLBOY (11)
	db "NATE@", TRAINERTYPE_NORMAL
	db 32
	dw LEDIAN
	db 32
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; SCHOOLBOY (12)
	db "RICKY@", TRAINERTYPE_NORMAL
	db 32
	dw AIPOM
	db 32
	dw DITTO
	db -1 ; end

	next_list_item ; SCHOOLBOY (13)
	db "JACK@", TRAINERTYPE_NORMAL
	db 14
	dw ODDISH
	db 17
	dw VOLTORB
	db -1 ; end

	next_list_item ; SCHOOLBOY (14)
	db "JACK@", TRAINERTYPE_NORMAL
	db 28
	dw GLOOM
	db 31
	dw ELECTRODE
	db -1 ; end

	next_list_item ; SCHOOLBOY (15)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 17
	dw TANGELA
	db 17
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (16)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 20
	dw NATU
	db 22
	dw TANGELA
	db 20
	dw QUAGSIRE
	db 25
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (17)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 19
	dw MR__MIME
	db 19
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SCHOOLBOY (18)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 27
	dw MR__MIME
	db 31
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (19)
	db "JACK@", TRAINERTYPE_NORMAL
	db 30
	dw GLOOM
	db 33
	dw GROWLITHE
	db 33
	dw ELECTRODE
	db -1 ; end

	next_list_item ; SCHOOLBOY (20)
	db "JACK@", TRAINERTYPE_MOVES
	db 35
	dw ELECTRODE
	dw SCREECH, SONICBOOM, ROLLOUT, LIGHT_SCREEN
	db 35
	dw GROWLITHE
	dw SUNNY_DAY, LEER, TAKE_DOWN, FLAME_WHEEL
	db 37
	dw VILEPLUME
	dw SOLARBEAM, SLEEP_POWDER, ACID, MOONLIGHT
	db -1 ; end

	next_list_item ; SCHOOLBOY (21)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 27
	dw NATU
	db 27
	dw TANGELA
	db 30
	dw QUAGSIRE
	db 30
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (22)
	db "ALAN@", TRAINERTYPE_MOVES
	db 35
	dw XATU
	dw PECK, NIGHT_SHADE, SWIFT, FUTURE_SIGHT
	db 32
	dw TANGELA
	dw POISONPOWDER, VINE_WHIP, BIND, MEGA_DRAIN
	db 32
	dw YANMA
	dw QUICK_ATTACK, DOUBLE_TEAM, SONICBOOM, SUPERSONIC
	db 35
	dw QUAGSIRE
	dw TAIL_WHIP, SLAM, AMNESIA, EARTHQUAKE
	db -1 ; end

	next_list_item ; SCHOOLBOY (23)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 30
	dw MR__MIME
	db 34
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (24)
	db "CHAD@", TRAINERTYPE_MOVES
	db 34
	dw MR__MIME
	dw PSYCHIC_M, LIGHT_SCREEN, REFLECT, ENCORE
	db 38
	dw MAGNETON
	dw ZAP_CANNON, THUNDER_WAVE, LOCK_ON, SWIFT
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
	db 29
	dw DODUO
	db 30
	dw DODUO
	db 31
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
	db 25
	dw PIDGEOTTO
	db 25
	dw PIDGEOTTO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (8)
	db "HANK@", TRAINERTYPE_NORMAL
	db 12
	dw PIDGEY
	db 34
	dw PIDGEOT
	db -1 ; end

	next_list_item ; BIRD_KEEPER (9)
	db "ROY@", TRAINERTYPE_NORMAL
	db 29
	dw FEAROW
	db 35
	dw FEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (10)
	db "BORIS@", TRAINERTYPE_NORMAL
	db 30
	dw DODUO
	db 28
	dw DODUO
	db 32
	dw DODRIO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (11)
	db "BOB@", TRAINERTYPE_NORMAL
	db 34
	dw NOCTOWL
	db -1 ; end

	next_list_item ; BIRD_KEEPER (12)
	db "JOSE@", TRAINERTYPE_NORMAL
	db 36
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
	db 34
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (15)
	db "PERRY@", TRAINERTYPE_NORMAL
	db 34
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (16)
	db "BRET@", TRAINERTYPE_NORMAL
	db 32
	dw PIDGEOTTO
	db 32
	dw FEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (17)
	db "JOSE@", TRAINERTYPE_MOVES
	db 40
	dw FARFETCH_D
	dw FURY_ATTACK, DETECT, FLY, SLASH
	db -1 ; end

	next_list_item ; BIRD_KEEPER (18)
	db "VANCE@", TRAINERTYPE_NORMAL
	db 32
	dw PIDGEOTTO
	db 32
	dw PIDGEOTTO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (19)
	db "VANCE@", TRAINERTYPE_MOVES
	db 38
	dw PIDGEOT
	dw TOXIC, QUICK_ATTACK, WHIRLWIND, FLY
	db 38
	dw PIDGEOT
	dw SWIFT, DETECT, STEEL_WING, FLY
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
	db 30
	dw GLOOM
	db 34
	dw ARBOK
	db 30
	dw GLOOM
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
	db 30
	dw BULBASAUR
	db 32
	dw IVYSAUR
	db 34
	dw VENUSAUR
	db -1 ; end

	next_list_item ; LASS (7)
	db "LAURA@", TRAINERTYPE_NORMAL
	db 28
	dw GLOOM
	db 31
	dw PIDGEOTTO
	db 31
	dw BELLOSSOM
	db -1 ; end

	next_list_item ; LASS (8)
	db "SHANNON@", TRAINERTYPE_NORMAL
	db 29
	dw PARAS
	db 29
	dw PARAS
	db 32
	dw PARASECT
	db -1 ; end

	next_list_item ; LASS (9)
	db "MICHELLE@", TRAINERTYPE_NORMAL
	db 32
	dw SKIPLOOM
	db 33
	dw HOPPIP
	db 34
	dw JUMPLUFF
	db -1 ; end

	next_list_item ; LASS (10)
	db "DANA@", TRAINERTYPE_MOVES
	db 31
	dw AMPHAROS
	dw COTTON_SPORE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	db 32
	dw PSYDUCK
	dw SURF, PSYCH_UP, DISABLE, CONFUSION
	db -1 ; end

	next_list_item ; LASS (11)
	db "ELLEN@", TRAINERTYPE_NORMAL
	db 30
	dw WIGGLYTUFF
	db 34
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
	db 21
	dw FLAAFFY
	dw TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	db 21
	dw PSYDUCK
	dw SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	db -1 ; end

	next_list_item ; LASS (15)
	db "DANA@", TRAINERTYPE_MOVES
	db 29
	dw PSYDUCK
	dw SCRATCH, DISABLE, CONFUSION, SCREECH
	db 29
	dw AMPHAROS
	dw TACKLE, THUNDERSHOCK, THUNDER_WAVE, COTTON_SPORE
	db -1 ; end

	next_list_item ; LASS (16)
	db "DANA@", TRAINERTYPE_MOVES
	db 32
	dw PSYDUCK
	dw SCRATCH, DISABLE, CONFUSION, SCREECH
	db 32
	dw AMPHAROS
	dw TACKLE, THUNDERPUNCH, THUNDER_WAVE, COTTON_SPORE
	db -1 ; end

	next_list_item ; LASS (17)
	db "DANA@", TRAINERTYPE_MOVES
	db 36
	dw AMPHAROS
	dw SWIFT, THUNDERPUNCH, THUNDER_WAVE, COTTON_SPORE
	db 36
	dw GOLDUCK
	dw DISABLE, SURF, PSYCHIC_M, SCREECH
	db -1 ; end

	end_list_items

JanineGroup:
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
	db 34
	dw DRATINI
	db 34
	dw DRATINI
	db 34
	dw DRATINI
	db -1 ; end

	next_list_item ; COOLTRAINERM (4)
	db "CODY@", TRAINERTYPE_NORMAL
	db 34
	dw HORSEA
	db 36
	dw SEADRA
	db -1 ; end

	next_list_item ; COOLTRAINERM (5)
	db "MIKE@", TRAINERTYPE_NORMAL
	db 37
	dw DRAGONAIR
	db -1 ; end

	next_list_item ; COOLTRAINERM (6)
	db "GAVEN@", TRAINERTYPE_MOVES
	db 35
	dw VICTREEBEL
	dw WRAP, TOXIC, ACID, RAZOR_LEAF
	db 35
	dw KINGLER
	dw BUBBLEBEAM, STOMP, GUILLOTINE, PROTECT
	db 35
	dw FLAREON
	dw SAND_ATTACK, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (7)
	db "GAVEN@", TRAINERTYPE_ITEM_MOVES
	db 39
	dw VICTREEBEL
	db NO_ITEM
	dw GIGA_DRAIN, TOXIC, SLUDGE_BOMB, RAZOR_LEAF
	db 39
	dw KINGLER
	db KINGS_ROCK
	dw SURF, STOMP, GUILLOTINE, BLIZZARD
	db 39
	dw FLAREON
	db NO_ITEM
	dw FLAMETHROWER, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (8)
	db "RYAN@", TRAINERTYPE_MOVES
	db 25
	dw PIDGEOT
	dw SAND_ATTACK, QUICK_ATTACK, WHIRLWIND, WING_ATTACK
	db 27
	dw ELECTABUZZ
	dw THUNDERPUNCH, LIGHT_SCREEN, SWIFT, SCREECH
	db -1 ; end

	next_list_item ; COOLTRAINERM (9)
	db "JAKE@", TRAINERTYPE_MOVES
	db 33
	dw PARASECT
	dw LEECH_LIFE, SPORE, SLASH, SWORDS_DANCE
	db 35
	dw GOLDUCK
	dw CONFUSION, SCREECH, PSYCH_UP, FURY_SWIPES
	db -1 ; end

	next_list_item ; COOLTRAINERM (10)
	db "GAVEN@", TRAINERTYPE_MOVES
	db 32
	dw VICTREEBEL
	dw WRAP, TOXIC, ACID, RAZOR_LEAF
	db 32
	dw KINGLER
	dw BUBBLEBEAM, STOMP, GUILLOTINE, PROTECT
	db 32
	dw FLAREON
	dw SAND_ATTACK, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (11)
	db "BLAKE@", TRAINERTYPE_MOVES
	db 33
	dw MAGNETON
	dw THUNDERBOLT, SUPERSONIC, SWIFT, SCREECH
	db 31
	dw QUAGSIRE
	dw WATER_GUN, SLAM, AMNESIA, EARTHQUAKE
	db 31
	dw EXEGGCUTE
	dw LEECH_SEED, CONFUSION, SLEEP_POWDER, SOLARBEAM
	db -1 ; end

	next_list_item ; COOLTRAINERM (12)
	db "BRIAN@", TRAINERTYPE_MOVES
	db 35
	dw SANDSLASH
	dw SAND_ATTACK, POISON_STING, SLASH, SWIFT
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
	db 35
	dw FLAREON
	db 35
	dw TANGELA
	db 35
	dw TAUROS
	db -1 ; end

	next_list_item ; COOLTRAINERM (17)
	db "KEVIN@", TRAINERTYPE_NORMAL
	db 38
	dw RHYHORN
	db 35
	dw CHARMELEON
	db 35
	dw WARTORTLE
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
	db "ALLEN@", TRAINERTYPE_MOVES
	db 27
	dw CHARMELEON
	dw EMBER, SMOKESCREEN, RAGE, SCARY_FACE
	db -1 ; end

	next_list_item ; COOLTRAINERM (20)
	db "DARIN@", TRAINERTYPE_MOVES
	db 37
	dw DRAGONAIR
	dw WRAP, SURF, DRAGON_RAGE, SLAM
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
	db 37
	dw SEADRA
	db -1 ; end

	next_list_item ; COOLTRAINERF (4)
	db "LOLA@", TRAINERTYPE_NORMAL
	db 34
	dw DRATINI
	db 36
	dw DRAGONAIR
	db -1 ; end

	next_list_item ; COOLTRAINERF (5)
	db "KATE@", TRAINERTYPE_NORMAL
	db 26
	dw SHELLDER
	db 28
	dw CLOYSTER
	db -1 ; end

	next_list_item ; COOLTRAINERF (6)
	db "IRENE@", TRAINERTYPE_NORMAL
	db 22
	dw GOLDEEN
	db 24
	dw SEAKING
	db -1 ; end

	next_list_item ; COOLTRAINERF (7)
	db "KELLY@", TRAINERTYPE_NORMAL
	db 27
	dw MARILL
	db 24
	dw WARTORTLE
	db 24
	dw WARTORTLE
	db -1 ; end

	next_list_item ; COOLTRAINERF (8)
	db "JOYCE@", TRAINERTYPE_MOVES
	db 36
	dw PIKACHU
	dw QUICK_ATTACK, DOUBLE_TEAM, THUNDERBOLT, THUNDER
	db 32
	dw BLASTOISE
	dw BITE, CURSE, SURF, RAIN_DANCE
	db -1 ; end

	next_list_item ; COOLTRAINERF (9)
	db "BETH@", TRAINERTYPE_MOVES
	db 36
	dw RAPIDASH
	dw STOMP, FIRE_SPIN, FURY_ATTACK, AGILITY
	db -1 ; end

	next_list_item ; COOLTRAINERF (10)
	db "REENA@", TRAINERTYPE_NORMAL
	db 31
	dw STARMIE
	db 33
	dw NIDOQUEEN
	db 31
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (11)
	db "MEGAN@", TRAINERTYPE_MOVES
	db 32
	dw BULBASAUR
	dw GROWL, LEECH_SEED, POISONPOWDER, RAZOR_LEAF
	db 32
	dw IVYSAUR
	dw GROWL, LEECH_SEED, POISONPOWDER, RAZOR_LEAF
	db 32
	dw VENUSAUR
	dw BODY_SLAM, SLEEP_POWDER, RAZOR_LEAF, SWEET_SCENT
	db -1 ; end

	next_list_item ; COOLTRAINERF (12)
	db "BETH@", TRAINERTYPE_MOVES
	db 39
	dw RAPIDASH
	dw STOMP, FIRE_SPIN, FURY_ATTACK, AGILITY
	db -1 ; end

	next_list_item ; COOLTRAINERF (13)
	db "CAROL@", TRAINERTYPE_NORMAL
	db 35
	dw ELECTRODE
	db 35
	dw STARMIE
	db 35
	dw NINETALES
	db -1 ; end

	next_list_item ; COOLTRAINERF (14)
	db "QUINN@", TRAINERTYPE_NORMAL
	db 38
	dw IVYSAUR
	db 38
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (15)
	db "EMMA@", TRAINERTYPE_NORMAL
	db 28
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; COOLTRAINERF (16)
	db "CYBIL@", TRAINERTYPE_MOVES
	db 25
	dw BUTTERFREE
	dw CONFUSION, SLEEP_POWDER, WHIRLWIND, GUST
	db 25
	dw BELLOSSOM
	dw ABSORB, STUN_SPORE, ACID, SOLARBEAM
	db -1 ; end

	next_list_item ; COOLTRAINERF (17)
	db "JENN@", TRAINERTYPE_NORMAL
	db 24
	dw STARYU
	db 26
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (18)
	db "BETH@", TRAINERTYPE_ITEM_MOVES
	db 43
	dw RAPIDASH
	db FOCUS_BAND
	dw STOMP, FIRE_SPIN, FURY_ATTACK, FIRE_BLAST
	db -1 ; end

	next_list_item ; COOLTRAINERF (19)
	db "REENA@", TRAINERTYPE_NORMAL
	db 34
	dw STARMIE
	db 36
	dw NIDOQUEEN
	db 34
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (20)
	db "REENA@", TRAINERTYPE_ITEM_MOVES
	db 38
	dw STARMIE
	db NO_ITEM
	dw DOUBLE_TEAM, PSYCHIC_M, WATERFALL, CONFUSE_RAY
	db 40
	dw NIDOQUEEN
	db PINK_BOW
	dw EARTHQUAKE, DOUBLE_KICK, TOXIC, BODY_SLAM
	db 38
	dw STARMIE
	db NO_ITEM
	dw BLIZZARD, PSYCHIC_M, WATERFALL, RECOVER
	db -1 ; end

	next_list_item ; COOLTRAINERF (21)
	db "CARA@", TRAINERTYPE_MOVES
	db 33
	dw HORSEA
	dw SMOKESCREEN, LEER, WHIRLPOOL, TWISTER
	db 33
	dw HORSEA
	dw SMOKESCREEN, LEER, WHIRLPOOL, TWISTER
	db 35
	dw SEADRA
	dw SWIFT, LEER, WATERFALL, TWISTER
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
	db 28
	dw VILEPLUME
	db 34
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
	db 32
	dw PARAS
	db 32
	dw EXEGGCUTE
	db 35
	dw PARASECT
	db -1 ; end

	next_list_item ; BEAUTY (15)
	db "THERESA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (16)
	db "VALERIE@", TRAINERTYPE_MOVES
	db 32
	dw SKIPLOOM
	dw SYNTHESIS, SLEEP_POWDER, TACKLE, LEECH_SEED
	db 32
	dw JUMPLUFF
	dw SYNTHESIS, SLEEP_POWDER, TACKLE, LEECH_SEED
	db -1 ; end

	next_list_item ; BEAUTY (17)
	db "OLIVIA@", TRAINERTYPE_NORMAL
	db 19
	dw CORSOLA
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
	db 47
	dw SLOWBRO
	db -1 ; end

	next_list_item ; POKEMANIAC (6)
	db "BRENT@", TRAINERTYPE_NORMAL
	db 47
	dw LICKITUNG
	db -1 ; end

	next_list_item ; POKEMANIAC (7)
	db "RON@", TRAINERTYPE_NORMAL
	db 47
	dw NIDOKING
	db -1 ; end

	next_list_item ; POKEMANIAC (8)
	db "ETHAN@", TRAINERTYPE_NORMAL
	db 31
	dw RHYHORN
	db 31
	dw RHYDON
	db -1 ; end

	next_list_item ; POKEMANIAC (9)
	db "BRENT@", TRAINERTYPE_NORMAL
	db 25
	dw KANGASKHAN
	db -1 ; end

	next_list_item ; POKEMANIAC (10)
	db "BRENT@", TRAINERTYPE_MOVES
	db 36
	dw PORYGON
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
	db 27
	dw RHYHORN
	db -1 ; end

	next_list_item ; POKEMANIAC (14)
	db "BRENT@", TRAINERTYPE_MOVES
	db 41
	dw CHANSEY
	dw ROLLOUT, ATTRACT, EGG_BOMB, SOFTBOILED
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
	db 17
	dw RATTATA
	db 19
	dw ZUBAT
	db 19
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
	db 23
	dw MUK
	db 23
	dw KOFFING
	db 25
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (13)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 27
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (14)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24
	dw RATICATE
	db 24
	dw GOLBAT
	db -1 ; end

	next_list_item ; GRUNTM (15)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 26
	dw GRIMER
	db 23
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
	db 25
	dw KOFFING
	db 25
	dw KOFFING
	db -1 ; end

	next_list_item ; GRUNTM (25)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24
	dw KOFFING
	db 24
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
	db 19
	dw RATTATA
	db 19
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
	db 30
	dw GOLBAT
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
	db 33
	dw PERSIAN
	db -1 ; end

	next_list_item ; GENTLEMAN (3)
	db "GREGORY@", TRAINERTYPE_NORMAL
	db 37
	dw PIKACHU
	db 33
	dw FLAAFFY
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

	end_list_items

TeacherGroup:
	next_list_item ; TEACHER (1)
	db "COLETTE@", TRAINERTYPE_NORMAL
	db 36
	dw CLEFAIRY
	db -1 ; end

	next_list_item ; TEACHER (2)
	db "HILLARY@", TRAINERTYPE_NORMAL
	db 32
	dw AIPOM
	db 36
	dw CUBONE
	db -1 ; end

	next_list_item ; TEACHER (3)
	db "SHIRLEY@", TRAINERTYPE_NORMAL
	db 35
	dw JIGGLYPUFF
	db -1 ; end

	end_list_items

SabrinaGroup:
	next_list_item ; SABRINA (1)
	db "SABRINA@", TRAINERTYPE_MOVES
	db 46
	dw ESPEON
	dw SAND_ATTACK, QUICK_ATTACK, SWIFT, PSYCHIC_M
	db 46
	dw MR__MIME
	dw BARRIER, REFLECT, BATON_PASS, PSYCHIC_M
	db 48
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
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
	db 32
	dw BEEDRILL
	db 32
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BUG_CATCHER (3)
	db "ED@", TRAINERTYPE_NORMAL
	db 30
	dw BEEDRILL
	db 30
	dw BEEDRILL
	db 30
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
	db 30
	dw ARIADOS
	db 32
	dw PINSIR
	db -1 ; end

	next_list_item ; BUG_CATCHER (10)
	db "WADE@", TRAINERTYPE_NORMAL
	db 9
	dw METAPOD
	db 9
	dw METAPOD
	db 10
	dw KAKUNA
	db 9
	dw METAPOD
	db -1 ; end

	next_list_item ; BUG_CATCHER (11)
	db "WADE@", TRAINERTYPE_NORMAL
	db 14
	dw BUTTERFREE
	db 14
	dw BUTTERFREE
	db 15
	dw BEEDRILL
	db 14
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BUG_CATCHER (12)
	db "DOUG@", TRAINERTYPE_NORMAL
	db 34
	dw ARIADOS
	db -1 ; end

	next_list_item ; BUG_CATCHER (13)
	db "ARNIE@", TRAINERTYPE_NORMAL
	db 19
	dw VENONAT
	db -1 ; end

	next_list_item ; BUG_CATCHER (14)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 28
	dw VENOMOTH
	dw DISABLE, SUPERSONIC, CONFUSION, LEECH_LIFE
	db -1 ; end

	next_list_item ; BUG_CATCHER (15)
	db "WADE@", TRAINERTYPE_MOVES
	db 24
	dw BUTTERFREE
	dw CONFUSION, POISONPOWDER, SUPERSONIC, WHIRLWIND
	db 24
	dw BUTTERFREE
	dw CONFUSION, STUN_SPORE, SUPERSONIC, WHIRLWIND
	db 25
	dw BEEDRILL
	dw FURY_ATTACK, FOCUS_ENERGY, TWINEEDLE, RAGE
	db 24
	dw BUTTERFREE
	dw CONFUSION, SLEEP_POWDER, SUPERSONIC, WHIRLWIND
	db -1 ; end

	next_list_item ; BUG_CATCHER (16)
	db "WADE@", TRAINERTYPE_MOVES
	db 30
	dw BUTTERFREE
	dw CONFUSION, POISONPOWDER, SUPERSONIC, GUST
	db 30
	dw BUTTERFREE
	dw CONFUSION, STUN_SPORE, SUPERSONIC, GUST
	db 32
	dw BEEDRILL
	dw FURY_ATTACK, PURSUIT, TWINEEDLE, DOUBLE_TEAM
	db 34
	dw BUTTERFREE
	dw PSYBEAM, SLEEP_POWDER, GUST, WHIRLWIND
	db -1 ; end

	next_list_item ; BUG_CATCHER (17)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 36
	dw VENOMOTH
	dw GUST, SUPERSONIC, PSYBEAM, LEECH_LIFE
	db -1 ; end

	next_list_item ; BUG_CATCHER (18)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 40
	dw VENOMOTH
	dw GUST, SUPERSONIC, PSYCHIC_M, TOXIC
	db -1 ; end

	next_list_item ; BUG_CATCHER (19)
	db "WAYNE@", TRAINERTYPE_NORMAL
	db 22
	dw LEDIAN
	db 24
	dw PARAS
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
	db 34
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; FISHER (4)
	db "KYLE@", TRAINERTYPE_NORMAL
	db 28
	dw SEAKING
	db 31
	dw POLIWHIRL
	db 31
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
	db 40
	dw GYARADOS
	db 40
	dw GYARADOS
	db 45
	dw GYARADOS
	db 45
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
	db 23
	dw GOLDEEN
	db 23
	dw GOLDEEN
	db 25
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (11)
	db "EDGAR@", TRAINERTYPE_MOVES
	db 25
	dw REMORAID
	dw LOCK_ON, PSYBEAM, AURORA_BEAM, BUBBLEBEAM
	db 25
	dw REMORAID
	dw LOCK_ON, PSYBEAM, AURORA_BEAM, BUBBLEBEAM
	db -1 ; end

	next_list_item ; FISHER (12)
	db "JONAH@", TRAINERTYPE_NORMAL
	db 25
	dw SHELLDER
	db 29
	dw OCTILLERY
	db 25
	dw REMORAID
	db 29
	dw CLOYSTER
	db -1 ; end

	next_list_item ; FISHER (13)
	db "MARTIN@", TRAINERTYPE_NORMAL
	db 32
	dw REMORAID
	db 32
	dw REMORAID
	db -1 ; end

	next_list_item ; FISHER (14)
	db "STEPHEN@", TRAINERTYPE_NORMAL
	db 25
	dw MAGIKARP
	db 25
	dw MAGIKARP
	db 31
	dw QWILFISH
	db 31
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; FISHER (15)
	db "BARNEY@", TRAINERTYPE_NORMAL
	db 30
	dw GYARADOS
	db 30
	dw GYARADOS
	db 30
	dw GYARADOS
	db -1 ; end

	next_list_item ; FISHER (16)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 17
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (17)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 17
	dw QWILFISH
	db 19
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (18)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 23
	dw QWILFISH
	db -1 ; end

	next_list_item ; FISHER (19)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 32
	dw GOLDEEN
	db 32
	dw GOLDEEN
	db 32
	dw QWILFISH
	db -1 ; end

	next_list_item ; FISHER (20)
	db "WILTON@", TRAINERTYPE_NORMAL
	db 29
	dw GOLDEEN
	db 29
	dw GOLDEEN
	db 32
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (21)
	db "SCOTT@", TRAINERTYPE_NORMAL
	db 30
	dw QWILFISH
	db 30
	dw QWILFISH
	db 34
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (22)
	db "WILTON@", TRAINERTYPE_MOVES
	db 34
	dw SEAKING
	dw SUPERSONIC, WATERFALL, FLAIL, FURY_ATTACK
	db 34
	dw SEAKING
	dw SUPERSONIC, WATERFALL, FLAIL, FURY_ATTACK
	db 38
	dw REMORAID
	dw PSYBEAM, AURORA_BEAM, BUBBLEBEAM, HYPER_BEAM
	db -1 ; end

	next_list_item ; FISHER (23)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 30
	dw QWILFISH
	db 32
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (24)
	db "RALPH@", TRAINERTYPE_MOVES
	db 35
	dw QWILFISH
	dw TOXIC, MINIMIZE, SURF, PIN_MISSILE
	db 39
	dw SEAKING
	dw ENDURE, FLAIL, FURY_ATTACK, WATERFALL
	db -1 ; end

	next_list_item ; FISHER (25)
	db "TULLY@", TRAINERTYPE_MOVES
	db 34
	dw SEAKING
	dw SUPERSONIC, RAIN_DANCE, WATERFALL, FURY_ATTACK
	db 34
	dw SEAKING
	dw SUPERSONIC, RAIN_DANCE, WATERFALL, FURY_ATTACK
	db 37
	dw QWILFISH
	dw ROLLOUT, SURF, PIN_MISSILE, TAKE_DOWN
	db -1 ; end

	end_list_items

SwimmerMGroup:
	next_list_item ; SWIMMERM (1)
	db "HAROLD@", TRAINERTYPE_NORMAL
	db 32
	dw REMORAID
	db 30
	dw SEADRA
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
	db 26
	dw SEADRA
	db 28
	dw TENTACOOL
	db 30
	dw TENTACRUEL
	db 28
	dw GOLDEEN
	db -1 ; end

	next_list_item ; SWIMMERM (15)
	db "TUCKER@", TRAINERTYPE_NORMAL
	db 30
	dw SHELLDER
	db 34
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
	db 34
	dw MARILL
	db -1 ; end

	next_list_item ; SWIMMERM (18)
	db "SETH@", TRAINERTYPE_NORMAL
	db 29
	dw QUAGSIRE
	db 29
	dw OCTILLERY
	db 32
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
	db 32
	dw HORSEA
	db 32
	dw HORSEA
	db 35
	dw SEADRA
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
	db 34
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (13)
	db "TARA@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (14)
	db "NICOLE@", TRAINERTYPE_NORMAL
	db 29
	dw MARILL
	db 29
	dw MARILL
	db 32
	dw LAPRAS
	db -1 ; end

	next_list_item ; SWIMMERF (15)
	db "LORI@", TRAINERTYPE_NORMAL
	db 32
	dw STARMIE
	db 32
	dw STARMIE
	db -1 ; end

	next_list_item ; SWIMMERF (16)
	db "JODY@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (17)
	db "NIKKI@", TRAINERTYPE_NORMAL
	db 28
	dw SEEL
	db 28
	dw SEEL
	db 28
	dw SEEL
	db 28
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (18)
	db "DIANA@", TRAINERTYPE_NORMAL
	db 37
	dw GOLDUCK
	db -1 ; end

	next_list_item ; SWIMMERF (19)
	db "BRIANA@", TRAINERTYPE_NORMAL
	db 35
	dw SEAKING
	db 35
	dw SEAKING
	db -1 ; end

	end_list_items

SailorGroup:
	next_list_item ; SAILOR (1)
	db "EUGENE@", TRAINERTYPE_NORMAL
	db 31
	dw POLIWHIRL
	db 31
	dw RATICATE
	db 33
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
	db 32
	dw RATICATE
	db 32
	dw RATICATE
	db -1 ; end

	next_list_item ; SAILOR (7)
	db "GARRETT@", TRAINERTYPE_NORMAL
	db 34
	dw KINGLER
	db -1 ; end

	next_list_item ; SAILOR (8)
	db "KENNETH@", TRAINERTYPE_NORMAL
	db 28
	dw MACHOP
	db 28
	dw MACHOP
	db 28
	dw POLIWRATH
	db 28
	dw MACHOP
	db -1 ; end

	next_list_item ; SAILOR (9)
	db "STANLY@", TRAINERTYPE_NORMAL
	db 31
	dw MACHOP
	db 33
	dw MACHOKE
	db 26
	dw PSYDUCK
	db -1 ; end

	next_list_item ; SAILOR (10)
	db "HARRY@", TRAINERTYPE_NORMAL
	db 33
	dw QUAGSIRE
	db -1 ; end

	next_list_item ; SAILOR (11)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 28
	dw POLIWHIRL
	db 28
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (12)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 34
	dw POLIWHIRL
	db 34
	dw POLIWRATH
	db -1 ; end

	next_list_item ; SAILOR (13)
	db "HUEY@", TRAINERTYPE_MOVES
	db 38
	dw POLITOED
	dw WHIRLPOOL, RAIN_DANCE, BODY_SLAM, PERISH_SONG
	db 38
	dw POLIWRATH
	dw SURF, STRENGTH, ICE_PUNCH, SUBMISSION
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
	db 34
	dw GRIMER
	db 34
	dw MUK
	db -1 ; end

	next_list_item ; SUPER_NERD (7)
	db "TOM@", TRAINERTYPE_NORMAL
	db 32
	dw MAGNEMITE
	db 32
	dw MAGNEMITE
	db 32
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (8)
	db "PAT@", TRAINERTYPE_NORMAL
	db 36
	dw PORYGON
	db -1 ; end

	next_list_item ; SUPER_NERD (9)
	db "SHAWN@", TRAINERTYPE_NORMAL
	db 31
	dw MAGNEMITE
	db 33
	dw MUK
	db 31
	dw MAGNEMITE
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
	db "HUGH@", TRAINERTYPE_MOVES
	db 39
	dw SEADRA
	dw SMOKESCREEN, TWISTER, SURF, WATERFALL
	db -1 ; end

	next_list_item ; SUPER_NERD (14)
	db "MARKUS@", TRAINERTYPE_MOVES
	db 46
	dw SLOWKING
	dw CURSE, SURF, SWAGGER, STRENGTH
	db -1 ; end

	end_list_items

Rival2Group:
GuitaristGroup:
	next_list_item ; GUITARIST (1)
	db "CLYDE@", TRAINERTYPE_NORMAL
	db 34
	dw ELECTABUZZ
	db -1 ; end

	next_list_item ; GUITARIST (2)
	db "VINCENT@", TRAINERTYPE_NORMAL
	db 27
	dw MAGNEMITE
	db 33
	dw VOLTORB
	db 32
	dw MAGNEMITE
	db 32
	dw MAGNEMITE
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
	db 17
	dw GEODUDE
	db 17
	dw MACHOP
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
	db 24
	dw MACHOP
	db 27
	dw GRAVELER
	db 27
	dw MACHOP
	db -1 ; end

	next_list_item ; HIKER (8)
	db "MICHAEL@", TRAINERTYPE_NORMAL
	db 25
	dw GEODUDE
	db 25
	dw GRAVELER
	db 25
	dw GOLEM
	db -1 ; end

	next_list_item ; HIKER (9)
	db "PARRY@", TRAINERTYPE_NORMAL
	db 35
	dw ONIX
	db 33
	dw SWINUB
	db -1 ; end

	next_list_item ; HIKER (10)
	db "TIMOTHY@", TRAINERTYPE_MOVES
	db 27
	dw DIGLETT
	dw MAGNITUDE, DIG, SAND_ATTACK, SLASH
	db 27
	dw DUGTRIO
	dw MAGNITUDE, DIG, SAND_ATTACK, SLASH
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
	db 25
	dw GRAVELER
	db 27
	dw GRAVELER
	db 29
	dw MACHOKE
	db -1 ; end

	next_list_item ; HIKER (13)
	db "TIM@", TRAINERTYPE_NORMAL
	db 31
	dw GRAVELER
	db 31
	dw GRAVELER
	db 31
	dw GRAVELER
	db -1 ; end

	next_list_item ; HIKER (14)
	db "NOLAND@", TRAINERTYPE_NORMAL
	db 31
	dw SANDSLASH
	db 33
	dw GOLEM
	db -1 ; end

	next_list_item ; HIKER (15)
	db "SIDNEY@", TRAINERTYPE_NORMAL
	db 34
	dw DUGTRIO
	db 32
	dw ONIX
	db -1 ; end

	next_list_item ; HIKER (16)
	db "KENNY@", TRAINERTYPE_NORMAL
	db 27
	dw SANDSLASH
	db 29
	dw GRAVELER
	db 31
	dw GOLEM
	db 29
	dw GRAVELER
	db -1 ; end

	next_list_item ; HIKER (17)
	db "JIM@", TRAINERTYPE_NORMAL
	db 35
	dw MACHAMP
	db -1 ; end

	next_list_item ; HIKER (18)
	db "DANIEL@", TRAINERTYPE_NORMAL
	db 18
	dw ONIX
	db -1 ; end

	next_list_item ; HIKER (19)
	db "PARRY@", TRAINERTYPE_MOVES
	db 35
	dw PILOSWINE
	dw EARTHQUAKE, BLIZZARD, REST, TAKE_DOWN
	db 35
	dw DUGTRIO
	dw MAGNITUDE, DIG, MUD_SLAP, SLASH
	db 38
	dw STEELIX
	dw DIG, IRON_TAIL, SANDSTORM, SLAM
	db -1 ; end

	next_list_item ; HIKER (20)
	db "PARRY@", TRAINERTYPE_NORMAL
	db 29
	dw ONIX
	db -1 ; end

	next_list_item ; HIKER (21)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 30
	dw GRAVELER
	db 30
	dw GRAVELER
	db 32
	dw MACHOKE
	db -1 ; end

	next_list_item ; HIKER (22)
	db "ANTHONY@", TRAINERTYPE_MOVES
	db 34
	dw GRAVELER
	dw MAGNITUDE, SELFDESTRUCT, DEFENSE_CURL, ROLLOUT
	db 36
	dw GOLEM
	dw MAGNITUDE, SELFDESTRUCT, DEFENSE_CURL, ROLLOUT
	db 34
	dw MACHOKE
	dw KARATE_CHOP, VITAL_THROW, HEADBUTT, DIG
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
	db 27
	dw KOFFING
	db 28
	dw KOFFING
	db 29
	dw KOFFING
	db 30
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (4)
	db "HARRIS@", TRAINERTYPE_NORMAL
	db 34
	dw FLAREON
	db -1 ; end

	next_list_item ; BIKER (5)
	db "ZEKE@", TRAINERTYPE_NORMAL
	db 32
	dw KOFFING
	db 32
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (6)
	db "CHARLES@", TRAINERTYPE_NORMAL
	db 30
	dw KOFFING
	db 30
	dw CHARMELEON
	db 30
	dw WEEZING
	db -1 ; end

	next_list_item ; BIKER (7)
	db "RILEY@", TRAINERTYPE_NORMAL
	db 34
	dw WEEZING
	db -1 ; end

	next_list_item ; BIKER (8)
	db "JOEL@", TRAINERTYPE_NORMAL
	db 32
	dw MAGMAR
	db 32
	dw MAGMAR
	db -1 ; end

	next_list_item ; BIKER (9)
	db "GLENN@", TRAINERTYPE_NORMAL
	db 28
	dw KOFFING
	db 30
	dw MAGMAR
	db 32
	dw WEEZING
	db -1 ; end

	end_list_items

BlaineGroup:
	next_list_item ; BLAINE (1)
	db "BLAINE@", TRAINERTYPE_MOVES
	db 45
	dw MAGCARGO
	dw CURSE, SMOG, FLAMETHROWER, ROCK_SLIDE
	db 45
	dw MAGMAR
	dw THUNDERPUNCH, FIRE_PUNCH, SUNNY_DAY, CONFUSE_RAY
	db 50
	dw RAPIDASH
	dw QUICK_ATTACK, FIRE_SPIN, FURY_ATTACK, FIRE_BLAST
	db -1 ; end

	end_list_items

BurglarGroup:
	next_list_item ; BURGLAR (1)
	db "DUNCAN@", TRAINERTYPE_NORMAL
	db 23
	dw KOFFING
	db 25
	dw MAGMAR
	db 23
	dw KOFFING
	db -1 ; end

	next_list_item ; BURGLAR (2)
	db "EDDIE@", TRAINERTYPE_MOVES
	db 26
	dw GROWLITHE
	dw ROAR, EMBER, LEER, TAKE_DOWN
	db 24
	dw KOFFING
	dw TACKLE, SMOG, SLUDGE, SMOKESCREEN
	db -1 ; end

	next_list_item ; BURGLAR (3)
	db "COREY@", TRAINERTYPE_NORMAL
	db 25
	dw KOFFING
	db 28
	dw MAGMAR
	db 25
	dw KOFFING
	db 30
	dw KOFFING
	db -1 ; end

	end_list_items

FirebreatherGroup:
	next_list_item ; FIREBREATHER (1)
	db "OTIS@", TRAINERTYPE_NORMAL
	db 29
	dw MAGMAR
	db 32
	dw WEEZING
	db 29
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
	db 32
	dw KOFFING
	db 32
	dw SLUGMA
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
	db 28
	dw KOFFING
	db 31
	dw FLAREON
	db 28
	dw KOFFING
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
	db 29
	dw MR__MIME
	db 29
	dw MAGMAR
	db 29
	dw MACHOKE
	db -1 ; end

	next_list_item ; JUGGLER (3)
	db "HORTON@", TRAINERTYPE_NORMAL
	db 33
	dw ELECTRODE
	db 33
	dw ELECTRODE
	db 33
	dw ELECTRODE
	db 33
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

	end_list_items

BlackbeltGroup:
	next_list_item ; BLACKBELT_T (1)
	db "KENJI@", TRAINERTYPE_NORMAL
	db 27
	dw ONIX
	db 30
	dw HITMONLEE
	db 27
	dw ONIX
	db 32
	dw MACHOKE
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
	db 34
	dw HITMONLEE
	db 34
	dw HITMONCHAN
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
	db 28
	dw MACHOKE
	db -1 ; end

	next_list_item ; BLACKBELT_T (9)
	db "WAI@", TRAINERTYPE_NORMAL
	db 30
	dw MACHOKE
	db 32
	dw MACHOKE
	db 34
	dw MACHOKE
	db -1 ; end

	end_list_items

ExecutiveMGroup:
	next_list_item ; EXECUTIVEM (1)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 33
	dw HOUNDOUR
	dw EMBER, ROAR, BITE, FAINT_ATTACK
	db 33
	dw KOFFING
	dw TACKLE, SLUDGE, SMOKESCREEN, HAZE
	db 35
	dw HOUNDOOM
	dw EMBER, SMOG, BITE, FAINT_ATTACK
	db -1 ; end

	next_list_item ; EXECUTIVEM (2)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 36
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db -1 ; end

	next_list_item ; EXECUTIVEM (3)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 32
	dw WEEZING
	dw TACKLE, EXPLOSION, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SMOG, SLUDGE, SMOKESCREEN
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
	db 37
	dw KADABRA
	db -1 ; end

	next_list_item ; PSYCHIC_T (3)
	db "HERMAN@", TRAINERTYPE_NORMAL
	db 30
	dw EXEGGCUTE
	db 30
	dw EXEGGCUTE
	db 30
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; PSYCHIC_T (4)
	db "FIDEL@", TRAINERTYPE_NORMAL
	db 34
	dw XATU
	db -1 ; end

	next_list_item ; PSYCHIC_T (5)
	db "GREG@", TRAINERTYPE_MOVES
	db 30
	dw DROWZEE
	dw HYPNOSIS, HEADBUTT, DREAM_EATER, CONFUSION
	db -1 ; end

	next_list_item ; PSYCHIC_T (6)
	db "NORMAN@", TRAINERTYPE_MOVES
	db 30
	dw SLOWPOKE
	dw DISABLE, GROWL, WATER_GUN, CONFUSION
	db 33
	dw SLOWPOKE
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
	db 24
	dw NATU
	dw LEER, NIGHT_SHADE, FUTURE_SIGHT, CONFUSE_RAY
	db 26
	dw KADABRA
	dw DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db -1 ; end

	next_list_item ; PSYCHIC_T (9)
	db "RICHARD@", TRAINERTYPE_NORMAL
	db 36
	dw ESPEON
	db -1 ; end

	next_list_item ; PSYCHIC_T (10)
	db "GILBERT@", TRAINERTYPE_NORMAL
	db 30
	dw STARMIE
	db 30
	dw EXEGGCUTE
	db 34
	dw GIRAFARIG
	db -1 ; end

	next_list_item ; PSYCHIC_T (11)
	db "JARED@", TRAINERTYPE_NORMAL
	db 32
	dw MR__MIME
	db 32
	dw EXEGGCUTE
	db 35
	dw EXEGGCUTE
	db -1 ; end

	next_list_item ; PSYCHIC_T (12)
	db "RODNEY@", TRAINERTYPE_NORMAL
	db 29
	dw DROWZEE
	db 33
	dw HYPNO
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
	db 36
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (6)
	db "HOPE@", TRAINERTYPE_NORMAL
	db 34
	dw FLAAFFY
	db -1 ; end

	next_list_item ; PICNICKER (7)
	db "SHARON@", TRAINERTYPE_NORMAL
	db 31
	dw FURRET
	db 33
	dw RAPIDASH
	db -1 ; end

	next_list_item ; PICNICKER (8)
	db "DEBRA@", TRAINERTYPE_NORMAL
	db 33
	dw SEAKING
	db -1 ; end

	next_list_item ; PICNICKER (9)
	db "GINA@", TRAINERTYPE_NORMAL
	db 14
	dw HOPPIP
	db 14
	dw HOPPIP
	db 17
	dw IVYSAUR
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
	db 15
	dw WEEPINBELL
	db 15
	dw NIDORINA
	db -1 ; end

	next_list_item ; PICNICKER (12)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 19
	dw WEEPINBELL
	db 19
	dw NIDORINO
	db 21
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (13)
	db "HEIDI@", TRAINERTYPE_NORMAL
	db 32
	dw SKIPLOOM
	db 32
	dw SKIPLOOM
	db -1 ; end

	next_list_item ; PICNICKER (14)
	db "EDNA@", TRAINERTYPE_NORMAL
	db 30
	dw NIDORINA
	db 34
	dw RAICHU
	db -1 ; end

	next_list_item ; PICNICKER (15)
	db "GINA@", TRAINERTYPE_NORMAL
	db 26
	dw SKIPLOOM
	db 26
	dw SKIPLOOM
	db 29
	dw IVYSAUR
	db -1 ; end

	next_list_item ; PICNICKER (16)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 47
	dw CLEFAIRY
	dw MOONLIGHT, SING, DOUBLESLAP, MINIMIZE
	db -1 ; end

	next_list_item ; PICNICKER (17)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 37
	dw CLEFAIRY
	dw MOONLIGHT, DOUBLESLAP, MINIMIZE, METRONOME
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
	db 37
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; PICNICKER (20)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 20
	dw CLEFAIRY
	dw ENCORE, SING, DOUBLESLAP, MINIMIZE
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
	db 24
	dw WEEPINBELL
	db 26
	dw NIDORINO
	db 26
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (23)
	db "LIZ@", TRAINERTYPE_MOVES
	db 30
	dw WEEPINBELL
	dw SLEEP_POWDER, POISONPOWDER, STUN_SPORE, SLUDGE_BOMB
	db 32
	dw NIDOKING
	dw EARTHQUAKE, DOUBLE_KICK, POISON_STING, IRON_TAIL
	db 32
	dw NIDOQUEEN
	dw EARTHQUAKE, DOUBLE_KICK, TAIL_WHIP, BODY_SLAM
	db -1 ; end

	next_list_item ; PICNICKER (24)
	db "GINA@", TRAINERTYPE_NORMAL
	db 30
	dw SKIPLOOM
	db 30
	dw SKIPLOOM
	db 32
	dw IVYSAUR
	db -1 ; end

	next_list_item ; PICNICKER (25)
	db "GINA@", TRAINERTYPE_MOVES
	db 33
	dw JUMPLUFF
	dw STUN_SPORE, SUNNY_DAY, LEECH_SEED, COTTON_SPORE
	db 33
	dw JUMPLUFF
	dw SUNNY_DAY, SLEEP_POWDER, LEECH_SEED, COTTON_SPORE
	db 38
	dw VENUSAUR
	dw SOLARBEAM, RAZOR_LEAF, HEADBUTT, MUD_SLAP
	db -1 ; end

	next_list_item ; PICNICKER (26)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 43
	dw CLEFAIRY
	dw METRONOME, ENCORE, MOONLIGHT, MINIMIZE
	db -1 ; end

	end_list_items

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
	db 36
	dw NIDOKING
	db -1 ; end

	next_list_item ; CAMPER (6)
	db "LLOYD@", TRAINERTYPE_NORMAL
	db 34
	dw NIDOKING
	db -1 ; end

	next_list_item ; CAMPER (7)
	db "DEAN@", TRAINERTYPE_NORMAL
	db 33
	dw GOLDUCK
	db 31
	dw SANDSLASH
	db -1 ; end

	next_list_item ; CAMPER (8)
	db "SID@", TRAINERTYPE_NORMAL
	db 32
	dw DUGTRIO
	db 29
	dw PRIMEAPE
	db 29
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
	db 17
	dw GEODUDE
	db 17
	dw GEODUDE
	db 23
	dw PSYDUCK
	db -1 ; end

	next_list_item ; CAMPER (13)
	db "TODD@", TRAINERTYPE_NORMAL
	db 23
	dw GEODUDE
	db 23
	dw GEODUDE
	db 26
	dw PSYDUCK
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
	db 37
	dw SANDSLASH
	db -1 ; end

	next_list_item ; CAMPER (19)
	db "SPENCER@", TRAINERTYPE_NORMAL
	db 44
	dw SANDSLASH
	db 44
	dw SANDSLASH
	db 46
	dw CROBAT
	db -1 ; end

	next_list_item ; CAMPER (20)
	db "TODD@", TRAINERTYPE_NORMAL
	db 30
	dw GRAVELER
	db 30
	dw GRAVELER
	db 30
	dw SLUGMA
	db 32
	dw PSYDUCK
	db -1 ; end

	next_list_item ; CAMPER (21)
	db "TODD@", TRAINERTYPE_MOVES
	db 33
	dw GRAVELER
	dw SELFDESTRUCT, ROCK_THROW, HARDEN, MAGNITUDE
	db 33
	dw GRAVELER
	dw SELFDESTRUCT, ROCK_THROW, HARDEN, MAGNITUDE
	db 36
	dw MAGCARGO
	dw ROCK_THROW, HARDEN, AMNESIA, FLAMETHROWER
	db 34
	dw GOLDUCK
	dw DISABLE, PSYCHIC_M, SURF, PSYCH_UP
	db -1 ; end

	next_list_item ; CAMPER (22)
	db "QUENTIN@", TRAINERTYPE_NORMAL
	db 30
	dw FEAROW
	db 30
	dw PRIMEAPE
	db 30
	dw TAUROS
	db -1 ; end

	end_list_items

ExecutiveFGroup:
	next_list_item ; EXECUTIVEF (1)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 32
	dw ARBOK
	dw WRAP, POISON_STING, BITE, GLARE
	db 32
	dw VILEPLUME
	dw ABSORB, SWEET_SCENT, SLEEP_POWDER, ACID
	db 32
	dw MURKROW
	dw PECK, PURSUIT, HAZE, NIGHT_SHADE
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
	db 32
	dw NOCTOWL
	db 32
	dw FLAREON
	db -1 ; end

	next_list_item ; SAGE (11)
	db "MASA@", TRAINERTYPE_NORMAL
	db 32
	dw NOCTOWL
	db 32
	dw JOLTEON
	db -1 ; end

	next_list_item ; SAGE (12)
	db "KOJI@", TRAINERTYPE_NORMAL
	db 32
	dw NOCTOWL
	db 32
	dw VAPOREON
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
	db 35
	dw DROWZEE
	db 35
	dw HYPNO
	db -1 ; end

	next_list_item ; MEDIUM (7)
	db "DORIS@", TRAINERTYPE_NORMAL
	db 34
	dw SLOWPOKE
	db 36
	dw SLOWBRO
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
	db 34
	dw PIKACHU
	db LIGHT_BALL
	db -1 ; end

	next_list_item ; POKEFANM (3)
	db "ROBERT@", TRAINERTYPE_ITEM
	db 33
	dw QUAGSIRE
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (4)
	db "JOSHUA@", TRAINERTYPE_ITEM
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (5)
	db "CARTER@", TRAINERTYPE_ITEM
	db 29
	dw BULBASAUR
	db BERRY
	db 29
	dw CHARMANDER
	db BERRY
	db 29
	dw SQUIRTLE
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (6)
	db "TREVOR@", TRAINERTYPE_ITEM
	db 33
	dw PSYDUCK
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (7)
	db "BRANDON@", TRAINERTYPE_ITEM
	db 24
	dw GRANBULL
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (8)
	db "JEREMY@", TRAINERTYPE_ITEM
	db 28
	dw MEOWTH
	db BERRY
	db 28
	dw MEOWTH
	db BERRY
	db 28
	dw MEOWTH
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (9)
	db "COLIN@", TRAINERTYPE_ITEM
	db 32
	dw DELIBIRD
	db BERRY
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
	db 29
	dw NIDOKING
	db BERRY
	db 29
	dw SLOWKING
	db BERRY
	db 29
	dw SEAKING
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (13)
	db "REX@", TRAINERTYPE_ITEM
	db 35
	dw PHANPY
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (14)
	db "ALLAN@", TRAINERTYPE_ITEM
	db 35
	dw TEDDIURSA
	db BERRY
	db -1 ; end

	end_list_items
	
KimonoGirlGroup:
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
	db 29
	dw CLEFAIRY
	db 29
	dw JIGGLYPUFF
	db -1 ; end

	next_list_item ; TWINS (3)
	db "ANN & ANNE@", TRAINERTYPE_NORMAL
	db 29
	dw JIGGLYPUFF
	db 29
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
	db 35
	dw VICTREEBEL
	db 35
	dw VILEPLUME
	db -1 ; end

	next_list_item ; TWINS (6)
	db "JO & ZOE@", TRAINERTYPE_NORMAL
	db 35
	dw VILEPLUME
	db 35
	dw VICTREEBEL
	db -1 ; end

	next_list_item ; TWINS (7)
	db "MEG & PEG@", TRAINERTYPE_NORMAL
	db 31
	dw TEDDIURSA
	db 31
	dw PHANPY
	db -1 ; end

	next_list_item ; TWINS (8)
	db "MEG & PEG@", TRAINERTYPE_NORMAL
	db 31
	dw PHANPY
	db 31
	dw TEDDIURSA
	db -1 ; end

	next_list_item ; TWINS (9)
	db "LEA & PIA@", TRAINERTYPE_MOVES
	db 35
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, FLAMETHROWER, HEADBUTT
	db 35
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, ICE_BEAM, HEADBUTT
	db -1 ; end

	next_list_item ; TWINS (10)
	db "LEA & PIA@", TRAINERTYPE_MOVES
	db 38
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, ICE_BEAM, HEADBUTT
	db 38
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, FLAMETHROWER, HEADBUTT
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
	db 34
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
	db 23
	dw SENTRET
	db BERRY
	db 23
	dw SENTRET
	db BERRY
	db 23
	dw SENTRET
	db BERRY
	db 28
	dw FURRET
	db BERRY
	db 23
	dw SENTRET
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (6)
	db "JAIME@", TRAINERTYPE_ITEM
	db 34
	dw MEOWTH
	db GOLD_BERRY
	db -1 ; end

	end_list_items

RedGroup:
BlueGroup:
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

	end_list_items

MysticalmanGroup:
GruntFGroup:
	next_list_item ; GRUNTF (1)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 17
	dw ZUBAT
	db 19
	dw EKANS
	db -1 ; end

	next_list_item ; GRUNTF (2)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 51
	dw ARBOK
	db -1 ; end

	next_list_item ; GRUNTF (3)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 25
	dw GLOOM
	db 25
	dw GLOOM
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

	end_list_items

SECTION "Enemy Trainer Parties 3", ROMX


AzureGroup:
	next_list_item ; AZURE1
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
FCLarryGroup:
	next_list_item ; LARRY_GREEN
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
RBYGreenGroup:
	next_list_item ; XXWWNN
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
CYRoboredGroup:
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
	dw PIDGEY ;add chatot
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
	end_list_items
	
GSCHGSSChrisGroup:
	next_list_item ; AJDNNW1 https://youtu.be/AU084AvsMNo?t=15753
	db "AJDNNW@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME
	db 13
	dw TOTODILE
	db NO_ITEM
	dw SCRATCH, LEER, WATER_GUN, RAGE
	bigdw $FFFF
	bigdw 26
	bigdw 27
	bigdw 24
	bigdw 19
	bigdw 21
	bigdw 22
	db "TOTODILE@"
	db -1 ; end
	
	next_list_item
	db "AJDNNW@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME ; AJDNNW2
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
	db "AJDNNW@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME ; AJDNNW3
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
	
	next_list_item ; AAEFFFF
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	next_list_item ; D_GAUNTLETCRYSTAL
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items
	
RSEORASBrendanLeaderGroup:
	next_list_item ; ORLANDO
	db "!12rtyhasz@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES | TRAINERTYPE_DVS | TRAINERTYPE_STATS | TRAINERTYPE_NICKNAME

	db 18
	dw QUILAVA ;TODO add combusken
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
	dw SENTRET ;TODO add whismur
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

SMUSUMElio2Group:
	next_list_item ; RRWQ
	db "?@", TRAINERTYPE_NORMAL
	
	db 5
	dw CHIKORITA
	db -1 ; end
	
	end_list_items