trainerclass: MACRO
	enum \1
const_value = 1
ENDM

trainervalue: MACRO
	const \1
\1_TRAINER_GROUP EQU __enum__ - 1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)
; - TrainerClassAttributes (see data/trainers/attributes.asm)
; - TrainerClassDVs (see data/trainers/dvs.asm)
; - TrainerGroups (see data/trainers/party_pointers.asm)
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)
; - TrainerPicPointers (see data/trainers/pic_pointers.asm)
; - TrainerPalettes (see data/trainers/palettes.asm)
; - BTTrainerClassSprites (see data/trainers/sprites.asm)
; - BTTrainerClassGenders (see data/trainers/genders.asm)
; trainer constants are Trainers indexes, for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
	enum_start
CHRIS EQU __enum__
	trainerclass TRAINER_NONE ; 0
	trainervalue PHONECONTACT_MOM
	trainervalue PHONECONTACT_BIKESHOP
	trainervalue PHONECONTACT_BILL
	trainervalue PHONECONTACT_ELM
	trainervalue PHONECONTACT_BUENA

	trainerclass CAL ; 1
	trainervalue CAL1
	trainervalue CAL2
	trainervalue CAL3
	trainervalue MT_BATTLE_100 ; CAL4
	trainervalue CAL5

	trainerclass SCIENTIST ; 2
	trainervalue ROSS
	trainervalue MITCH
	trainervalue JED
	trainervalue MARC
	trainervalue RICH
	trainervalue BRAYDON
	trainervalue GIDEON
	trainervalue TAYLOR
	trainervalue MT_BATTLE_18 ; DOIMO
	trainervalue MT_BATTLE_29 ; WAGEL
	trainervalue MT_BATTLE_33 ; HILDON
	trainervalue MT_BATTLE_51 ; DEMIT
	trainervalue MT_BATTLE_59 ; NANOT
	trainervalue MT_BATTLE_78 ; ORDO
	trainervalue MT_BATTLE_81 ; REMAN

	trainerclass YOUNGSTER ; 3
	trainervalue JOEY1
	trainervalue MIKEY
	trainervalue ALBERT
	trainervalue GORDON
	trainervalue SAMUEL
	trainervalue IAN
	trainervalue JOEY2
	trainervalue JOEY3
	trainervalue WARREN
	trainervalue JIMMY
	trainervalue OWEN
	trainervalue JASON
	trainervalue JOEY4
	trainervalue JOEY5
	trainervalue MT_BATTLE_20 ; ERBEN
	trainervalue MT_BATTLE_89 ; PERC
	trainervalue EDD

	trainerclass SCHOOLBOY ; 4
	trainervalue JACK1
	trainervalue KIPP
	trainervalue ALAN1
	trainervalue JOHNNY
	trainervalue DANNY
	trainervalue TOMMY
	trainervalue DUDLEY
	trainervalue JOE
	trainervalue BILLY
	trainervalue CHAD1
	trainervalue NATE
	trainervalue RICKY
	trainervalue JACK2
	trainervalue JACK3
	trainervalue ALAN2
	trainervalue ALAN3
	trainervalue CHAD2
	trainervalue CHAD3
	trainervalue JACK4
	trainervalue JACK5
	trainervalue ALAN4
	trainervalue ALAN5
	trainervalue CHAD4
	trainervalue CHAD5
	trainervalue MT_BATTLE_34 ; ROEX
	trainervalue THEODORE
	trainervalue PAULO

	trainerclass BIRD_KEEPER ; 5
	trainervalue ROD
	trainervalue ABE
	trainervalue BRYAN
	trainervalue THEO
	trainervalue TOBY
	trainervalue DENIS
	trainervalue VANCE1
	trainervalue HANK
	trainervalue ROY
	trainervalue BORIS
	trainervalue BOB
	trainervalue JOSE1
	trainervalue PETER
	trainervalue JOSE2
	trainervalue PERRY
	trainervalue BRET
	trainervalue VANCE2
	trainervalue VANCE3
	trainervalue MT_BATTLE_10 ; ELION
	trainervalue MT_BATTLE_61 ; BENIT
	trainervalue ADAM

	trainerclass LASS ; 6
	trainervalue CARRIE
	trainervalue BRIDGET
	trainervalue ALICE
	trainervalue KRISE
	trainervalue CONNIE1
	trainervalue LINDA
	trainervalue LAURA
	trainervalue SHANNON
	trainervalue MICHELLE
	trainervalue DANA1
	trainervalue ELLEN
	trainervalue CONNIE2
	trainervalue CONNIE3
	trainervalue DANA2
	trainervalue DANA3
	trainervalue DANA4
	trainervalue DANA5
	trainervalue MT_BATTLE_87 ; SANOL
	trainervalue SALLY
	trainervalue ROBIN
	trainervalue SAVANNAH

	trainerclass COOLTRAINERM ; 7
	trainervalue NICK
	trainervalue AARON
	trainervalue PAUL
	trainervalue CODY
	trainervalue MIKE
	trainervalue GAVEN1
	trainervalue GAVEN2
	trainervalue RYAN
	trainervalue JAKE
	trainervalue BLAKE
	trainervalue BRIAN
	trainervalue ERICK
	trainervalue ANDY
	trainervalue TYLER
	trainervalue SEAN
	trainervalue KEVIN
	trainervalue STEVE
	trainervalue ALLEN
	trainervalue DARIN
	trainervalue YUJI
	trainervalue MT_BATTLE_19 ; HEBEL
	trainervalue MT_BATTLE_37 ; MORIL
	trainervalue MT_BATTLE_50 ; CRYAL
	trainervalue MT_BATTLE_66 ; DAZON
	trainervalue MT_BATTLE_91 ; CRUIK
	trainervalue VINCE
	trainervalue JULES

	trainerclass COOLTRAINERF ; 8
	trainervalue GWEN
	trainervalue LOIS
	trainervalue FRAN
	trainervalue LOLA
	trainervalue KATE
	trainervalue IRENE
	trainervalue KELLY
	trainervalue JOYCE
	trainervalue BETH1
	trainervalue REENA1
	trainervalue MEGAN
	trainervalue BETH2
	trainervalue CAROL
	trainervalue QUINN
	trainervalue EMMA
	trainervalue CYBIL
	trainervalue JENN
	trainervalue REENA2
	trainervalue CARA
	trainervalue MT_BATTLE_24 ; RATEIS
	trainervalue MT_BATTLE_48 ; ROSNO
	trainervalue MT_BATTLE_73 ; GILLY
	trainervalue MT_BATTLE_99 ; TYNAN
	trainervalue CORA
	trainervalue CATHY
	trainervalue KEIRA
	trainervalue GLORIA

	trainerclass BEAUTY ; 9
	trainervalue VICTORIA
	trainervalue SAMANTHA
	trainervalue JULIE
	trainervalue JACLYN
	trainervalue BRENDA
	trainervalue CASSIE
	trainervalue CAROLINE
	trainervalue CARLENE
	trainervalue JESSICA
	trainervalue RACHAEL
	trainervalue ANGELICA
	trainervalue KENDRA
	trainervalue VERONICA
	trainervalue JULIA
	trainervalue THERESA
	trainervalue VALERIE
	trainervalue OLIVIA
	trainervalue MT_BATTLE_4 ; ZOILA
	trainervalue MT_BATTLE_28 ; BRENA
	trainervalue MT_BATTLE_54 ; RENE

	trainerclass POKEMANIAC ; a
	trainervalue LARRY
	trainervalue ANDREW
	trainervalue CALVIN
	trainervalue SHANE
	trainervalue BEN
	trainervalue BRENT1
	trainervalue RON
	trainervalue ETHAN
	trainervalue BRENT2
	trainervalue BRENT3
	trainervalue ISSAC
	trainervalue DONALD
	trainervalue ZACH
	trainervalue BRENT4
	trainervalue MILLER

	trainerclass GRUNTM ; b
	trainervalue GRUNTM_2
	trainervalue GRUNTM_3
	trainervalue GRUNTM_4
	trainervalue GRUNTM_5
	trainervalue GRUNTM_6
	trainervalue GRUNTM_7
	trainervalue GRUNTM_8
	trainervalue GRUNTM_9
	trainervalue GRUNTM_10
	trainervalue GRUNTM_11
	trainervalue GRUNTM_13
	trainervalue GRUNTM_14
	trainervalue GRUNTM_15
	trainervalue GRUNTM_16
	trainervalue GRUNTM_17
	trainervalue GRUNTM_18
	trainervalue GRUNTM_19
	trainervalue GRUNTM_20
	trainervalue GRUNTM_21
	trainervalue GRUNTM_24
	trainervalue GRUNTM_25
	trainervalue GRUNTM_26
	trainervalue GRUNTM_28
	trainervalue GRUNTM_29
	trainervalue GRUNTM_30
	trainervalue GRUNTM_31
	trainervalue GRUNTM_32

	trainerclass GENTLEMAN ; c
	trainervalue PRESTON
	trainervalue EDWARD
	trainervalue GREGORY
	trainervalue VIRGIL
	trainervalue ALFRED

	trainerclass SKIER ; d
	trainervalue ROXANNE
	trainervalue CLARISSA
	trainervalue CADY
	trainervalue MT_BATTLE_46 ; KIMERY
	trainervalue MT_BATTLE_57 ; VIUM
	trainervalue MT_BATTLE_77 ; ZALLA

	trainerclass TEACHER ; e
	trainervalue COLETTE
	trainervalue HILLARY
	trainervalue SHIRLEY
	trainervalue MT_BATTLE_5  ; SECORT
	trainervalue MT_BATTLE_16 ; FEREN
	trainervalue MT_BATTLE_26 ; ISETTE
	trainervalue MT_BATTLE_44 ; TASH
	trainervalue MT_BATTLE_56 ; AMEIL
	trainervalue MT_BATTLE_71 ; LISOT
	trainervalue MT_BATTLE_79 ; JODIN
	trainervalue MT_BATTLE_98 ; MASSI

	trainerclass BUG_CATCHER ; f
	trainervalue DON
	trainervalue ROB
	trainervalue ED
	trainervalue WADE1
	trainervalue BUG_CATCHER_BENNY
	trainervalue AL
	trainervalue JOSH
	trainervalue ARNIE1
	trainervalue KEN
	trainervalue WADE2
	trainervalue WADE3
	trainervalue DOUG
	trainervalue ARNIE2
	trainervalue ARNIE3
	trainervalue WADE4
	trainervalue WADE5
	trainervalue ARNIE4
	trainervalue ARNIE5
	trainervalue WAYNE
	trainervalue DANE
	trainervalue DION
	trainervalue STACEY
	trainervalue ELLIS
	trainervalue ABNER

	trainerclass FISHER ; 10
	trainervalue JUSTIN
	trainervalue RALPH1
	trainervalue ARNOLD
	trainervalue KYLE
	trainervalue HENRY
	trainervalue MARVIN
	trainervalue TULLY1
	trainervalue ANDRE
	trainervalue RAYMOND
	trainervalue WILTON1
	trainervalue EDGAR
	trainervalue JONAH
	trainervalue MARTIN
	trainervalue STEPHEN
	trainervalue BARNEY
	trainervalue RALPH2
	trainervalue RALPH3
	trainervalue TULLY2
	trainervalue TULLY3
	trainervalue WILTON2
	trainervalue SCOTT
	trainervalue WILTON3
	trainervalue RALPH4
	trainervalue RALPH5
	trainervalue TULLY4

	trainerclass SWIMMERM ; 11
	trainervalue HAROLD
	trainervalue SIMON_S
	trainervalue RANDALL
	trainervalue CHARLIE
	trainervalue GEORGE
	trainervalue BERKE
	trainervalue KIRK
	trainervalue MATHEW
	trainervalue HAL
	trainervalue PATON
	trainervalue DARYL
	trainervalue WALTER
	trainervalue TONY
	trainervalue JEROME
	trainervalue TUCKER
	trainervalue RICK
	trainervalue CAMERON
	trainervalue SETH
	trainervalue JAMES
	trainervalue LEWIS
	trainervalue PARKER
	trainervalue MT_BATTLE_35 ; DERON
	trainervalue MT_BATTLE_55 ; GULOR
	trainervalue MT_BATTLE_85 ; MENZON

	trainerclass SWIMMERF ; 12
	trainervalue ELAINE
	trainervalue PAULA
	trainervalue KAYLEE
	trainervalue SUSIE
	trainervalue DENISE
	trainervalue KARA
	trainervalue WENDY
	trainervalue LISA
	trainervalue JILL
	trainervalue MARY
	trainervalue KATIE
	trainervalue DAWN
	trainervalue TARA
	trainervalue NICOLE
	trainervalue LORI
	trainervalue JODY
	trainervalue NIKKI
	trainervalue DIANA
	trainervalue BRIANA
	trainervalue MT_BATTLE_2  ; SANO
	trainervalue MT_BATTLE_22 ; KIMBER
	trainervalue MT_BATTLE_36 ; TIANA

	trainerclass SAILOR ; 13
	trainervalue EUGENE
	trainervalue HUEY1
	trainervalue TERRELL
	trainervalue KENT
	trainervalue ERNEST
	trainervalue JEFF
	trainervalue GARRETT
	trainervalue KENNETH
	trainervalue STANLY
	trainervalue HARRY
	trainervalue HUEY2
	trainervalue HUEY3
	trainervalue HUEY4
	trainervalue MT_BATTLE_70 ; VARIO

	trainerclass SUPER_NERD ; 14
	trainervalue STAN
	trainervalue ERIC
	trainervalue GREGG
	trainervalue JAY
	trainervalue DAVE
	trainervalue SAM
	trainervalue TOM
	trainervalue PAT
	trainervalue SHAWN
	trainervalue TERU
	trainervalue RUSS
	trainervalue NORTON
	trainervalue HUGH
	trainervalue MARKUS
	trainervalue MT_BATTLE_1  ; ROOD
	trainervalue MT_BATTLE_40 ; SLEWIS
	trainervalue MT_BATTLE_45 ; ACRON
	trainervalue MT_BATTLE_69 ; DUNOR
	trainervalue MT_BATTLE_95 ; ELDAN

	trainerclass GUITARIST ; 15
	trainervalue CLYDE
	trainervalue VINCENT
	trainervalue JAMIE
	trainervalue MT_BATTLE_15 ; ARDO
	trainervalue MT_BATTLE_27 ; NOREL
	trainervalue MT_BATTLE_43 ; DEATS
	trainervalue MT_BATTLE_82 ; FEEK
	trainervalue MT_BATTLE_90 ; NEBLEK

	trainerclass HIKER ; 16
	trainervalue ANTHONY1
	trainervalue RUSSELL
	trainervalue PHILLIP
	trainervalue LEONARD
	trainervalue ANTHONY2
	trainervalue BENJAMIN
	trainervalue ERIK
	trainervalue MICHAEL
	trainervalue PARRY1
	trainervalue TIMOTHY
	trainervalue BAILEY
	trainervalue ANTHONY3
	trainervalue TIM
	trainervalue NOLAND
	trainervalue SIDNEY
	trainervalue KENNY
	trainervalue JIM
	trainervalue DANIEL
	trainervalue PARRY2
	trainervalue PARRY3
	trainervalue ANTHONY4
	trainervalue ANTHONY5
	trainervalue MT_BATTLE_30 ; LEVEN
	trainervalue MT_BATTLE_53 ; CRAG
	trainervalue MT_BATTLE_84 ; WILER
	trainervalue DARRELL

	trainerclass BIKER ; 17
	trainervalue BIKER_BENNY
	trainervalue KAZU
	trainervalue DWAYNE
	trainervalue HARRIS
	trainervalue ZEKE
	trainervalue CHARLES
	trainervalue RILEY
	trainervalue JOEL
	trainervalue GLENN
	trainervalue MT_BATTLE_3 ; EARGLE
	trainervalue MT_BATTLE_39 ; LOHON
	trainervalue MT_BATTLE_63 ; ROGIN
	trainervalue MT_BATTLE_88 ; REBIN

	trainerclass BURGLAR ; 18
	trainervalue DUNCAN
	trainervalue EDDIE
	trainervalue COREY
	trainervalue JAC
	trainervalue DUSTY
	trainervalue SIMON_B
	trainervalue JENSEN

	trainerclass FIREBREATHER ; 19
	trainervalue OTIS
	trainervalue DICK
	trainervalue NED
	trainervalue BURT
	trainervalue BILL
	trainervalue WALT
	trainervalue RAY
	trainervalue LYLE
	trainervalue MT_BATTLE_25 ; HOGLO

	trainerclass JUGGLER ; 1a
	trainervalue IRWIN1
	trainervalue FRITZ
	trainervalue HORTON
	trainervalue IRWIN2
	trainervalue IRWIN3
	trainervalue IRWIN4
	trainervalue MT_BATTLE_21 ; SIDO
	trainervalue MT_BATTLE_52 ; LIREL
	trainervalue MT_BATTLE_76 ; SIRKO

	trainerclass BLACKBELT_T ; 1b
	trainervalue KENJI1
	trainervalue YOSHI
	trainervalue KENJI2
	trainervalue LAO
	trainervalue NOB
	trainervalue KIYO
	trainervalue LUNG
	trainervalue KENJI3
	trainervalue WAI
	trainervalue MT_BATTLE_9 ; RAPOZ
	trainervalue MT_BATTLE_14 ; ROGEN
	trainervalue MT_BATTLE_47 ; RAWLES
	trainervalue MT_BATTLE_62 ; HELMIN
	trainervalue MT_BATTLE_74 ; CHIOD
	trainervalue MT_BATTLE_96 ; ELDOR
	trainervalue YUGI
	trainervalue RHETT

	trainerclass PSYCHIC_T ; 1c
	trainervalue NATHAN
	trainervalue FRANKLIN
	trainervalue HERMAN
	trainervalue FIDEL
	trainervalue GREG
	trainervalue NORMAN
	trainervalue MARK
	trainervalue PHIL
	trainervalue RICHARD
	trainervalue GILBERT
	trainervalue JARED
	trainervalue RODNEY
	trainervalue JOSHUA_P
	trainervalue ALEXIS

	trainerclass PICNICKER ; 1d
	trainervalue LIZ1
	trainervalue GINA1
	trainervalue BROOKE
	trainervalue KIM
	trainervalue CINDY
	trainervalue HOPE
	trainervalue SHARON
	trainervalue DEBRA
	trainervalue GINA2
	trainervalue ERIN1
	trainervalue LIZ2
	trainervalue LIZ3
	trainervalue HEIDI
	trainervalue EDNA
	trainervalue GINA3
	trainervalue TIFFANY1
	trainervalue TIFFANY2
	trainervalue ERIN2
	trainervalue TANYA
	trainervalue TIFFANY3
	trainervalue ERIN3
	trainervalue LIZ4
	trainervalue LIZ5
	trainervalue GINA4
	trainervalue GINA5
	trainervalue TIFFANY4
	trainervalue MT_BATTLE_17 ; MALOO
	trainervalue MT_BATTLE_67 ; ZIALE
	trainervalue MT_BATTLE_93 ; NOMOL
	trainervalue JESSIE

	trainerclass CAMPER ; 1e
	trainervalue ROLAND
	trainervalue TODD1
	trainervalue IVAN
	trainervalue ELLIOT
	trainervalue BARRY
	trainervalue LLOYD
	trainervalue DEAN
	trainervalue SID
	trainervalue HARVEY
	trainervalue DALE
	trainervalue TED
	trainervalue TODD2
	trainervalue TODD3
	trainervalue THOMAS
	trainervalue LEROY
	trainervalue DAVID
	trainervalue JOHN
	trainervalue JERRY
	trainervalue SPENCER
	trainervalue TODD4
	trainervalue TODD5
	trainervalue QUENTIN
	trainervalue MT_BATTLE_12 ; DENC
	trainervalue MT_BATTLE_83 ; AICH
	trainervalue JAMES_C

	trainerclass SAGE ; 1f
	trainervalue CHOW
	trainervalue NICO
	trainervalue JIN
	trainervalue TROY
	trainervalue JEFFREY
	trainervalue PING
	trainervalue EDMOND
	trainervalue NEAL
	trainervalue GAKU
	trainervalue MASA
	trainervalue YIN
	trainervalue YANG
	trainervalue MT_BATTLE_6 ; GRUND
	trainervalue MT_BATTLE_41 ; ORSAK
	trainervalue MT_BATTLE_86 ; BERLO

	trainerclass MEDIUM ; 20
	trainervalue MARTHA
	trainervalue GRACE
	trainervalue BETHANY
	trainervalue MARGRET
	trainervalue ETHEL
	trainervalue REBECCA
	trainervalue DORIS
	trainervalue CARLY
	trainervalue LAUREL
	trainervalue PATRICIA
	trainervalue MT_BATTLE_13 ; MYOG
	trainervalue MT_BATTLE_38 ; GRENAY
	trainervalue MT_BATTLE_65 ; PERSTIN
	trainervalue MT_BATTLE_94 ; DESOR
	trainervalue PHOEBE
	trainervalue HOLLY

	trainerclass BOARDER ; 21
	trainervalue RONALD
	trainervalue BRAD
	trainervalue DOUGLAS
	trainervalue SHAUN
	trainervalue BRYCE
	trainervalue MT_BATTLE_7 ; GARS
	trainervalue MT_BATTLE_23 ; RENFAR
	trainervalue MT_BATTLE_32 ; TARY
	trainervalue MT_BATTLE_49 ; MANDEV
	trainervalue MT_BATTLE_58 ; BIDIX
	trainervalue MT_BATTLE_72 ; FAUL

	trainerclass POKEFANM ; 22
	trainervalue WILLIAM
	trainervalue DEREK1
	trainervalue ROBERT
	trainervalue JOSHUA
	trainervalue CARTER
	trainervalue TREVOR
	trainervalue BRANDON
	trainervalue JEREMY
	trainervalue COLIN
	trainervalue DEREK2
	trainervalue DEREK3
	trainervalue ALEX
	trainervalue REX
	trainervalue ALLAN
	trainervalue MT_BATTLE_11 ; GIROD
	trainervalue MT_BATTLE_42 ; GOHN
	trainervalue MT_BATTLE_68 ; CORVIN
	trainervalue MT_BATTLE_92 ; PAREL

	trainerclass KIMONO_GIRL ; 23
	trainervalue NAOKO
	trainervalue SAYO
	trainervalue ZUKI
	trainervalue KUNI
	trainervalue MIKI
	trainervalue LINNEA
	trainervalue REA
	trainervalue SAKUYA
	trainervalue MT_BATTLE_80 ; DESSA

	trainerclass TWINS ; 24
	trainervalue AMYANDMAY1
	trainervalue ANNANDANNE1
	trainervalue ANNANDANNE2
	trainervalue AMYANDMAY2
	trainervalue JOANDZOE1
	trainervalue JOANDZOE2
	trainervalue MEGANDPEG1
	trainervalue MEGANDPEG2
	trainervalue LEAANDPIA1
	trainervalue LEAANDPIA2

	trainerclass POKEFANF ; 25
	trainervalue BEVERLY1
	trainervalue RUTH
	trainervalue BEVERLY2
	trainervalue BEVERLY3
	trainervalue GEORGIA
	trainervalue JAIME
	trainervalue MT_BATTLE_8  ; LADIN
	trainervalue MT_BATTLE_31 ; SASON
	trainervalue MT_BATTLE_60 ; GLYDIN
	trainervalue MT_BATTLE_64 ; CEWAN
	trainervalue MT_BATTLE_97 ; LISAN

	trainerclass RED ; 26
	trainervalue GF_RED
	trainervalue CCC_DUALRED
	trainervalue KAY
	trainervalue RED_GAUNTLETRED
	trainervalue RED_RED2
	trainervalue AIIIAAB2

	trainerclass OFFICER ; 27
	trainervalue KEITH
	trainervalue DIRK
	trainervalue MT_BATTLE_75 ; MATON

	trainerclass GRUNTF ; 28
	trainervalue GRUNTF_1
	trainervalue GRUNTF_2
	trainervalue GRUNTF_3
	trainervalue GRUNTF_4
	trainervalue GRUNTF_5
	trainervalue GRUNTF_6

	trainerclass AZURE ; 29
	trainervalue AZURE1

	trainerclass FC_LARRY ; 2a
	trainervalue LARRY_GREEN

	trainerclass RBY_GREEN ; 2b
	trainervalue XXWWNN

	trainerclass CY_ROBORED ; 2c
	trainervalue X_CHATTYYELLOW1
	trainervalue X_CHATTYYELLOW2
	trainervalue X_CHATTYYELLOW3
	trainervalue X_CHATTYYELLOW4
	trainervalue X_CHATTYYELLOW5

	trainerclass GSCHGSS_CHRIS ; 2d
	trainervalue AAEFFFF
	trainervalue D_GAUNTLETCRYSTAL

	trainerclass GSC_KRIS ; 2e
	trainervalue EWWYPPP
	trainervalue KKKB

	trainerclass AC_CHRIS ; 2f
	trainervalue EVAN1
	trainervalue EVAN2
	trainervalue EVAN3
	trainervalue EVAN4
	trainervalue EVAN5
	trainervalue EVAN6

	trainerclass FC_CHRIS ; 30
	trainervalue Y_FUSEDCRYSTAL

	trainerclass BRENDAN_KANTO_LEADER ; 31
	trainervalue EEBNERT

	trainerclass FRLG_LEAF ; 32
	trainervalue A_FIRERED

	trainerclass COLO_WES ; 33
	trainervalue AAAAAAA1
	trainervalue ACCC
	trainervalue AAAAAAA2

	trainerclass XD_MICHAEL ; 34
	trainervalue STARS

	trainerclass PT_LUCAS ; 35
	trainervalue NQPPPNL

	trainerclass HGSS_LYRA ; 36
	trainervalue AOOOO

	trainerclass B2W2_NATE ; 37
	trainervalue R_BLACK21

	trainerclass XY_SERENA2 ; 38
	trainervalue ETR
	trainervalue ETR_REMATCH

	trainerclass SMUSUM_ELIO ; 39
	trainervalue L_SUN

	trainerclass GLAZED ; 3a
	trainervalue AHUNIgg

	trainerclass NUZLOCKE ; 3b
	trainervalue F481
	trainervalue F482
	trainervalue F483

	trainerclass P_CYAN ; 3c
	trainervalue CYAN
	trainervalue CYAN_REMATCH

	trainerclass RED_LARRY ; 3d
	trainervalue LARRY_R1
	trainervalue LARRY_R2

	trainerclass GREEN_MAY ; 3e
	trainervalue A_EMERALD
	trainervalue A_EMERALD_REMATCH

	trainerclass BROWN ; 3f
	trainervalue PAUL_B

	trainerclass BABA ; 40
	trainervalue BABA1
	trainervalue BABA2
	trainervalue BABA3
	trainervalue BABA4

	trainerclass URF ; 41
	trainervalue URF1

	trainerclass BRENDAN_JOHTO_LEADER ; 42
	trainervalue ORLANDO

	trainerclass GSCHGSS_CHRIS_RIVAL ; 43
	trainervalue AJDNNW1
	trainervalue AJDNNW2
	trainervalue AJDNNW3
	trainervalue AJDNNW4

	trainerclass RED_JOHTO_LEADER ; 44
	trainervalue AIIIAAB1

	trainerclass RED_KANTO_LEADER ; 45
	trainervalue RED_RED

	trainerclass NATE_LEADER ; 46
	trainervalue AAAALK

	trainerclass NATE_ELITE_4 ; 47
	trainervalue R_BLACK22
	trainervalue R_BLACK23

	trainerclass POKEMON_PROF ; 48

	trainerclass BATTLE_PC ; 49
	trainervalue MIRROR_PC

	trainerclass WOOPER_T ; 4a
	trainervalue GMMTMT

KRIS EQU __enum__

	trainerclass BLUE_MAY ; 4b
	trainervalue MARINA

	trainerclass PT_LUCAS_BT ; 4c
	
	trainerclass XD_MICHAEL_BT ; 4d
	
	trainerclass GREEN_MAY_BT ; 4e
	
	trainerclass BLUE_MAY_BT ; 4f
	
NUM_TRAINER_CLASSES EQU __enum__
