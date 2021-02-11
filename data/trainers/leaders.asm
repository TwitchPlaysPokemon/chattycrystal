; These lists determine the battle music and victory music, and whether to
; award HAPPINESS_GYMBATTLE for winning.

; Note: CHAMPION and RED are unused for battle music checks, since they are
; accounted for prior to the list check.

GymLeaders:
	db RSEORAS_BRENDAN_LEADER
	db SMUSUM_ELIO2_LEADER
	db SWSH_GLORIA
	db HGSS_LYRA
	db PRYCE
	db GREEN_MAY_LEADER
	db BROWN
	db CLAIR
	db WILL
	db BRUNO
	db KAREN
	db KOGA
	db CHAMPION
	db RED
; fallthrough
KantoGymLeaders:
	db BROCK
	db MISTY
	db LT_SURGE
	db ERIKA
	db JANINE
	db SABRINA
	db BLAINE
	db BLUE
	db -1
