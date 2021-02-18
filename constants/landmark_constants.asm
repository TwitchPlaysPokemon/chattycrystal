; Landmarks indexes (see data/maps/landmarks.asm)
	const_def

; Johto landmarks
	const SPECIAL_MAP       ; 00
	const NEW_BARK_TOWN     ; 01
	const ROUTE_29          ; 02
	const CHERRYGROVE_CITY  ; 03
	const ROUTE_30          ; 04
	const ROUTE_31          ; 05
	const VIOLET_CITY       ; 06
	const SPROUT_TOWER      ; 07
	const ROUTE_32          ; 08
	const RUINS_OF_ALPH     ; 09
	const UNION_CAVE        ; 0a
	const ROUTE_33          ; 0b
	const AZALEA_TOWN       ; 0c
	const SLOWPOKE_WELL     ; 0d
	const ILEX_FOREST       ; 0e
	const ROUTE_34          ; 0f
	const GOLDENROD_CITY    ; 10
	const RADIO_TOWER       ; 11
	const ROUTE_35          ; 12
	const NATIONAL_PARK     ; 13
	const ROUTE_36          ; 14
	const ROUTE_37          ; 15
	const ECRUTEAK_CITY     ; 16
	const TIN_TOWER         ; 17
	const BURNED_TOWER      ; 18
	const ROUTE_38          ; 19
	const ROUTE_39          ; 1a
	const OLIVINE_CITY      ; 1b
	const LIGHTHOUSE        ; 1c
	const BATTLE_TOWER      ; 1d
	const ROUTE_40          ; 1e
	const WHIRL_ISLANDS     ; 1f
	const ROUTE_41          ; 20
	const CIANWOOD_CITY     ; 21
	const ROUTE_42          ; 22
	const MT_MORTAR         ; 23
	const MAHOGANY_TOWN     ; 24
	const ROUTE_43          ; 25
	const LAKE_OF_RAGE      ; 26
	const ROUTE_44          ; 27
	const ICE_PATH          ; 28
	const BLACKTHORN_CITY   ; 29
	const DRAGONS_DEN       ; 2a
	const ROUTE_45          ; 2b
	const DARK_CAVE         ; 2c
	const ROUTE_46          ; 2d
	const SILVER_CAVE       ; 2e

KANTO_LANDMARK EQU const_value
	const PALLET_TOWN       ; 2f
	const ROUTE_1           ; 30
	const VIRIDIAN_CITY     ; 31
	const ROUTE_2           ; 32
	const VIRIDIAN_FOREST   ; 33
	const PEWTER_CITY       ; 34
	const ROUTE_3           ; 35
	const MT_MOON           ; 36
	const ROUTE_4           ; 37
	const CERULEAN_CITY     ; 38
	const ROUTE_24          ; 39
	const ROUTE_25          ; 3a
	const ROUTE_5           ; 3b
	const UNDERGROUND_PATH  ; 3c
	const ROUTE_6           ; 3d
	const VERMILION_CITY    ; 3e
	const DIGLETTS_CAVE     ; 3f
	const ROUTE_7           ; 40
	const ROUTE_8           ; 41
	const ROUTE_9           ; 42
	const ROCK_TUNNEL       ; 43
	const ROUTE_10          ; 44
	const POWER_PLANT       ; 45
	const LAVENDER_TOWN     ; 46
	const LAV_RADIO_TOWER   ; 47
	const CELADON_CITY      ; 48
	const SAFFRON_CITY      ; 49
	const ROUTE_11          ; 4a
	const ROUTE_12          ; 4b
	const ROUTE_13          ; 4c
	const ROUTE_14          ; 4d
	const ROUTE_15          ; 4e
	const ROUTE_16          ; 4f
	const ROUTE_17          ; 50
	const ROUTE_18          ; 51
	const FUCHSIA_CITY      ; 52
	const ROUTE_19          ; 53
	const ROUTE_20          ; 54
	const SEAFOAM_ISLANDS   ; 55
	const CINNABAR_ISLAND   ; 56
	const ROUTE_21          ; 57
	const ROUTE_22          ; 58
	const VICTORY_ROAD      ; 59
	const ROUTE_23          ; 5a
	const INDIGO_PLATEAU    ; 5b
	const ROUTE_26          ; 5c
	const ROUTE_27          ; 5d
	const TOHJO_FALLS       ; 5e
	const ROUTE_28          ; 5f
	const FAST_SHIP         ; 60

; used in CaughtData
GIFT_LOCATION  EQU $7e
EVENT_LOCATION EQU $7f

; Regions
	const_def
	const JOHTO_REGION ; 0
	const KANTO_REGION ; 1
NUM_REGIONS EQU const_value
