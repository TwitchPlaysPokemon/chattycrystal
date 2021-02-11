tmhm: MACRO
; used in data/pokemon/base_stats/*.asm
_tms1 = 0 ; TM01-TM24 (24)
_tms2 = 0 ; TM25-TM48 (24)
_tms3 = 0 ; TM49-TM50 + HM01-HM07 + MT01-MT03 (12/24)
rept _NARG
	if DEF(\1_TMNUM)
	if \1_TMNUM < 24 + 1
_tms1 = _tms1 | (1 << ((\1_TMNUM) - 1))
	elif \1_TMNUM < 48 + 1
_tms2 = _tms2 | (1 << ((\1_TMNUM) - 1 - 24))
	else
_tms3 = _tms3 | (1 << ((\1_TMNUM) - 1 - 48))
	endc
	else
		fail "\1 is not a TM, HM, or move tutor move"
	endc
	shift
endr
rept 3 ; TM01-TM24 (24/24)
	db _tms1 & $ff
_tms1 = _tms1 >> 8
endr
rept 3 ; TM25-TM48 (24/24)
	db _tms2 & $ff
_tms2 = _tms2 >> 8
endr
rept 2 ; TM49-TM50 + HM01-HM07 + MT01-MT03 (12/16)
	db _tms3 & $ff
_tms3 = _tms3 >> 8
endr
ENDM

BaseData::
	; the parameter to indirect_table must be a compile-time constant, and BASE_DATA_SIZE is not
	assert $20 == BASE_DATA_SIZE, "Please adjust the table size (and this assertion) to match BASE_DATA_SIZE"
	indirect_table $20, 1
	indirect_entries CELEBI, BaseData1
	indirect_entries NUM_POKEMON, BaseData2
	indirect_table_end
