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

	; TODO: Phancero when added
	; TODO: fused mons when added
	end
