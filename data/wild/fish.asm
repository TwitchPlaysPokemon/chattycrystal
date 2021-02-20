TIME_GROUP EQU 0 ; use the nth TimeFishGroups entry

fishgroup: MACRO
; chance, old rod, good rod, super rod
	dbwww \1, \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super

.Shore_Old:
	dbbw  70 percent + 1, 15, MAGIKARP
	dbbw  85 percent + 1, 15, MAGIKARP
	dbbw 100 percent,     15, KRABBY
.Shore_Good:
	dbbw  35 percent,     35, MAGIKARP
	dbbw  70 percent,     35, FEEBAS
	dbbw  90 percent + 1, 35, CLAUNCHER
	dbbw 100 percent,      0, TIME_GROUP
.Shore_Super:
	dbbw  40 percent,     65, KINGLER
	dbbw  70 percent,      1, TIME_GROUP
	dbbw  90 percent + 1, 65, CLAWITZER
	dbbw 100 percent,     65, MILOTIC

.Ocean_Old:
	dbbw  70 percent + 1, 15, MAGIKARP
	dbbw  85 percent + 1, 15, MAGIKARP
	dbbw 100 percent,     15, TENTACOOL
.Ocean_Good:
	dbbw  35 percent,     35, FEEBAS
	dbbw  70 percent,     35, CHINCHOU
	dbbw  90 percent + 1, 35, WAILMER
	dbbw 100 percent,      2, TIME_GROUP
.Ocean_Super:
	dbbw  40 percent,      3, TIME_GROUP
	dbbw  70 percent,     65, LANTURN
	dbbw  90 percent + 1, 65, WAILORD
	dbbw 100 percent,     65, MILOTIC

.Lake_Old:
	dbbw  70 percent + 1, 15, MAGIKARP
	dbbw  85 percent + 1, 15, MAGIKARP
	dbbw 100 percent,     15, GOLDEEN
.Lake_Good:
	dbbw  35 percent,     35, MAGIKARP
	dbbw  70 percent,     35, FEEBAS
	dbbw  90 percent + 1, 35, GOLDEEN
	dbbw 100 percent,      4, TIME_GROUP
.Lake_Super:
	dbbw  40 percent,     65, GOLDEEN
	dbbw  70 percent,      5, TIME_GROUP
	dbbw  90 percent + 1, 65, SEAKING
	dbbw 100 percent,     65, MILOTIC

.Pond_Old:
	dbbw  70 percent + 1, 15, MAGIKARP
	dbbw  85 percent + 1, 15, MAGIKARP
	dbbw 100 percent,     15, POLIWAG
.Pond_Good:
	dbbw  35 percent,     35, MAGIKARP
	dbbw  70 percent,     35, POLIWAG
	dbbw  90 percent + 1, 35, POLIWAG
	dbbw 100 percent,      6, TIME_GROUP
.Pond_Super:
	dbbw  40 percent,     65, POLIWAG
	dbbw  70 percent,      7, TIME_GROUP
	dbbw  90 percent + 1, 65, MAGIKARP
	dbbw 100 percent,     65, POLIWAG

.Dratini_Old:
	dbbw  70 percent + 1, 15, MAGIKARP
	dbbw  85 percent + 1, 15, MAGIKARP
	dbbw 100 percent,     15, MAGIKARP
.Dratini_Good:
	dbbw  35 percent,     35, MAGIKARP
	dbbw  70 percent,     35, MAGIKARP
	dbbw  90 percent + 1, 35, MAGIKARP
	dbbw 100 percent,      8, TIME_GROUP
.Dratini_Super:
	dbbw  40 percent,     65, MAGIKARP
	dbbw  70 percent,      9, TIME_GROUP
	dbbw  90 percent + 1, 65, MAGIKARP
	dbbw 100 percent,     65, DRAGONAIR

.Qwilfish_Swarm_Old:
	dbbw  70 percent + 1,  15, MAGIKARP
	dbbw  85 percent + 1,  15, MAGIKARP
	dbbw 100 percent,      15, QWILFISH
.Qwilfish_Swarm_Good:
	dbbw  35 percent,     35, MAGIKARP
	dbbw  70 percent,     35, QWILFISH
	dbbw  90 percent + 1, 35, QWILFISH
	dbbw 100 percent,     10, TIME_GROUP
.Qwilfish_Swarm_Super:
	dbbw  40 percent,     65, QWILFISH
	dbbw  70 percent,     11, TIME_GROUP
	dbbw  90 percent + 1, 65, QWILFISH
	dbbw 100 percent,     65, QWILFISH

.Remoraid_Swarm_Old:
	dbbw  70 percent + 1, 15, MAGIKARP
	dbbw  85 percent + 1, 15, MAGIKARP
	dbbw 100 percent,     15, REMORAID
.Remoraid_Swarm_Good:
	dbbw  35 percent,     35, MAGIKARP
	dbbw  70 percent,     35, REMORAID
	dbbw  90 percent + 1, 35, REMORAID
	dbbw 100 percent,     12, TIME_GROUP
.Remoraid_Swarm_Super:
	dbbw  40 percent,     65, REMORAID
	dbbw  70 percent,     13, TIME_GROUP
	dbbw  90 percent + 1, 65, REMORAID
	dbbw 100 percent,     65, REMORAID

