; These lists determine the battle music and victory music, and whether to
; award HAPPINESS_GYMBATTLE for winning.

; Note: CHAMPION and RED are unused for battle music checks, since they are
; accounted for prior to the list check.

GymLeaders:
	db BRENDAN_JOHTO_LEADER
	db HGSS_LYRA
	db GLAZED
	db FRLG_LEAF
	db BROWN
	db SMUSUM_ELIO
	db FC_CHRIS
	db RED_JOHTO_LEADER
	db B2W2_NATE
	db GREEN_MAY
	db XY_SERENA2
; fallthrough
KantoGymLeaders:
	db URF
	db XD_MICHAEL
	db RED_KANTO_LEADER
	db PT_LUCAS
	db GSCHGSS_CHRIS
	db GSC_KRIS
	db BRENDAN_KANTO_LEADER
	db -1
