trainerclass: MACRO
	enum \1
const_value = 1
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
	const PHONECONTACT_MOM
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BILL
	const PHONECONTACT_ELM
	const PHONECONTACT_BUENA

	trainerclass CAL ; 1
	const CAL1
	const CAL2
	const CAL3

	trainerclass SCIENTIST ; 2
	const ROSS
	const MITCH
	const JED
	const MARC
	const RICH
	const BRAYDON
	const GIDEON
	const TAYLOR
	const MT_BATTLE_18 ; DOIMO
	const MT_BATTLE_29 ; WAGEL
	const MT_BATTLE_31 ; HILDON
	const MT_BATTLE_51 ; DEMIT
	const MT_BATTLE_59 ; NANOT

	trainerclass YOUNGSTER ; 3
	const JOEY1
	const MIKEY
	const ALBERT
	const GORDON
	const SAMUEL
	const IAN
	const JOEY2
	const JOEY3
	const WARREN
	const JIMMY
	const OWEN
	const JASON
	const JOEY4
	const JOEY5
	const MT_BATTLE_20 ; ERBEN

	trainerclass SCHOOLBOY ; 4
	const JACK1
	const KIPP
	const ALAN1
	const JOHNNY
	const DANNY
	const TOMMY
	const DUDLEY
	const JOE
	const BILLY
	const CHAD1
	const NATE
	const RICKY
	const JACK2
	const JACK3
	const ALAN2
	const ALAN3
	const CHAD2
	const CHAD3
	const JACK4
	const JACK5
	const ALAN4
	const ALAN5
	const CHAD4
	const CHAD5
	const MT_BATTLE_34 ; ROEX

	trainerclass BIRD_KEEPER ; 5
	const ROD
	const ABE
	const BRYAN
	const THEO
	const TOBY
	const DENIS
	const VANCE1
	const HANK
	const ROY
	const BORIS
	const BOB
	const JOSE1
	const PETER
	const JOSE2
	const PERRY
	const BRET
	const VANCE2
	const VANCE3
	const MT_BATTLE_10 ; ELION
	const MT_BATTLE_61 ; BENIT

	trainerclass LASS ; 6
	const CARRIE
	const BRIDGET
	const ALICE
	const KRISE
	const CONNIE1
	const LINDA
	const LAURA
	const SHANNON
	const MICHELLE
	const DANA1
	const ELLEN
	const CONNIE2
	const CONNIE3
	const DANA2
	const DANA3
	const DANA4
	const DANA5

	trainerclass COOLTRAINERM ; 7
	const NICK
	const AARON
	const PAUL
	const CODY
	const MIKE
	const GAVEN1
	const GAVEN2
	const RYAN
	const JAKE
	const BLAKE
	const BRIAN
	const ERICK
	const ANDY
	const TYLER
	const SEAN
	const KEVIN
	const STEVE
	const ALLEN
	const DARIN
	const YUJI
	const MT_BATTLE_19 ; HEBEL
	const MT_BATTLE_37 ; MORIL
	const MT_BATTLE_50 ; CRYAL
	const MT_BATTLE_66 ; DAZON

	trainerclass COOLTRAINERF ; 8
	const GWEN
	const LOIS
	const FRAN
	const LOLA
	const KATE
	const IRENE
	const KELLY
	const JOYCE
	const BETH1
	const REENA1
	const MEGAN
	const BETH2
	const CAROL
	const QUINN
	const EMMA
	const CYBIL
	const JENN
	const REENA2
	const CARA
	const MT_BATTLE_24 ; RATEIS
	const MT_BATTLE_48 ; ROSNO

	trainerclass BEAUTY ; 9
	const VICTORIA
	const SAMANTHA
	const JULIE
	const JACLYN
	const BRENDA
	const CASSIE
	const CAROLINE
	const CARLENE
	const JESSICA
	const RACHAEL
	const ANGELICA
	const KENDRA
	const VERONICA
	const JULIA
	const THERESA
	const VALERIE
	const OLIVIA
	const MT_BATTLE_4 ; ZOILA
	const MT_BATTLE_28 ; BRENA
	const MT_BATTLE_54 ; RENE

	trainerclass POKEMANIAC ; a
	const LARRY
	const ANDREW
	const CALVIN
	const SHANE
	const BEN
	const BRENT1
	const RON
	const ETHAN
	const BRENT2
	const BRENT3
	const ISSAC
	const DONALD
	const ZACH
	const BRENT4
	const MILLER

	trainerclass GRUNTM ; b
	const GRUNTM_2
	const GRUNTM_3
	const GRUNTM_4
	const GRUNTM_5
	const GRUNTM_6
	const GRUNTM_7
	const GRUNTM_8
	const GRUNTM_9
	const GRUNTM_10
	const GRUNTM_11
	const GRUNTM_13
	const GRUNTM_14
	const GRUNTM_15
	const GRUNTM_16
	const GRUNTM_17
	const GRUNTM_18
	const GRUNTM_19
	const GRUNTM_20
	const GRUNTM_21
	const GRUNTM_24
	const GRUNTM_25
	const GRUNTM_26
	const GRUNTM_28
	const GRUNTM_29
	const GRUNTM_30
	const GRUNTM_31
	const GRUNTM_32

	trainerclass GENTLEMAN ; c
	const PRESTON
	const EDWARD
	const GREGORY
	const VIRGIL
	const ALFRED

	trainerclass SKIER ; d
	const ROXANNE
	const CLARISSA
	const CADY
	const MT_BATTLE_46 ; KIMERY
	const MT_BATTLE_57 ; VIUM

	trainerclass TEACHER ; e
	const COLETTE
	const HILLARY
	const SHIRLEY
	const MT_BATTLE_5 ; SECORT
	const MT_BATTLE_16 ; FEREN
	const MT_BATTLE_26 ; ISETTE
	const MT_BATTLE_44 ; TASH
	const MT_BATTLE_56 ; AMEIL

	trainerclass BUG_CATCHER ; f
	const DON
	const ROB
	const ED
	const WADE1
	const BUG_CATCHER_BENNY
	const AL
	const JOSH
	const ARNIE1
	const KEN
	const WADE2
	const WADE3
	const DOUG
	const ARNIE2
	const ARNIE3
	const WADE4
	const WADE5
	const ARNIE4
	const ARNIE5
	const WAYNE
	const DANE
	const DION
	const STACEY
	const ELLIS
	const ABNER

	trainerclass FISHER ; 10
	const JUSTIN
	const RALPH1
	const ARNOLD
	const KYLE
	const HENRY
	const MARVIN
	const TULLY1
	const ANDRE
	const RAYMOND
	const WILTON1
	const EDGAR
	const JONAH
	const MARTIN
	const STEPHEN
	const BARNEY
	const RALPH2
	const RALPH3
	const TULLY2
	const TULLY3
	const WILTON2
	const SCOTT
	const WILTON3
	const RALPH4
	const RALPH5
	const TULLY4

	trainerclass SWIMMERM ; 11
	const HAROLD
	const SIMON_S
	const RANDALL
	const CHARLIE
	const GEORGE
	const BERKE
	const KIRK
	const MATHEW
	const HAL
	const PATON
	const DARYL
	const WALTER
	const TONY
	const JEROME
	const TUCKER
	const RICK
	const CAMERON
	const SETH
	const JAMES
	const LEWIS
	const PARKER
	const MT_BATTLE_35 ; DERON
	const MT_BATTLE_55 ; GULOR

	trainerclass SWIMMERF ; 12
	const ELAINE
	const PAULA
	const KAYLEE
	const SUSIE
	const DENISE
	const KARA
	const WENDY
	const LISA
	const JILL
	const MARY
	const KATIE
	const DAWN
	const TARA
	const NICOLE
	const LORI
	const JODY
	const NIKKI
	const DIANA
	const BRIANA
	const MT_BATTLE_2 ; SANO
	const MT_BATTLE_22 ; KIMBER
	const MT_BATTLE_36 ; TIANA

	trainerclass SAILOR ; 13
	const EUGENE
	const HUEY1
	const TERRELL
	const KENT
	const ERNEST
	const JEFF
	const GARRETT
	const KENNETH
	const STANLY
	const HARRY
	const HUEY2
	const HUEY3
	const HUEY4
	const MT_BATTLE_70 ; VARIO

	trainerclass SUPER_NERD ; 14
	const STAN
	const ERIC
	const GREGG
	const JAY
	const DAVE
	const SAM
	const TOM
	const PAT
	const SHAWN
	const TERU
	const RUSS
	const NORTON
	const HUGH
	const MARKUS
	const MT_BATTLE_1 ; ROOD
	const MT_BATTLE_40 ; SLEWIS
	const MT_BATTLE_45 ; ACRON
	const MT_BATTLE_69 ; DUNOR

	trainerclass GUITARIST ; 15
	const CLYDE
	const VINCENT
	const JAMIE
	const MT_BATTLE_15 ; ARDO
	const MT_BATTLE_27 ; NOREL
	const MT_BATTLE_43 ; DEATS

	trainerclass HIKER ; 16
	const ANTHONY1
	const RUSSELL
	const PHILLIP
	const LEONARD
	const ANTHONY2
	const BENJAMIN
	const ERIK
	const MICHAEL
	const PARRY1
	const TIMOTHY
	const BAILEY
	const ANTHONY3
	const TIM
	const NOLAND
	const SIDNEY
	const KENNY
	const JIM
	const DANIEL
	const PARRY2
	const PARRY3
	const ANTHONY4
	const ANTHONY5
	const MT_BATTLE_30 ; LEVEN
	const MT_BATTLE_53 ; CRAG

	trainerclass BIKER ; 17
	const BIKER_BENNY
	const KAZU
	const DWAYNE
	const HARRIS
	const ZEKE
	const CHARLES
	const RILEY
	const JOEL
	const GLENN
	const MT_BATTLE_3 ; EARGLE
	const MT_BATTLE_39 ; LOHON
	const MT_BATTLE_63 ; ROGIN

	trainerclass BURGLAR ; 18
	const DUNCAN
	const EDDIE
	const COREY
	const JAC
	const DUSTY
	const SIMON_B

	trainerclass FIREBREATHER ; 19
	const OTIS
	const DICK
	const NED
	const BURT
	const BILL
	const WALT
	const RAY
	const LYLE
	const MT_BATTLE_25 ; HOGLO

	trainerclass JUGGLER ; 1a
	const IRWIN1
	const FRITZ
	const HORTON
	const IRWIN2
	const IRWIN3
	const IRWIN4
	const MT_BATTLE_21 ; SIDO
	const MT_BATTLE_52 ; LIREL

	trainerclass BLACKBELT_T ; 1b
	const KENJI1
	const YOSHI
	const KENJI2
	const LAO
	const NOB
	const KIYO
	const LUNG
	const KENJI3
	const WAI
	const MT_BATTLE_9 ; RAPOZ
	const MT_BATTLE_14 ; ROGEN
	const MT_BATTLE_47 ; RAWLES
	const MT_BATTLE_62 ; HELMIN

	trainerclass PSYCHIC_T ; 1c
	const NATHAN
	const FRANKLIN
	const HERMAN
	const FIDEL
	const GREG
	const NORMAN
	const MARK
	const PHIL
	const RICHARD
	const GILBERT
	const JARED
	const RODNEY

	trainerclass PICNICKER ; 1d
	const LIZ1
	const GINA1
	const BROOKE
	const KIM
	const CINDY
	const HOPE
	const SHARON
	const DEBRA
	const GINA2
	const ERIN1
	const LIZ2
	const LIZ3
	const HEIDI
	const EDNA
	const GINA3
	const TIFFANY1
	const TIFFANY2
	const ERIN2
	const TANYA
	const TIFFANY3
	const ERIN3
	const LIZ4
	const LIZ5
	const GINA4
	const GINA5
	const TIFFANY4
	const MT_BATTLE_17 ; MALOO
	const MT_BATTLE_67 ; ZIALE

	trainerclass CAMPER ; 1e
	const ROLAND
	const TODD1
	const IVAN
	const ELLIOT
	const BARRY
	const LLOYD
	const DEAN
	const SID
	const HARVEY
	const DALE
	const TED
	const TODD2
	const TODD3
	const THOMAS
	const LEROY
	const DAVID
	const JOHN
	const JERRY
	const SPENCER
	const TODD4
	const TODD5
	const QUENTIN
	const MT_BATTLE_12 ; DENC

	trainerclass SAGE ; 1f
	const CHOW
	const NICO
	const JIN
	const TROY
	const JEFFREY
	const PING
	const EDMOND
	const NEAL
	const GAKU
	const MASA
	const YIN
	const YANG
	const MT_BATTLE_6 ; GRUND
	const MT_BATTLE_41 ; ORSAK

	trainerclass MEDIUM ; 20
	const MARTHA
	const GRACE
	const BETHANY
	const MARGRET
	const ETHEL
	const REBECCA
	const DORIS
	const CARLY
	const LAUREL
	const PATRICIA
	const MT_BATTLE_13 ; MYOG
	const MT_BATTLE_38 ; GRENAY
	const MT_BATTLE_65 ; PERSTIN

	trainerclass BOARDER ; 21
	const RONALD
	const BRAD
	const DOUGLAS
	const SHAUN
	const BRYCE
	const MT_BATTLE_7 ; GARS
	const MT_BATTLE_23 ; RENFAR
	const MT_BATTLE_32 ; TARY
	const MT_BATTLE_49 ; MANDEV
	const MT_BATTLE_58 ; BIDIX

	trainerclass POKEFANM ; 22
	const WILLIAM
	const DEREK1
	const ROBERT
	const JOSHUA
	const CARTER
	const TREVOR
	const BRANDON
	const JEREMY
	const COLIN
	const DEREK2
	const DEREK3
	const ALEX
	const REX
	const ALLAN
	const MT_BATTLE_11 ; GIROD
	const MT_BATTLE_42 ; GOHN
	const MT_BATTLE_68 ; CORVIN

	trainerclass KIMONO_GIRL ; 23
	const NAOKO
	const SAYO
	const ZUKI
	const KUNI
	const MIKI
	const LINNEA
	const REA
	const SAKUYA

	trainerclass TWINS ; 24
	const AMYANDMAY1
	const ANNANDANNE1
	const ANNANDANNE2
	const AMYANDMAY2
	const JOANDZOE1
	const JOANDZOE2
	const MEGANDPEG1
	const MEGANDPEG2
	const LEAANDPIA1
	const LEAANDPIA2

	trainerclass POKEFANF ; 25
	const BEVERLY1
	const RUTH
	const BEVERLY2
	const BEVERLY3
	const GEORGIA
	const JAIME
	const MT_BATTLE_8 ; LADIN
	const MT_BATTLE_33 ; SASON
	const MT_BATTLE_60 ; GLYDIN
	const MT_BATTLE_64 ; CEWAN

	trainerclass RED ; 26
	const GF_RED
	const CCC_DUALRED
	const KAY
	const RED_GAUNTLETRED

	trainerclass OFFICER ; 27
	const KEITH
	const DIRK

	trainerclass GRUNTF ; 28
	const GRUNTF_1
	const GRUNTF_2
	const GRUNTF_3
	const GRUNTF_4
	const GRUNTF_5
	const GRUNTF_6

	trainerclass AZURE ; 29
	const AZURE1

	trainerclass FC_LARRY ; 2a
	const LARRY_GREEN

	trainerclass RBY_GREEN ; 2b
	const XXWWNN

	trainerclass CY_ROBORED ; 2c
	const X_CHATTYYELLOW1
	const X_CHATTYYELLOW2
	const X_CHATTYYELLOW3
	const X_CHATTYYELLOW4

	trainerclass GSCHGSS_CHRIS ; 2d
	const AAEFFFF
	const D_GAUNTLETCRYSTAL

	trainerclass GSC_KRIS ; 2e
	const EWWYPPP

	trainerclass AC_CHRIS ; 30
	const EVAN1
	const EVAN2
	const EVAN3
	const EVAN4
	const EVAN5

	trainerclass FC_CHRIS ; 31
	const Y_FUSEDCRYSTAL

	trainerclass BRENDAN_KANTO_LEADER ; 32
	const EEBNERT

	trainerclass FRLG_LEAF ; 33
	const A_FIRERED

	trainerclass COLO_WES ; 34
	const AAAAAAA1
	const ACCC
	const AAAAAAA2

	trainerclass XD_MICHAEL ; 35
	const STARS

	trainerclass PT_LUCAS ; 36
	const NQPPPNL

	trainerclass HGSS_LYRA ; 37
	const AOOOO

	trainerclass B2W2_NATE ; 38
	const R_BLACK21

	trainerclass XY_SERENA2 ; 39
	const ETR

	trainerclass SMUSUM_ELIO ; 3a
	const L_SUN

	trainerclass GLAZED ; 3b
	const AHUNIgg

	trainerclass NUZLOCKE ; 3c
	const F481
	const F482
	const F483

	trainerclass P_CYAN ; 3d
	const CYAN

	trainerclass RED_LARRY ; 3e
	const LARRY_R1
	const LARRY_R2

	trainerclass GREEN_MAY ; 3f
	const A_EMERALD

	trainerclass BROWN ; 40
	const PAUL_B

	trainerclass BABA ; 41
	const BABA1
	const BABA2
	const BABA3
	const BABA4

	trainerclass URF ; 42
	const URF1

	trainerclass BRENDAN_JOHTO_LEADER ; 43
	const ORLANDO

	trainerclass GSCHGSS_CHRIS_RIVAL ; 44
	const AJDNNW1
	const AJDNNW2
	const AJDNNW3
	const AJDNNW4

	trainerclass RED_JOHTO_LEADER ; 45
	const AIIIAAB1

	trainerclass RED_KANTO_LEADER ; 46
	const RED_RED

	trainerclass NATE_LEADER ; 47
	const AAAALK

	trainerclass NATE_ELITE_4 ; 48
	const R_BLACK22

	trainerclass POKEMON_PROF ; 49

	trainerclass BATTLE_PC    ; 4a
	const MIRROR_PC

	trainerclass WOOPER_T     ; 4b
	const GMMTMT

KRIS EQU __enum__

NUM_TRAINER_CLASSES EQU __enum__