.Gyarados_Old:
	dbbw  70 percent + 1, 15, MAGIKARP
	dbbw  85 percent + 1, 15, MAGIKARP
	dbbw 100 percent,     15, MAGIKARP
.Gyarados_Good:
	dbbw  35 percent,     35, MAGIKARP
	dbbw  70 percent,     35, MAGIKARP
	dbbw  90 percent + 1, 35, MAGIKARP
	dbbw 100 percent,     14, TIME_GROUP
.Gyarados_Super:
	dbbw  40 percent,     65, MAGIKARP
	dbbw  70 percent,     15, TIME_GROUP
	dbbw  90 percent + 1, 65, MAGIKARP
	dbbw 100 percent,     65, MAGIKARP

.Dratini_2_Old:
	dbbw  70 percent + 1, 15, MAGIKARP
	dbbw  85 percent + 1, 15, MAGIKARP
	dbbw 100 percent,     15, MAGIKARP
.Dratini_2_Good:
	dbbw  35 percent,     35, MAGIKARP
	dbbw  70 percent,     35, MAGIKARP
	dbbw  90 percent + 1, 35, MAGIKARP
	dbbw 100 percent,     16, TIME_GROUP
.Dratini_2_Super:
	dbbw  40 percent,     65, MAGIKARP
	dbbw  70 percent,     17, TIME_GROUP
	dbbw  90 percent + 1, 65, DRAGONAIR
	dbbw 100 percent,     65, DRAGONITE

.WhirlIslands_Old:
	dbbw  70 percent + 1, 15, MAGIKARP
	dbbw  85 percent + 1, 15, MAGIKARP
	dbbw 100 percent,     15, KRABBY
.WhirlIslands_Good:
	dbbw  35 percent,     35, MAGIKARP
	dbbw  70 percent,     35, KRABBY
	dbbw  90 percent + 1, 35, KRABBY
	dbbw 100 percent,     18, TIME_GROUP
.WhirlIslands_Super:
	dbbw  40 percent,     65, KRABBY
	dbbw  70 percent,     19, TIME_GROUP
	dbbw  90 percent + 1, 65, KINGLER
	dbbw 100 percent,     65, SEADRA

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	dbbw  70 percent + 1, 15, MAGIKARP
	dbbw  85 percent + 1, 15, MAGIKARP
	dbbw 100 percent,     15, TENTACOOL
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	dbbw  35 percent,     35, MAGIKARP
	dbbw  70 percent,     35, TENTACOOL
	dbbw  90 percent + 1, 35, TENTACOOL
	dbbw 100 percent,     20, TIME_GROUP
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	dbbw  40 percent,     65, TENTACOOL
	dbbw  70 percent,     21, TIME_GROUP
	dbbw  90 percent + 1, 65, MAGIKARP
	dbbw 100 percent,     65, QWILFISH

.Remoraid_Old:
	dbbw  70 percent + 1, 15, MAGIKARP
	dbbw  85 percent + 1, 15, MAGIKARP
	dbbw 100 percent,     15, POLIWAG
.Remoraid_Good:
	dbbw  35 percent,     35, MAGIKARP
	dbbw  70 percent,     35, POLIWAG
	dbbw  90 percent + 1, 35, POLIWAG
	dbbw 100 percent,      6, TIME_GROUP
.Remoraid_Super:
	dbbw  40 percent,     65, POLIWAG
	dbbw  70 percent,      7, TIME_GROUP
	dbbw  90 percent + 1, 65, MAGIKARP
	dbbw 100 percent,     65, REMORAID

TimeFishGroups:
	;     day             nite
	dbwbw 35, CORSOLA,    35, STARYU     ; 0
	dbwbw 65, CORSOLA,    65, STARYU     ; 1
	dbwbw 35, SHELLDER,   35, SHELLDER   ; 2
	dbwbw 65, SHELLDER,   65, SHELLDER   ; 3
	dbwbw 35, GOLDEEN,    35, GOLDEEN    ; 4
	dbwbw 65, GOLDEEN,    65, GOLDEEN    ; 5
	dbwbw 35, POLIWAG,    35, POLIWAG    ; 6
	dbwbw 65, POLIWAG,    65, POLIWAG    ; 7
	dbwbw 35, DRATINI,    35, DRATINI    ; 8
	dbwbw 65, DRATINI,    65, DRATINI    ; 9
	dbwbw 35, QWILFISH,   35, QWILFISH   ; 10
	dbwbw 65, QWILFISH,   65, QWILFISH   ; 11
	dbwbw 35, REMORAID,   35, REMORAID   ; 12
	dbwbw 65, REMORAID,   65, REMORAID   ; 13
	dbwbw 35, GYARADOS,   35, GYARADOS   ; 14
	dbwbw 65, GYARADOS,   65, GYARADOS   ; 15
	dbwbw 35, DRATINI,    35, DRATINI    ; 16
	dbwbw 65, DRATINI,    65, DRATINI    ; 17
	dbwbw 35, HORSEA,     35, HORSEA     ; 18
	dbwbw 65, HORSEA,     65, HORSEA     ; 19
	dbwbw 35, TENTACOOL,  35, TENTACOOL  ; 20
	dbwbw 65, TENTACOOL,  65, TENTACOOL  ; 21
