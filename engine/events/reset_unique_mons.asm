ResetUniqueMons::
	clearifuncaught ARTICUNO, EVENT_SEAFOAM_ISLANDS_B4F_ARTICUNO
	clearifuncaught DARKRAI, EVENT_DARKRAI_IN_POKEMON_TOWER
	clearifuncaught GROUDON, EVENT_GROUDON_IN_POKEMON_MANSION
	clearifuncaught HO_OH, EVENT_FOUGHT_HO_OH
	clearifuncaught KYOGRE, EVENT_KYOGRE_IN_MOUNT_MORTAR
	clearifuncaught LATIOS, EVENT_LATIOS_IN_SAFARI_ZONE
	clearifuncaught LUGIA, EVENT_FOUGHT_LUGIA
	clearifuncaught MEWTWO, EVENT_CERULEAN_CAVE_B1F_MEWTWO
	clearifuncaught MOLTRES, EVENT_MOLTRES_IN_VICTORY_ROAD
	clearifuncaught ZAPDOS, EVENT_POWER_PLANT_B1F_ZAPDOS

	checkevent EVENT_RELEASED_THE_BEASTS
	iffalse .no_beasts
	readmem wRoamMon1Species
	iftrue .no_raikou ; still roaming
	checkcaught RAIKOU
	ifequal 2, .no_raikou
	callasm InitRoamRaikou
.no_raikou
	readmem wRoamMon2Species
	iftrue .no_suicune ; still roaming
	checkcaught SUICUNE
	ifequal 2, .no_suicune
	callasm InitRoamSuicune
.no_suicune
	clearifuncaught ENTEI, EVENT_REMATCH_ENTEI
.no_beasts

	checkevent EVENT_TRIGGERED_CELEBI_EVENT
	iffalse .no_celebi
	checkcaught CELEBI
	ifequal 2, .no_celebi
	setevent EVENT_CELEBI_REMATCH_READY
.no_celebi

	checkcaught STEELURRET
	ifequal 2, .no_onixtret
	clearifuncaught ONIXTRET, EVENT_ONIXTRET_IN_BATTLE_TENT
.no_onixtret
	checkcaught MEGASTOISE
	ifequal 2, .no_chiquirtle
	checkcaught BAYTORTLE
	ifequal 2, .no_chiquirtle
	clearifuncaught CHIQUIRTLE, EVENT_CHIQUIRTLE_IN_BATTLE_TENT
.no_chiquirtle
	checkcaught NOCTDRIO
	ifequal 2, .no_hootduo
	clearifuncaught HOOTDUO, EVENT_HOOTDUO_IN_BATTLE_TENT
.no_hootduo
	checkcaught TOGETAPE
	ifequal 2, .no_togekey
	clearifuncaught TOGEKEY, EVENT_TOGEKEY_IN_BATTLE_TENT
.no_togekey
	checkcaught JUMPANIUM
	ifequal 2, .no_hopporita
	checkcaught SKIPLEEF
	ifequal 2, .no_hopporita
	clearifuncaught HOPPORITA, EVENT_HOPPORITA_IN_BATTLE_TENT
.no_hopporita
	checkcaught QUAGYNX
	ifequal 2, .no_woochum
	clearifuncaught WOOCHUM, EVENT_WOOCHUM_IN_BATTLE_TENT
.no_woochum

	; TODO: Phancero when added
	end
