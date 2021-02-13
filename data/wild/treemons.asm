TreeMons:
; entries correspond to TREEMON_SET_* constants
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	dw TreeMonSet_City

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
TreeMonSet_Canyon:
; common
	dbbw 50, 25, SPEAROW
	dbbw 15, 25, SPEAROW
	dbbw 15, 25, SPEAROW
	dbbw 10, 25, AIPOM
	dbbw  5, 25, AIPOM
	dbbw  5, 25, AIPOM
	db -1
; rare
	dbbw 50, 25, FEAROW
	dbbw 15, 25, HERACROSS
	dbbw 15, 25, HERACROSS
	dbbw 10, 25, AIPOM
	dbbw  5, 25, AIPOM
	dbbw  5, 25, AIPOM
	db -1

TreeMonSet_Town:
; common
	dbbw 50, 25, SPEAROW
	dbbw 15, 25, EKANS
	dbbw 15, 25, SPEAROW
	dbbw 10, 25, AIPOM
	dbbw  5, 25, AIPOM
	dbbw  5, 25, AIPOM
	db -1
; rare
	dbbw 50, 25, FEAROW
	dbbw 15, 25, HERACROSS
	dbbw 15, 25, HERACROSS
	dbbw 10, 25, AIPOM
	dbbw  5, 25, AIPOM
	dbbw  5, 25, AIPOM
	db -1

TreeMonSet_Route:
; common
	dbbw 50, 25, HOOTHOOT
	dbbw 15, 25, SPINARAK
	dbbw 15, 25, LEDYBA
	dbbw 10, 25, EXEGGCUTE
	dbbw  5, 25, EXEGGCUTE
	dbbw  5, 25, EXEGGCUTE
	db -1
; rare
	dbbw 50, 25, NOCTOWL
	dbbw 15, 25, PINECO
	dbbw 15, 25, PINECO
	dbbw 10, 25, EXEGGCUTE
	dbbw  5, 25, EXEGGCUTE
	dbbw  5, 25, EXEGGCUTE
	db -1

TreeMonSet_Kanto:
; common
	dbbw 50, 25, HOOTHOOT
	dbbw 15, 25, EKANS
	dbbw 15, 25, HOOTHOOT
	dbbw 10, 25, EXEGGCUTE
	dbbw  5, 25, EXEGGCUTE
	dbbw  5, 25, EXEGGCUTE
	db -1
; rare
	dbbw 50, 25, NOCTOWL
	dbbw 15, 25, PINECO
	dbbw 15, 25, PINECO
	dbbw 10, 25, EXEGGCUTE
	dbbw  5, 25, EXEGGCUTE
	dbbw  5, 25, EXEGGCUTE
	db -1

TreeMonSet_Lake:
; common
	dbbw 50, 25, HOOTHOOT
	dbbw 15, 25, VENONAT
	dbbw 15, 25, HOOTHOOT
	dbbw 10, 25, EXEGGCUTE
	dbbw  5, 25, EXEGGCUTE
	dbbw  5, 25, EXEGGCUTE
	db -1
; rare
	dbbw 50, 25, NOCTOWL
	dbbw 15, 25, PINECO
	dbbw 15, 25, PINECO
	dbbw 10, 25, EXEGGCUTE
	dbbw  5, 25, EXEGGCUTE
	dbbw  5, 25, EXEGGCUTE
	db -1

TreeMonSet_Forest:
; common
	dbbw 50, 25, HOOTHOOT
	dbbw 15, 25, PINECO
	dbbw 15, 25, BURMY
	dbbw 10, 25, NOCTOWL
	dbbw  5, 25, BUTTERFREE
	dbbw  5, 25, BEEDRILL
	db -1
; rare
	dbbw 50, 25, BURMY
	dbbw 15, 25, CATERPIE
	dbbw 15, 25, WEEDLE
	dbbw 10, 25, NOCTOWL
	dbbw  5, 25, METAPOD
	dbbw  5, 25, KAKUNA
	db -1

TreeMonSet_Rock:
	dbbw 90, 25, KRABBY
	dbbw 10, 25, SHUCKLE
	db -1
