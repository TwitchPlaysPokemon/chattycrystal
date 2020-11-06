ElmPhoneCalleeScript:
	readvar VAR_SPECIALPHONECALL
	ifequal SPECIALCALL_POKERUS, .pokerus
	checkevent EVENT_SHOWED_UNOWN_TO_ELM
	iftrue .discovery
	checkevent EVENT_TOLD_ELM_ABOUT_UNOWN_OVER_THE_PHONE
	iftrue .egghatched2
	checkevent EVENT_UNOWN_HATCHED
	iftrue .egghatched
	checkevent EVENT_GOT_EVERSTONE_FROM_ELM
	iftrue .checkingegg
	checkevent EVENT_GOT_POKEDEX_FROM_OAK
	iftrue .sawmrpokemon
	farwritetext ElmPhoneStartText
	end

.sawmrpokemon
	farwritetext ElmPhoneSawMrPokemonText
	end

.checkingegg
	farwritetext ElmPhoneCheckingEggText
	end

.egghatched
	farwritetext ElmPhoneEggHatchedText
	setevent EVENT_TOLD_ELM_ABOUT_UNOWN_OVER_THE_PHONE
	end
	
.egghatched2
	farwritetext ElmPhoneEggHatched2Text
	end

.discovery
	random 2
	ifequal 0, .nextdiscovery
	farwritetext ElmPhoneDiscovery1Text
	end

.nextdiscovery
	farwritetext ElmPhoneDiscovery2Text
	end

.pokerus
	farwritetext ElmPhonePokerusText
	specialphonecall SPECIALCALL_NONE
	end

ElmPhoneCallerScript:
	readvar VAR_SPECIALPHONECALL
	ifequal SPECIALCALL_WEIRDBROADCAST, .rocket
	ifequal SPECIALCALL_SSTICKET, .gift
	ifequal SPECIALCALL_MASTERBALL, .gift
	farwritetext ElmPhonePokerusText
	specialphonecall SPECIALCALL_NONE
	end

.rocket
	farwritetext ElmPhoneRocketText
	specialphonecall SPECIALCALL_NONE
	end

.gift
	farwritetext ElmPhoneGiftText
	specialphonecall SPECIALCALL_NONE
	end

.unused
	farwritetext ElmPhoneUnusedText
	specialphonecall SPECIALCALL_NONE
	end
