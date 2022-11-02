MACRO tmhm
; initialize bytes to 0
for n, (NUM_TM_HM_TUTOR + 7) / 8
_tm{d:n} = 0
endr
; set bits of bytes
rept _NARG
	if DEF(\1_TMNUM)
n = (\1_TMNUM - 1) / 8
i = (\1_TMNUM - 1) % 8
_tm{d:n} = _tm{d:n} | (1 << i)
	else
		fail "\1 is not a TM, HM, or tutor move"
	endc
	shift
endr
; output bytes
for n, (NUM_TM_HM_TUTOR + 7) / 8
	db _tm{d:n}
endr
ENDM
