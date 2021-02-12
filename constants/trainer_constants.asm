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

	trainerclass PRYCE ; 1
	const PRYCE1

	trainerclass CLAIR ; 2
	const CLAIR1

	trainerclass RIVAL1 ; 3
	const RIVAL1_1_CHIKORITA
	const RIVAL1_1_CYNDAQUIL
	const RIVAL1_1_TOTODILE
	const RIVAL1_2_CHIKORITA
	const RIVAL1_2_CYNDAQUIL
	const RIVAL1_2_TOTODILE
	const RIVAL1_3_CHIKORITA
	const RIVAL1_3_CYNDAQUIL
	const RIVAL1_3_TOTODILE
	const RIVAL1_4_CHIKORITA
	const RIVAL1_4_CYNDAQUIL
	const RIVAL1_4_TOTODILE
	const RIVAL1_5_CHIKORITA
	const RIVAL1_5_CYNDAQUIL
	const RIVAL1_5_TOTODILE

	trainerclass POKEMON_PROF ; 4

	trainerclass WILL ; 5
	const WILL1

	trainerclass CAL ; 6
	const CAL1
	const CAL2
	const CAL3

	trainerclass BRUNO ; 7
	const BRUNO1

	trainerclass KAREN ; 8
	const KAREN1

	trainerclass KOGA ; 9
	const KOGA1

	trainerclass CHAMPION ; a
	const LANCE

	trainerclass BROCK ; b
	const BROCK1

	trainerclass MISTY ; c
	const MISTY1

	trainerclass LT_SURGE ; d
	const LT_SURGE1

	trainerclass SCIENTIST ; e
	const ROSS
	const MITCH
	const JED
	const MARC
	const RICH

	trainerclass ERIKA ; f
	const ERIKA1

	trainerclass YOUNGSTER ; 10
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

	trainerclass SCHOOLBOY ; 11
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

	trainerclass BIRD_KEEPER ; 12
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
	const JOSE3
	const VANCE2
	const VANCE3

	trainerclass LASS ; 13
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

	trainerclass JANINE ; 14
	const JANINE1

	trainerclass COOLTRAINERM ; 15
	const NICK
	const AARON
	const PAUL
	const CODY
	const MIKE
	const GAVEN1
	const GAVEN2
	const RYAN
	const JAKE
	const GAVEN3
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

	trainerclass COOLTRAINERF ; 16
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
	const BETH3
	const REENA2
	const REENA3
	const CARA

	trainerclass BEAUTY ; 17
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

	trainerclass POKEMANIAC ; 18
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

	trainerclass GRUNTM ; 19
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

	trainerclass GENTLEMAN ; 1a
	const PRESTON
	const EDWARD
	const GREGORY
	const VIRGIL
	const ALFRED

	trainerclass SKIER ; 1b
	const ROXANNE
	const CLARISSA

	trainerclass TEACHER ; 1c
	const COLETTE
	const HILLARY
	const SHIRLEY

	trainerclass SABRINA ; 1d
	const SABRINA1

	trainerclass BUG_CATCHER ; 1e
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

	trainerclass FISHER ; 1f
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

	trainerclass SWIMMERM ; 20
	const HAROLD
	const SIMON
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

	trainerclass SWIMMERF ; 21
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

	trainerclass SAILOR ; 22
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

	trainerclass SUPER_NERD ; 23
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

	trainerclass RIVAL2 ; 24
	const RIVAL2_1_CHIKORITA
	const RIVAL2_1_CYNDAQUIL
	const RIVAL2_1_TOTODILE
	const RIVAL2_2_CHIKORITA
	const RIVAL2_2_CYNDAQUIL
	const RIVAL2_2_TOTODILE

	trainerclass GUITARIST ; 25
	const CLYDE
	const VINCENT

	trainerclass HIKER ; 26
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

	trainerclass BIKER ; 27
	const BIKER_BENNY
	const KAZU
	const DWAYNE
	const HARRIS
	const ZEKE
	const CHARLES
	const RILEY
	const JOEL
	const GLENN

	trainerclass BLAINE ; 28
	const BLAINE1

	trainerclass BURGLAR ; 29
	const DUNCAN
	const EDDIE
	const COREY

	trainerclass FIREBREATHER ; 2a
	const OTIS
	const DICK
	const NED
	const BURT
	const BILL
	const WALT
	const RAY
	const LYLE

	trainerclass JUGGLER ; 2b
	const IRWIN1
	const FRITZ
	const HORTON
	const IRWIN2
	const IRWIN3
	const IRWIN4

	trainerclass BLACKBELT_T ; 2c
	const KENJI1
	const YOSHI
	const KENJI2
	const LAO
	const NOB
	const KIYO
	const LUNG
	const KENJI3
	const WAI

	trainerclass EXECUTIVEM ; 2d
	const EXECUTIVEM_1
	const EXECUTIVEM_2
	const EXECUTIVEM_3

	trainerclass PSYCHIC_T ; 2e
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

	trainerclass PICNICKER ; 2f
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

	trainerclass CAMPER ; 30
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

	trainerclass EXECUTIVEF ; 31
	const EXECUTIVEF_1

	trainerclass SAGE ; 32
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
	const KOJI

	trainerclass MEDIUM ; 33
	const MARTHA
	const GRACE
	const BETHANY
	const MARGRET
	const ETHEL
	const REBECCA
	const DORIS

	trainerclass BOARDER ; 34
	const RONALD
	const BRAD
	const DOUGLAS

	trainerclass POKEFANM ; 35
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

	trainerclass KIMONO_GIRL ; 36

	trainerclass TWINS ; 37
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

	trainerclass POKEFANF ; 38
	const BEVERLY1
	const RUTH
	const BEVERLY2
	const BEVERLY3
	const GEORGIA
	const JAIME

	trainerclass RED ; 39
	const AIIIAAB
	const RED1
	const RED_RED
	const CCC_DUALRED
	const KAY
	const RED_GAUNTLETRED

	trainerclass BLUE ; 3a
	const BLUE1

	trainerclass OFFICER ; 3b
	const KEITH
	const DIRK

	trainerclass GRUNTF ; 3c
	const GRUNTF_1
	const GRUNTF_2
	const GRUNTF_3
	const GRUNTF_4
	const GRUNTF_5

	trainerclass MYSTICALMAN ; 3d
	const EUSINE

	trainerclass AZURE ; 3e
	const AZURE1

	trainerclass FC_LARRY ; 3f
	const LARRY_GREEN

	trainerclass RBY_GREEN ; 40
	const XXWWNN

	trainerclass CY_ROBORED ; 41
	const X_CHATTYYELLOW2

	trainerclass GSCHGSS_CHRIS ; 42
	const AJDNNW1
	const AAEFFFF
	const D_GAUNTLETCRYSTAL

	trainerclass GSC_KRIS ; 43
	const EWWYPPP

	trainerclass AC_CHRIS ; 44
	const EVAN
	const EVAN1
	const EVAN2

	trainerclass FC_CHRIS ; 45
	const Y_FUSEDCRYSTAL

	trainerclass RSEORAS_MAY ; 46
	const QQ
	const PETRA

	trainerclass RSEORAS_BLUE_MAY ; 47
	const HNV
	const MARINA

	trainerclass RSEORAS_BRENDAN ; 48
	const RTHASZS
	const EBNEERT

	trainerclass FRLG_LEAF ; 49
	const A_FIRERED
	const AATATAT
	const PAULA_SWEET
	const DOOT

	trainerclass COLO_WES ; 4a
	const AAAAAAA
	const ACCC

	trainerclass XD_MICHAEL ; 4b
	const ABBBCC
	const STARS

	trainerclass PT_DAWN ; 4c
	const IECBW

	trainerclass PT_LUCAS ; 4d
	const NQPPPNL
	const PP

	trainerclass HGSS_LYRA ; 4e
	const AOOOO

	trainerclass BW_HILBERT ; 4f
	const GMYC

	trainerclass BW_HILDA ; 50
	const AAQ

	trainerclass B2W2_ROSA ; 51
	const CLY

	trainerclass B2W2_NATE ; 52
	const AAAALK
	const R_BLACK2

	trainerclass XY_CALEM ; 53
	const D_XY

	trainerclass XY_SERENA ; 54
	const Y_266

	trainerclass XY_SERENA2 ; 55
	const ETR

	trainerclass SMUSUM_ELIO ; 56
	const L_SUN

	trainerclass SMUSUM_ELIO2_LEADER ; 57 (split from rrwq to allow leader definition)
	const D76O6YTTR

	trainerclass SMUSUM_SELENE ; 58
	const VRG

	trainerclass SWSH_GLORIA ; 59
	const RE_SWORD

	trainerclass GLAZED ; 5a
	const AHUNIgg

	trainerclass MARIBEL ; 5b
	const AAABBHM

	trainerclass NUZLOCKE ; 5c
	const F481
	const F482
	const F483

	trainerclass SIRIUS ; 5d
	const BBCBBHH

	trainerclass P_CYAN ; 5e
	const CYAN

	trainerclass BRONZE ; 5f
	const FEEFFRR

	trainerclass RED_LARRY ; 60
	const LARRY_R

	trainerclass GREEN_MAY ; 61
	const A_EMERALD
	const N_EMERALD

	trainerclass BROWN ; 62
	const PAUL_B

	trainerclass BABA ; 69
	const BABA1
	const BABA2
	const BABA3

	trainerclass URF ; 63
	const URF1

	trainerclass SMUSUM_ELIO2 ; 64
	const RRWQ

	trainerclass RSEORAS_BRENDAN_LEADER ; 65
	const ORLANDO

	trainerclass GREEN_MAY_LEADER ; 66
	const ACCPPQ

	trainerclass GSCHGSS_CHRIS_RIVAL ; 67
	const AJDNNW2
	const AJDNNW3

KRIS EQU __enum__

NUM_TRAINER_CLASSES EQU __enum__
