TrainerClassAttributes:
; entries correspond to trainer classes (see constants/trainer_constants.asm)

; Cal
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Scientist
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Youngster
	db NO_ITEM, NO_ITEM ; items
	db 4 ; base reward
	dw AI_BASIC | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Schoolboy
	db NO_ITEM, NO_ITEM ; items
	db 8 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_OPPORTUNIST | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_OFTEN

; Bird Keeper
	db NO_ITEM, NO_ITEM ; items
	db 6 ; base reward
	dw AI_BASIC | AI_TYPES | AI_OFFENSIVE | AI_OPPORTUNIST | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Lass
	db NO_ITEM, NO_ITEM ; items
	db 6 ; base reward
	dw AI_BASIC | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_OFTEN

; Cooltrainerm
	db NO_ITEM, NO_ITEM ; items
	db 12 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Cooltrainerf
	db NO_ITEM, NO_ITEM ; items
	db 12 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Beauty
	db NO_ITEM, NO_ITEM ; items
	db 22 ; base reward
	dw AI_BASIC | AI_TYPES | AI_OPPORTUNIST | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Pokemaniac
	db NO_ITEM, NO_ITEM ; items
	db 15 ; base reward
	dw AI_BASIC | AI_SETUP | AI_OFFENSIVE | AI_AGGRESSIVE | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Gruntm
	db NO_ITEM, NO_ITEM ; items
	db 10 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_OPPORTUNIST | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Gentleman
	db NO_ITEM, NO_ITEM ; items
	db 18 ; base reward
	dw AI_BASIC | AI_SETUP | AI_AGGRESSIVE | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Skier
	db NO_ITEM, NO_ITEM ; items
	db 18 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Teacher
	db NO_ITEM, NO_ITEM ; items
	db 18 ; base reward
	dw AI_BASIC | AI_OPPORTUNIST | AI_AGGRESSIVE | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Bug Catcher
	db NO_ITEM, NO_ITEM ; items
	db 4 ; base reward
	dw AI_BASIC | AI_SETUP | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Fisher
	db NO_ITEM, NO_ITEM ; items
	db 10 ; base reward
	dw AI_BASIC | AI_TYPES | AI_OPPORTUNIST | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_OFTEN

; Swimmerm
	db NO_ITEM, NO_ITEM ; items
	db 2 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_OFFENSIVE | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Swimmerf
	db NO_ITEM, NO_ITEM ; items
	db 5 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Sailor
	db NO_ITEM, NO_ITEM ; items
	db 10 ; base reward
	dw AI_BASIC | AI_OFFENSIVE | AI_OPPORTUNIST | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Super Nerd
	db NO_ITEM, NO_ITEM ; items
	db 8 ; base reward
	dw AI_BASIC | AI_TYPES | AI_SMART | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Guitarist
	db NO_ITEM, NO_ITEM ; items
	db 8 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Hiker
	db NO_ITEM, NO_ITEM ; items
	db 8 ; base reward
	dw AI_BASIC | AI_OFFENSIVE | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Biker
	db NO_ITEM, NO_ITEM ; items
	db 8 ; base reward
	dw AI_BASIC | AI_TYPES | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Burglar
	db NO_ITEM, NO_ITEM ; items
	db 22 ; base reward
	dw AI_BASIC | AI_OFFENSIVE | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Firebreather
	db NO_ITEM, NO_ITEM ; items
	db 12 ; base reward
	dw AI_BASIC | AI_SETUP | AI_OFFENSIVE | AI_OPPORTUNIST | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Juggler
	db NO_ITEM, NO_ITEM ; items
	db 10 ; base reward
	dw AI_BASIC | AI_TYPES | AI_SMART | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Blackbelt T
	db NO_ITEM, NO_ITEM ; items
	db 6 ; base reward
	dw AI_BASIC | AI_OFFENSIVE | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Psychic T
	db NO_ITEM, NO_ITEM ; items
	db 8 ; base reward
	dw AI_BASIC | AI_TYPES | AI_OPPORTUNIST | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Picnicker
	db NO_ITEM, NO_ITEM ; items
	db 5 ; base reward
	dw AI_BASIC | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Camper
	db NO_ITEM, NO_ITEM ; items
	db 5 ; base reward
	dw AI_BASIC | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Sage
	db NO_ITEM, NO_ITEM ; items
	db 8 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Medium
	db NO_ITEM, NO_ITEM ; items
	db 10 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Boarder
	db NO_ITEM, NO_ITEM ; items
	db 18 ; base reward
	dw AI_BASIC | AI_TYPES | AI_OPPORTUNIST | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Pokefanm
	db NO_ITEM, NO_ITEM ; items
	db 20 ; base reward
	dw AI_BASIC | AI_TYPES | AI_SMART | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Kimono Girl
	db NO_ITEM, NO_ITEM ; items
	db 18 ; base reward
	dw AI_BASIC | AI_TYPES | AI_OPPORTUNIST | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Twins
	db NO_ITEM, NO_ITEM ; items
	db 5 ; base reward
	dw NO_AI
	dw CONTEXT_USE | SWITCH_OFTEN

; Pokefanf
	db NO_ITEM, NO_ITEM ; items
	db 20 ; base reward
	dw AI_BASIC | AI_TYPES | AI_SMART | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Red
	db FULL_RESTORE, FULL_RESTORE ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Officer
	db NO_ITEM, NO_ITEM ; items
	db 10 ; base reward
	dw AI_BASIC | AI_TYPES | AI_OPPORTUNIST | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Gruntf
	db NO_ITEM, NO_ITEM ; items
	db 10 ; base reward
	dw AI_BASIC | AI_TYPES | AI_OPPORTUNIST | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; AZURE
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; FC_LARRY
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; RBY_GREEN
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; CY_ROBORED
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; GSCHGSS_CHRIS
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; GSC_KRIS
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; AC_CHRIS
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; FC_CHRIS
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; BRENDAN_KANTO_LEADER
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; FRLG_LEAF
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; COLO_WES
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; XD_MICHAEL
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; PT_LUCAS
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; HGSS_LYRA
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; XY_SERENA2
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; SMUSUM_ELIO
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; GLAZED
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; NUZLOCKE
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; CYAN
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; RED_LARRY
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; GREEN_MAY
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; BROWN
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; BABA
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; URF
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES
	
; RSEORAS_BRENDAN_LEADER
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES
	
; GSCHGSS_CHRIS_RIVAL
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES
	
; RED_JOHTO_LEADER
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES
	
; RED_KANTO_LEADER
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; NATE_LEADER
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES
	
; NATE_ELITE_4
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES
	
; POKEMON_PROF
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

