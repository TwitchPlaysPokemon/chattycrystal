_FruitBearingTreeText::
	text "It's a fruit-"
	line "bearing tree."
	done

_HeyItsFruitText::
	text "Hey! It's"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_ObtainedFruitText::
	text "Obtained"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_FruitPackIsFullText::
	text "But the PACK is"
	line "full…"
	done

_NothingHereText::
	text "There's nothing"
	line "here…"
	done

_WhichApricornText::
	text "Which APRICORN"
	line "should I use?"
	done

_HowManyShouldIMakeText::
	text "How many should I"
	line "make?"
	done

_RecoveredSomeHPText::
	text_ram wStringBuffer1
	text_start
	line "recovered @"
	text_decimal wCurHPAnimDeltaHP, 2, 3
	text "HP!"
	done

_CuredOfPoisonText::
	text_ram wStringBuffer1
	text "'s"
	line "cured of poison."
	done

_RidOfParalysisText::
	text_ram wStringBuffer1
	text "'s"
	line "rid of paralysis."
	done

_BurnWasHealedText::
	text_ram wStringBuffer1
	text "'s"
	line "burn was healed."
	done

_WasDefrostedText::
	text_ram wStringBuffer1
	text_start
	line "was defrosted."
	done

_WokeUpText::
	text_ram wStringBuffer1
	text_start
	line "woke up."
	done

_HealthReturnedText::
	text_ram wStringBuffer1
	text "'s"
	line "health returned."
	done

_RevitalizedText::
	text_ram wStringBuffer1
	text_start
	line "is revitalized."
	done

_GrewToLevelText::
	text_ram wStringBuffer1
	text " grew to"
	line "level @"
	text_decimal wCurPartyLevel, 1, 3
	text "!@"
	sound_dex_fanfare_3 ; plays SFX_DEX_FANFARE_3, identical to SFX_LEVEL_UP
	text_waitbutton
	text_end

_CameToItsSensesText::
	text_ram wStringBuffer1
	text " came"
	line "to its senses."
	done

_EnterNewPasscodeText::
	text "Please enter any"
	line "four-digit number."
	done

_ConfirmPasscodeText::
	text "Enter the same"
	line "number to confirm."
	done

_PasscodesNotSameText::
	text "That's not the"
	line "same number."
	done

_PasscodeSetText::
	text "Your PASSCODE has"
	line "been set."

	para "Enter this number"
	line "next time to open"
	cont "the CARD FOLDER."

	para ""
	done

_FourZerosInvalidText::
	text "0000 is invalid!"

	para ""
	done

_EnterPasscodeText::
	text "Enter the CARD"
	next "FOLDER PASSCODE."
	done

_IncorrectPasscodeText::
	text "Incorrect"
	line "PASSCODE!"

	para ""
	done

_CardFolderOpenText::
	text "CARD FOLDER open.@"
	text_end

_OakTimeText1::
	text "<……><……><……><……><……><……>"
	line "<……><……><……><……><……><……>"

	para "Zzz… Hm? Wha…?"
	line "You woke me up!"

	para "Will you check the"
	line "clock for me?"
	prompt

_OakTimeText2::
	text "What time is it?"
	done

_OakTimeText3::
	text "What?@"
	text_end

_OakTimeText4::
	text "?"
	done

_OakTimeText5::
	text "How many minutes?"
	done

_OakTimeText6::
	text "Whoa!@"
	text_end

_OakTimeText7::
	text "?"
	done

_OakTimeText8::
	text "!"
	line "I overslept!"
	done

_OakTimeText11::
	text "!"
	line "Yikes! I over-"
	cont "slept!"
	done

_OakTimeText12::
	text "!"
	line "No wonder it's so"
	cont "dark!"
	done

_OakTimeText13::
	text "What day is it?"
	done

_OakTimeText14::
	text ", is it?"
	done

UnknownText_0x1bc384::
	text "There is nothing"
	line "connected."
	done

UnknownText_0x1bc3a1::
	text "Check cell phone"
	line "adapter."
	done

UnknownText_0x1bc3bc::
	text "Check CDMA"
	line "adapter."
	done

UnknownText_0x1bc3d1::
	text "Check DOCOMO PHS"
	line "adapter."
	done

UnknownText_0x1bc3ec::
	text "Check DDI PHS"
	line "adapter."
	done

UnknownText_0x1bc404::
	text "Check unlimited"
	line "battle mobile"
	cont "adapter."
	done

UnknownText_0x1bc42c::
	text "The password is:"
	line ""
	done

UnknownText_0x1bc43f::
	text "Is this OK?"
	done

UnknownText_0x1bc44c::
	text "Enter the"
	line "ID no."
	done

UnknownText_0x1bc45e::
	text "Enter the"
	line "amount."
	done

_NothingToChooseText::
	text "There's nothing to"
	line "choose."
	prompt

_WhichSidePutOnText::
	text "Which side do you"
	line "want to put it on?"
	done

_WhichSidePutAwayText::
	text "Which side do you"
	line "want to put away?"
	done

_PutAwayTheDecoText::
	text "Put away the"
	line "@"
	text_ram wStringBuffer3
	text "."
	prompt

_NothingToPutAwayText::
	text "There's nothing to"
	line "put away."
	prompt

_SetUpTheDecoText::
	text "Set up the"
	line "@"
	text_ram wStringBuffer3
	text "."
	prompt

_PutAwayAndSetUpText::
	text "Put away the"
	line "@"
	text_ram wStringBuffer3
	text_start

	para "and set up the"
	line "@"
	text_ram wStringBuffer4
	text "."
	prompt

_AlreadySetUpText::
	text "That's already set"
	line "up."
	prompt

_LookTownMapText::
	text "It's the TOWN MAP."
	done

_LookPikachuPosterText::
	text "It's a poster of a"
	line "cute PIKACHU."
	done

_LookClefairyPosterText::
	text "It's a poster of a"
	line "cute CLEFAIRY."
	done

_LookJigglypuffPosterText::
	text "It's a poster of a"
	line "cute JIGGLYPUFF."
	done

_LookAdorableDecoText::
	text "It's an adorable"
	line "@"
	text_ram wStringBuffer3
	text "."
	done

_LookGiantDecoText::
	text "A giant doll! It's"
	line "fluffy and cuddly."
	done

_MomShoppingText1::
	text "Hi, <PLAYER>!"
	line "How are you?"
	prompt

_MomShoppingText2::
	text "I found a useful"
	line "item shopping, so"
	prompt

_MomShoppingText3::
	text "I bought it with"
	line "your money. Sorry!"
	prompt

_MomShoppingText4::
	text "It's in your PC."
	line "You'll like it!"
	done

_MomShoppingText5::
	text "While shopping"
	line "today, I saw this"
	cont "adorable doll, so"
	prompt

_MomShoppingText6::
	text "It's in your room."
	line "You'll love it!"
	done

_TradingText1::
	text_ram wPlayerTrademonSpeciesName
	text " was"
	line "sent to @"
	text_ram wOTTrademonSenderName
	text "."
	done

_TradingText2::
	text_start
	done

_TradingText3::
	text_ram wOTTrademonSenderName
	text " bids"
	line "farewell to"
	done

_TradingText4::
	text_ram wOTTrademonSpeciesName
	text "."
	done

_TradingText5::
	text "Take good care of"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_TradingText6::
	text "For @"
	text_ram wPlayerTrademonSenderName
	text "'s"
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text ","
	done

_TradingText7::
	text_ram wOTTrademonSenderName
	text " sends"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_TradingText8::
	text_ram wOTTrademonSenderName
	text " will"
	line "trade @"
	text_ram wOTTrademonSpeciesName
	text_end

_TradingText9::
	text "for @"
	text_ram wPlayerTrademonSenderName
	text "'s"
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text "."
	done

_TradingText10::
	text_ram wPlayerTrademonSenderName
	text " will"
	line "trade @"
	text_ram wPlayerTrademonSpeciesName
	text_end

_TradingText11::
	text "for @"
	text_ram wOTTrademonSenderName
	text "'s"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_TradingText12::
	text_ram wPlayerTrademonSenderName
	text "'s"
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text " trade…"
	done

_TradingText13::
	text "Take good care of"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_TradingText14::
	text_ram wPlayerTrademonSenderName
	text "'s"
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text " trade…"
	done

_TradingText15::
	text "Take good care of"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_TradingText16::
	text_ram wOTTrademonSpeciesName
	text " came"
	line "back!"
	done

; Oak's Pokémon Talk

_OPT_IntroText1::
	text_start
	line "MARY: PROF.OAK'S"
	done

_OPT_IntroText2::
	text_start
	line "#MON TALK!"
	done

_OPT_IntroText3::
	text_start
	line "With me, MARY!"
	done

_OPT_OakText1::
	text_start
	line "OAK: @"
	text_ram wMonOrItemNameBuffer
	text_end

_OPT_OakText2::
	text_start
	line "may be seen around"
	done

_OPT_OakText3::
	text_start
	line "@"
	text_ram wStringBuffer1
	text "."
	done

_OPT_MaryText1::
	text_start
	line "MARY: @"
	text_ram wStringBuffer1
	text "'s"
	done

OPT_SweetAdorably::
	text_start
	line "sweet and adorably"
	done

OPT_WigglySlickly::
	text_start
	line "wiggly and slickly"
	done

OPT_AptlyNamed::
	text_start
	line "aptly named and"
	done

OPT_UndeniablyKindOf::
	text_start
	line "undeniably kind of"
	done

OPT_Unbearably::
	text_start
	line "so, so unbearably"
	done

OPT_WowImpressively::
	text_start
	line "wow, impressively"
	done

OPT_AlmostPoisonously::
	text_start
	line "almost poisonously"
	done

OPT_Sensually::
	text_start
	line "ooh, so sensually"
	done

OPT_Mischievously::
	text_start
	line "so mischievously"
	done

OPT_Topically::
	text_start
	line "so very topically"
	done

OPT_Addictively::
	text_start
	line "sure addictively"
	done

OPT_LooksInWater::
	text_start
	line "looks in water is"
	done

OPT_EvolutionMustBe::
	text_start
	line "evolution must be"
	done

OPT_Provocatively::
	text_start
	line "provocatively"
	done

OPT_FlippedOut::
	text_start
	line "so flipped out and"
	done

OPT_HeartMeltingly::
	text_start
	line "heart-meltingly"
	done

OPT_Cute::
	text_start
	line "cute."
	done

OPT_Weird::
	text_start
	line "weird."
	done

OPT_Pleasant::
	text_start
	line "pleasant."
	done

OPT_BoldSortOf::
	text_start
	line "bold, sort of."
	done

OPT_Frightening::
	text_start
	line "frightening."
	done

OPT_SuaveDebonair::
	text_start
	line "suave & debonair!"
	done

OPT_Powerful::
	text_start
	line "powerful."
	done

OPT_Exciting::
	text_start
	line "exciting."
	done

OPT_Groovy::
	text_start
	line "groovy!"
	done

OPT_Inspiring::
	text_start
	line "inspiring."
	done

OPT_Friendly::
	text_start
	line "friendly."
	done

OPT_HotHotHot::
	text_start
	line "hot, hot, hot!"
	done

OPT_Stimulating::
	text_start
	line "stimulating."
	done

OPT_Guarded::
	text_start
	line "guarded."
	done

OPT_Lovely::
	text_start
	line "lovely."
	done

OPT_Speedy::
	text_start
	line "speedy."
	done

_OPT_PokemonChannelText::
	text "#MON"
	done

_PokedexShowText::
	text_start
	line "@"
	text_ram wStringBuffer1
	text_end

; Pokémon Music Channel / Pokémusic

_BenIntroText1::
	text_start
	line "BEN: #MON MUSIC"
	done

_BenIntroText2::
	text_start
	line "CHANNEL!"
	done

_BenIntroText3::
	text_start
	line "It's me, DJ BEN!"
	done

_FernIntroText1::
	text_start
	line "FERN: #MUSIC!"
	done

_FernIntroText2::
	text_start
	line "With DJ FERN!"
	done

_BenFernText1::
	text_start
	line "Today's @"
	text_today
	text ","
	done

_BenFernText2A::
	text_start
	line "so let us jam to"
	done

_BenFernText2B::
	text_start
	line "so chill out to"
	done

_BenFernText3A::
	text_start
	line "#MON March!"
	done

_BenFernText3B::
	text_start
	line "#MON Lullaby!"
	done

; Lucky Channel

_LC_Text1::
	text_start
	line "REED: Yeehaw! How"
	done

_LC_Text2::
	text_start
	line "y'all doin' now?"
	done

_LC_Text3::
	text_start
	line "Whether you're up"
	done

_LC_Text4::
	text_start
	line "or way down low,"
	done

_LC_Text5::
	text_start
	line "don't you miss the"
	done

_LC_Text6::
	text_start
	line "LUCKY NUMBER SHOW!"
	done

_LC_Text7::
	text_start
	line "This week's Lucky"
	done

_LC_Text8::
	text_start
	line "Number is @"
	text_pause
	text_ram wStringBuffer1
	text "!"
	done

_LC_Text9::
	text_start
	line "I'll repeat that!"
	done

_LC_Text10::
	text_start
	line "Match it and go to"
	done

_LC_Text11::
	text_start
	line "the RADIO TOWER!"
	done

_LC_DragText1::
	text_start
	line "…Repeating myself"
	done

_LC_DragText2::
	text_start
	line "gets to be a drag…"
	done

; Places and People

_PnP_Text1::
	text_start
	line "PLACES AND PEOPLE!"
	done

_PnP_Text2::
	text_start
	line "Brought to you by"
	done

_PnP_Text3::
	text_start
	line "me, DJ LILY!"
	done

_PnP_Text4::
	text_start
	line "@"
	text_ram wStringBuffer2
	text " @"
	text_ram wStringBuffer1
	text_end

_PnP_cute::
	text_start
	line "is cute."
	done

_PnP_lazy::
	text_start
	line "is sort of lazy."
	done

_PnP_happy::
	text_start
	line "is always happy."
	done

_PnP_noisy::
	text_start
	line "is quite noisy."
	done

_PnP_precocious::
	text_start
	line "is precocious."
	done

_PnP_bold::
	text_start
	line "is somewhat bold."
	done

_PnP_picky::
	text_start
	line "is too picky!"
	done

_PnP_sortofok::
	text_start
	line "is sort of OK."
	done

_PnP_soso::
	text_start
	line "is just so-so."
	done

_PnP_great::
	text_start
	line "is actually great."
	done

_PnP_mytype::
	text_start
	line "is just my type."
	done

_PnP_cool::
	text_start
	line "is so cool, no?"
	done

_PnP_inspiring::
	text_start
	line "is inspiring!"
	done

_PnP_weird::
	text_start
	line "is kind of weird."
	done

_PnP_rightforme::
	text_start
	line "is right for me?"
	done

_PnP_odd::
	text_start
	line "is definitely odd!"
	done

_PnP_Text5::
	text_start
	line "@"
	text_ram wStringBuffer1
	text_end

_RocketRadioText1::
	text_start
	line "… …Ahem, we are"
	done

_RocketRadioText2::
	text_start
	line "TEAM ROCKET!"
	done

_RocketRadioText3::
	text_start
	line "After three years"
	done

_RocketRadioText4::
	text_start
	line "of preparation, we"
	done

_RocketRadioText5::
	text_start
	line "have risen again"
	done

_RocketRadioText6::
	text_start
	line "from the ashes!"
	done

_RocketRadioText7::
	text_start
	line "GIOVANNI! @"
	text_pause
	text "Can you"
	done

_RocketRadioText8::
	text_start
	line "hear?@"
	text_pause
	text " We did it!"
	done

_RocketRadioText9::
	text_start
	line "@"
	text_pause
	text "Where is our boss?"
	done

_RocketRadioText10::
	text_start
	line "@"
	text_pause
	text "Is he listening?"
	done

_BuenaRadioText1::
	text_start
	line "BUENA: BUENA here!"
	done

_BuenaRadioText2::
	text_start
	line "Today's password!"
	done

_BuenaRadioText3::
	text_start
	line "Let me think… It's"
	done

_BuenaRadioText4::
	text_start
	line "@"
	text_ram wStringBuffer1
	text "!"
	done

_BuenaRadioText5::
	text_start
	line "Don't forget it!"
	done

_BuenaRadioText6::
	text_start
	line "I'm in GOLDENROD's"
	done

_BuenaRadioText7::
	text_start
	line "RADIO TOWER!"
	done

_BuenaRadioMidnightText1::
	text_start
	line "BUENA: Oh my…"
	done

_BuenaRadioMidnightText2::
	text_start
	line "It's midnight! I"
	done

_BuenaRadioMidnightText3::
	text_start
	line "have to shut down!"
	done

_BuenaRadioMidnightText4::
	text_start
	line "Thanks for tuning"
	done

_BuenaRadioMidnightText5::
	text_start
	line "in to the end! But"
	done

_BuenaRadioMidnightText6::
	text_start
	line "don't stay up too"
	done

_BuenaRadioMidnightText7::
	text_start
	line "late! Presented to"
	done

_BuenaRadioMidnightText8::
	text_start
	line "you by DJ BUENA!"
	done

_BuenaRadioMidnightText9::
	text "I'm outta here!"
	done

_BuenaRadioMidnightText10::
	text "…"
	done

_BuenaOffTheAirText::
	text_start
	line ""
	done

Text_EnemyWithdrew::
	text "<ENEMY>"
	line "withdrew"
	cont "@"
	text_ram wEnemyMonNick
	text "!"
	prompt

Text_EnemyUsedOn::
	text "<ENEMY>"
	line "used @"
	text_ram wMonOrItemNameBuffer
	text_start
	cont "on @"
	text_ram wEnemyMonNick
	text "!"
	prompt

Text_ThatCantBeUsedRightNow::
	text "That can't be used"
	line "right now."
	prompt

Text_ThatItemCantBePutInThePack::
	text "That item can't be"
	line "put in the PACK."
	done

Text_TheItemWasPutInThePack::
	text "The @"
	text_ram wStringBuffer1
	text_start
	line "was put in the"
	cont "PACK."
	done

Text_RemainingTime::
	text "Remaining Time"
	done

Text_YourMonsHPWasHealed::
	text "Your #MON's HP"
	line "was healed."
	prompt

Text_Warping::
	text "Warping…"
	done

UnknownText_0x1bd05e::
	text "Which number"
	line "should be changed?"
	done

UnknownText_0x1bd07f::
	text "Will you play with"
	line "@"
	text_ram wStringBuffer2
	text "?"
	done

UnknownText_0x1bd09a::
	text "You need two #-"
	line "MON for breeding."
	prompt

Text_BreedingIsNotPossible::
	text "Breeding is not"
	line "possible."
	prompt

UnknownText_0x1bd0d8::
	text "The compatibility"
	line "is @"
	text_decimal wBreedingCompatibility, 1, 3
	text "."
	cont "Should they breed?"
	done

UnknownText_0x1bd109::
	text "There is no EGG."
	line ""
	prompt

UnknownText_0x1bd11c::
	text "It's going to"
	line "hatch!"
	prompt

UnknownText_0x1bd131::
	text "Test event"
	line "@"
	text_decimal wStringBuffer2, 1, 2
	text "?"
	done

UnknownText_0x1bd145::
	text "Start!"
	done

UnknownText_0x1bd14d::
	text "End!"
	done

UnknownText_0x1bd153::
	text "For a boy!"
	done

UnknownText_0x1bd15f::
	text "For a girl!"
	done

UnknownText_0x1bd16c::
	text "This doesn't"
	line "concern a boy!"
	done

UnknownText_0x1bd188::
	text "The BOX is full!"
	done

UnknownText_0x1bd19a::
	text "A new CARD arrived"
	line "from @"
	text_ram wStringBuffer2
	text "."
	done

UnknownText_0x1bd1ba::
	text "Put this CARD in"
	line "the CARD FOLDER?"
	done

UnknownText_0x1bd1dd::
	text_ram wStringBuffer2
	text "'s CARD was"
	line "listed as no.@"
	text_decimal wStringBuffer1, 1, 2
	text "."
	prompt

UnknownText_0x1bd201::
	text "Starting link."
	done

UnknownText_0x1bd211::
	text "Link terminated."
	done

UnknownText_0x1bd223::
	text "Closing link."
	done

UnknownText_0x1bd232::
	text "Clear the time"
	line "limit?"
	done

UnknownText_0x1bd249::
	text "The time limit was"
	line "cleared."
	done

UnknownText_0x1bd266::
	text "Pick which packet"
	line "as an error?"
	done

UnknownText_0x1bd286::
	text "Trading @"
	text_ram wStringBuffer2
	text_start
	line "for @"
	text_ram wStringBuffer1
	text "…"
	done

UnknownText_0x1bd2a0::
	text "Obtained the"
	line "VOLTORBBADGE!"
	done

UnknownText_0x1bd2bc::
	text "Which floor?"
	done

UnknownText_0x1bd2ca::
	text "ANNOUNCER: BEEEP!"

	para "Time's up!"
	done

UnknownText_0x1bd2e7::
	text "ANNOUNCER: The"
	line "Contest is over!"
	done

_RepelWoreOffText::
	text "REPEL's effect"
	line "wore off."
	done

_PlayerFoundItemText::
	text "<PLAYER> found"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_ButNoSpaceText::
	text "But <PLAYER> has"
	line "no space left…"
	done

_JustSawSomeRareMonText::
	text "I just saw some"
	line "rare @"
	text_ram wStringBuffer1
	text " in"
	cont "@"
	text_ram wStringBuffer2
	text "."

	para "I'll call you if I"
	line "see another rare"
	cont "#MON, OK?"
	prompt

_SavingRecordText::
	text "SAVING RECORD…"
	line "DON'T TURN OFF!"
	done

_ReceiveItemText::
	text_ram wPlayerName
	text " received"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	sound_item
	text_waitbutton
	text_end

_NoCoinsText::
	text "You have no coins."
	prompt

_NoCoinCaseText::
	text "You don't have a"
	line "COIN CASE."
	prompt

UnknownText_0x1bd407::
	text "OK, connect the"
	line "Game Link Cable."
	prompt

UnknownText_0x1bd429::
	text "<PLAYER> traded"
	line "@"
	text_ram wMonOrItemNameBuffer
	text " for"
	cont "@"
	text_ram wStringBuffer2
	text ".@"
	text_end

UnknownText_0x1bd445::
	sound_dex_fanfare_4
	text_pause
	text_end

_NPCTradeIntroText1::
	text "I collect #MON."
	line "Do you have"
	cont "@"
	text_ram wStringBuffer1
	text "?"

	para "Want to trade it"
	line "for my @"
	text_ram wStringBuffer2
	text "?"
	done

_NPCTradeCancelText1::
	text "You don't want to"
	line "trade? Aww…"
	done

_NPCTradeWrongText1::
	text "Huh? That's not"
	line "@"
	text_ram wStringBuffer1
	text ". "
	cont "What a letdown…"
	done

_NPCTradeCompleteText1::
	text "Yay! I got myself"
	line "@"
	text_ram wStringBuffer1
	text "!"
	cont "Thanks!"
	done

_NPCTradeAFterText1::
	text "Hi, how's my old"
	line "@"
	text_ram wStringBuffer2
	text " doing?"
	done

_NPCTradeIntroText2::
	text "Hi, I'm looking"
	line "for this #MON."

	para "If you have"
	line "@"
	text_ram wStringBuffer1
	text ", would"

	para "you trade it for"
	line "my @"
	text_ram wStringBuffer2
	text "?"
	done

_NPCTradeCancelText2::
	text "You don't have"
	line "one either?"

	para "Gee, that's really"
	line "disappointing…"
	done

_NPCTradeWrongText2::
	text "You don't have"
	line "@"
	text_ram wStringBuffer1
	text "? That's"
	cont "too bad, then."
	done

_NPCTradeCompleteText2::
	text "Great! Thank you!"

	para "I finally got"
	line "@"
	text_ram wStringBuffer1
	text "."
	done

_NPCTradeAfterText2::
	text "Hi! The @"
	text_ram wMonOrItemNameBuffer
	text_start
	line "you traded me is"
	cont "doing great!"
	done

_NPCTradeIntroText3::
	text_ram wMonOrItemNameBuffer
	text "'s cute,"
	line "but I don't have"

	para "it. Do you have"
	line "@"
	text_ram wStringBuffer1
	text "?"

	para "Want to trade it"
	line "for my @"
	text_ram wStringBuffer2
	text "?"
	done

_NPCTradeCancelText3::
	text "You don't want to"
	line "trade? Oh, darn…"
	done

_NPCTradeWrongText3::
	text "That's not"
	line "@"
	text_ram wStringBuffer1
	text "."

	para "Please trade with"
	line "me if you get one."
	done

_NPCTradeCompleteText3::
	text "Wow! Thank you!"
	line "I always wanted"
	cont "@"
	text_ram wMonOrItemNameBuffer
	text "!"
	done

_NPCTradeAfterText3::
	text "How is that"
	line "@"
	text_ram wStringBuffer2
	text " I"
	cont "traded you doing?"

	para "Your @"
	text_ram wMonOrItemNameBuffer
	text "'s"
	line "so cute!"
	done

_NPCTradeCompleteText4::
	text "Uh? What happened?"
	done

_NPCTradeAfterText4::
	text "Trading is so odd…"

	para "I still have a lot"
	line "to learn about it."
	done

_MomLeavingText1::
	text "Wow, that's a cute"
	line "#MON."

	para "Where did you get"
	line "it?"

	para "…"

	para "So, you're leaving"
	line "on an adventure…"

	para "OK!"
	line "I'll help too."

	para "But what can I do"
	line "for you?"

	para "I know! I'll save"
	line "money for you."

	para "On a long journey,"
	line "money's important."

	para "Do you want me to"
	line "save your money?"
	done

_MomLeavingText2::
	text "OK, I'll take care"
	line "of your money."

	para "<……><……><……>"
	prompt

_MomLeavingText3::
	text "Be careful."

	para "#MON are your"
	line "friends. You need"
	cont "to work as a team."

	para "Now, go on!"
	done

_MomVisitingText1::
	text "Hi! Welcome home!"
	line "You're trying very"
	cont "hard, I see."

	para "I've kept your"
	line "room tidy."

	para "Or is this about"
	line "your money?"
	done

_MomVisitingText2::
	text "What do you want"
	line "to do?"
	done

_MomVisitingText3::
	text "How much do you"
	line "want to save?"
	done

_MomVisitingText4::
	text "How much do you"
	line "want to take?"
	done

_MomVisitingText5::
	text "Do you want to"
	line "save some money?"
	done

_MomVisitingText6::
	text "You haven't saved"
	line "that much."
	prompt

_MomVisitingText7::
	text "You can't take"
	line "that much."
	prompt

_MomVisitingText8::
	text "You don't have"
	line "that much."
	prompt

_MomVisitingText9::
	text "You can't save"
	line "that much."
	prompt

_MomVisitingText10::
	text "OK, I'll save your"
	line "money. Trust me!"

	para "<PLAYER>, stick"
	line "with it!"
	done

_MomVisitingText11::
	text "Your money's safe"
	line "here! Get going!"
	done

_MomVisitingText12::
	text "<PLAYER>, don't"
	line "give up!"
	done

_MomVisitingText13::
	text "Just do what"
	line "you can."
	done

_DaycareDummyText::
	text_start
	done

_DayCareManIntroText::
	text "I'm the DAY-CARE"
	line "MAN. Want me to"
	cont "raise a #MON?"
	done

_DayCareManOddEggText::
	text "I'm the DAY-CARE"
	line "MAN. Do you know"
	cont "about EGGS?"

	para "I was raising"
	line "#MON with my"
	cont "wife, you see."

	para "We were shocked to"
	line "find an EGG!"

	para "How incredible is"
	line "that?"

	para "So, want me to"
	line "raise a #MON?"
	done

_DayCareLadyIntroText::
	text "I'm the DAY-CARE"
	line "LADY."

	para "Should I raise a"
	line "#MON for you?"
	done

_DayCareLadyOddEggText::
	text "I'm the DAY-CARE"
	line "LADY. Do you know"
	cont "about EGGS?"

	para "My husband and I"
	line "were raising some"
	cont "#MON, you see."

	para "We were shocked to"
	line "find an EGG!"

	para "How incredible"
	line "could that be?"

	para "Should I raise a"
	line "#MON for you?"
	done

_WhatShouldIRaiseText::
	text "What should I"
	line "raise for you?"
	prompt

_OnlyOneMonText::
	text "Oh? But you have"
	line "just one #MON."
	prompt

_CantRaiseEggText::
	text "Sorry, but I can't"
	line "accept an EGG."
	prompt

_RemoveMailText::
	text "Remove MAIL before"
	line "you come see me."
	prompt

_LastHealthyMonText::
	text "If you give me"
	line "that, what will"
	cont "you battle with?"
	prompt

_IllRaiseYourMonText::
	text "OK. I'll raise"
	line "your @"
	text_ram wStringBuffer1
	text "."
	prompt

_ComeBackLaterText::
	text "Come back for it"
	line "later."
	done

_AreWeGeniusesText::
	text "Are we geniuses or"
	line "what? Want to see"
	cont "your @"
	text_ram wStringBuffer1
	text "?"
	done

_YourMonHasGrownText::
	text "Your @"
	text_ram wStringBuffer1
	text_start
	line "has grown a lot."

	para "By level, it's"
	line "grown by @"
	text_decimal wStringBuffer2 + 1, 1, 3
	text "."

	para "If you want your"
	line "#MON back, it"
	cont "will cost ¥@"
	text_decimal wStringBuffer2 + 2, 3, 4
	text "."
	done

_PerfectHeresYourMonText::
	text "Perfect! Here's"
	line "your #MON."
	prompt

_GotBackMonText::
	text "<PLAYER> got back"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_BackAlreadyText::
	text "Huh? Back already?"
	line "Your @"
	text_ram wStringBuffer1
	text_start
	para "needs a little"
	line "more time with us."

	para "If you want your"
	line "#MON back, it"
	cont "will cost ¥100."
	done

_HaveNoRoomText::
	text "You have no room"
	line "for it."
	prompt

_DCNotEnoughMoneyText::
	text "You don't have"
	line "enough money."
	prompt

_OhFineThenText::
	text "Oh, fine then."
	prompt

_ComeAgainText::
	text "Come again."
	done

_TooAttachedText::
	text "It's too attached"
	line "to you<...> I couldn't"
	para "possibly take it"
	line "away from you."
	prompt

_NotYetText::
	text "Not yet…"
	done

_FoundAnEggText::
	text "Ah, it's you!"

	para "We were raising"
	line "your #MON, and"

	para "my goodness, were"
	line "we surprised!"

	para "Your #MON had"
	line "an EGG!"

	para "We don't know how"
	line "it got there, but"

	para "your #MON had"
	line "it. You want it?"
	done

_ReceivedEggText::
	text "<PLAYER> received"
	line "the EGG!"
	done

_TakeGoodCareOfEggText::
	text "Take good care of"
	line "it."
	done

_RefuseEggText::
	text "Well then, I'll"
	line "keep it. Thanks!"
	done

_NoRoomForEggText::
	text "You have no room"
	line "in your party."
	cont "Come back later."
	done

_WhichMonPhotoText::
	text "Which #MON"
	line "should I photo-"
	cont "graph?"
	prompt

_HoldOnText::
	text "All righty. Hold"
	line "still for a bit."
	prompt

_PrestoAllDoneText::
	text "Presto! All done."
	line "Come again, OK?"
	done

UnknownText_0x1c0000::
	text "Oh, no picture?"
	line "Come again, OK?"
	done

UnknownText_0x1c0021::
	text "An EGG? My talent"
	line "is worth more…"
	done

UnknownText_0x1c0043::
	text "Hello, hello! I'm"
	line "the NAME RATER."

	para "I rate the names"
	line "of #MON."

	para "Would you like me"
	line "to rate names?"
	done

UnknownText_0x1c00a0::
	text "Which #MON's"
	line "nickname should I"
	cont "rate for you?"
	prompt

UnknownText_0x1c00cd::
	text "Hm… @"
	text_ram wStringBuffer1
	text "…"
	line "That's a fairly"
	cont "decent name."

	para "But, how about a"
	line "slightly better"
	cont "nickname?"

	para "Want me to give it"
	line "a better name?"
	done

UnknownText_0x1c0142::
	text "All right. What"
	line "name should we"
	cont "give it, then?"
	prompt

UnknownText_0x1c0171::
	text "That's a better"
	line "name than before!"

	para "Well done!"
	done

UnknownText_0x1c019e::
	text "OK, then. Come"
	line "again sometime."
	done

UnknownText_0x1c01be::
	text "Hm… @"
	text_ram wStringBuffer1
	text "?"
	line "What a great name!"
	cont "It's perfect."

	para "Treat @"
	text_ram wStringBuffer1
	text_start
	line "with loving care."
	done

UnknownText_0x1c0208::
	text "Whoa… That's just"
	line "an EGG."
	done

UnknownText_0x1c0222::
	text "It might look the"
	line "same as before,"

	para "but this new name"
	line "is much better!"

	para "Well done!"
	done

UnknownText_0x1c0272::
	text "All right. This"
	line "#MON is now"
	cont "named @"
	text_ram wStringBuffer1
	text "."
	prompt

Text_Gained::
	text_ram wStringBuffer1
	text " gained@"
	text_end

Text_ABoostedStringBuffer2ExpPoints::
	text_start
	line "a boosted"
	cont "@"
	text_decimal wStringBuffer2, 2, 4
	text " EXP. Points!"
	prompt

Text_StringBuffer2ExpPoints::
	text_start
	line "@"
	text_decimal wStringBuffer2, 2, 4
	text " EXP. Points!"
	prompt

Text_GoMon::
	text "Go! @"
	text_end

Text_DoItMon::
	text "Do it! @"
	text_end

Text_GoForItMon::
	text "Go for it,"
	line "@"
	text_end

Text_YourFoesWeakGetmMon::
	text "Your foe's weak!"
	line "Get'm, @"
	text_end

Text_BattleMonNick01::
	text_ram wBattleMonNick
	text "!"
	done

Text_BattleMonNickComma::
	text_ram wBattleMonNick
	text ",@"
	text_end

Text_ThatsEnoughComeBack::
	text " that's"
	line "enough! Come back!@"
	text_end

Text_OKComeBack::
	text " OK!"
	line "Come back!@"
	text_end

Text_GoodComeBack::
	text " good!"
	line "Come back!@"
	text_end

Text_ComeBack::
	text " come"
	line "back!"
	done

UnknownText_0x1c0373::
	text "Booted up a TM."
	prompt

UnknownText_0x1c0384::
	text "Booted up an HM."
	prompt

UnknownText_0x1c0396::
	text "It contained"
	line "@"
	text_ram wStringBuffer2
	text "."

	para "Teach @"
	text_ram wStringBuffer2
	text_start
	line "to a #MON?"
	done

UnknownText_0x1c03c2::
	text_ram wStringBuffer2
	text " is"
	line "not compatible"
	cont "with @"
	text_ram wStringBuffer1
	text "."

	para "It can't learn"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

UnknownText_0x1c0436::
	text "The link has been"
	line "cancelled."
	prompt

UnknownText_0x1c0454::
	text "Communication"
	line "error."
	prompt

UnknownText_0x1c046a::
	text "Must retrieve GIFT"
	line "at #MON CENTER."
	prompt

UnknownText_0x1c048e::
	text "Your friend isn't"
	line "ready."
	prompt

UnknownText_0x1c04a7::
	text "Sorry--only five"
	line "GIFTS a day."
	prompt

UnknownText_0x1c04c6::
	text "Sorry. One GIFT"
	line "a day per person."
	prompt

UnknownText_0x1c04e9::
	text_ram wMysteryGiftPartnerName
	text " sent"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

UnknownText_0x1c04fa::
	text_ram wMysteryGiftPartnerName
	text " sent"
	line "@"
	text_ram wStringBuffer1
	text_start
	cont "to @"
	text_ram wMysteryGiftPlayerName
	text "'s home."
	prompt

UnknownText_0x1c051a::
	text "Received"
	line "@"
	text_ram wc850
	text "'s CARD."
	prompt

UnknownText_0x1c0531::
	text_ram wc850
	text "'s CARD was"
	line "listed as no.@"
	text_decimal wDeciramBuffer, 1, 2
	text "."
	prompt

UnknownText_0x1c0555::
	text "The CARD was not"
	line "registered."
	prompt

UnknownText_0x1c0573::
	text "The link has been"
	line "cancelled."
	prompt

UnknownText_0x1c0591::
	text "Communication"
	line "error."
	prompt

_BadgeRequiredText::
	text "Sorry! A new BADGE"
	line "is required."
	prompt

UnknownText_0x1c05c8::
	text "Can't use that"
	line "here."
	prompt

UnknownText_0x1c05dd::
	text_ram wStringBuffer2
	text " used"
	line "CUT!"
	prompt

UnknownText_0x1c05ec::
	text "There's nothing to"
	line "CUT here."
	prompt

UnknownText_0x1c0609::
	text "A blinding FLASH"
	line "lights the area!@"
	text_waitbutton
	text_end

_UsedSurfText::
	text_ram wStringBuffer2
	text " used"
	line "SURF!"
	done

_CantSurfText::
	text "You can't SURF"
	line "here."
	prompt

_AlreadySurfingText::
	text "You're already"
	line "SURFING."
	prompt

_AskSurfText::
	text "The water is calm."
	line "Want to SURF?"
	done

UnknownText_0x1c068e::
	text_ram wStringBuffer2
	text " used"
	line "WATERFALL!"
	done

UnknownText_0x1c06a3::
	text "Wow, it's a huge"
	line "waterfall."
	done

UnknownText_0x1c06bf::
	text "Do you want to use"
	line "WATERFALL?"
	done

UnknownText_0x1c06de::
	text_ram wStringBuffer2
	text " used"
	line "DIG!"
	done

UnknownText_0x1c06ed::
	text "<PLAYER> used an"
	line "ESCAPE ROPE."
	done

UnknownText_0x1c0705::
	text "Can't use that"
	line "here."
	done

UnknownText_0x1c071a::
	text "Return to the last"
	line "#MON CENTER."
	done

UnknownText_0x1c073b::
	text "Can't use that"
	line "here."

	para ""
	done

UnknownText_0x1c0751::
	text "A #MON is using"
	line "STRENGTH already."
	prompt

UnknownText_0x1c0774::
	text_ram wStringBuffer2
	text " used"
	line "STRENGTH!"
	done

UnknownText_0x1c0788::
	text_ram wStringBuffer1
	text " can"
	line "move boulders."
	prompt

UnknownText_0x1c07a0::
	text "A #MON may be"
	line "able to move this."

	para "Want to use"
	line "STRENGTH?"
	done

UnknownText_0x1c07d8::
	text "Boulders may now"
	line "be moved!"
	done

UnknownText_0x1c07f4::
	text "A #MON may be"
	line "able to move this."
	done

UnknownText_0x1c0816::
	text_ram wStringBuffer2
	text " used"
	line "WHIRLPOOL!"
	prompt

UnknownText_0x1c082b::
	text "It's a vicious"
	line "whirlpool!"

	para "A #MON may be"
	line "able to pass it."
	done

UnknownText_0x1c0864::
	text "A whirlpool is in"
	line "the way."

	para "Want to use"
	line "WHIRLPOOL?"
	done

UnknownText_0x1c0897::
	text_ram wStringBuffer2
	text " did a"
	line "HEADBUTT!"
	prompt

UnknownText_0x1c08ac::
	text "Nope. Nothing…"
	done

UnknownText_0x1c08bc::
	text "A #MON could be"
	line "in this tree."

	para "Want to HEADBUTT"
	line "it?"
	done

UnknownText_0x1c08f0::
	text_ram wStringBuffer2
	text " used"
	line "ROCK SMASH!"
	prompt

UnknownText_0x1c0906::
	text "Maybe a #MON"
	line "can break this."
	done

UnknownText_0x1c0924::
	text "This rock looks"
	line "breakable."

	para "Want to use ROCK"
	line "SMASH?"
	done

UnknownText_0x1c0958::
	text "Oh!"
	line "A bite!"
	prompt

UnknownText_0x1c0965::
	text "Not even a nibble!"
	prompt

UnknownText_0x1c099a::
	text "You can't get off"
	line "here!"
	done

UnknownText_0x1c09b2::
	text "<PLAYER> got on the"
	line "@"
	text_ram wStringBuffer2
	text "."
	done

UnknownText_0x1c09c7::
	text "<PLAYER> got off"
	line "the @"
	text_ram wStringBuffer2
	text "."
	done

UnknownText_0x1c09dd::
	text "This tree can be"
	line "CUT!"

	para "Want to use CUT?"
	done

UnknownText_0x1c0a05::
	text "This tree can be"
	line "CUT!"
	done

UnknownText_0x1c0a1c::
	text "<PLAYER> found"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

UnknownText_0x1c0a2c::
	text "But <PLAYER> can't"
	line "carry any more"
	cont "items."
	done

UnknownText_0x1c0a4e::
	text "<PLAYER> is out of"
	line "useable #MON!"

	para "<PLAYER> whited"
	line "out!"
	done

UnknownText_0x1c0a77::
	text "Yes! ITEMFINDER"
	line "indicates there's"
	cont "an item nearby."
	prompt

UnknownText_0x1c0aa9::
	text "Nope! ITEMFINDER"
	line "isn't responding."
	prompt

UnknownText_0x1c0acc::
	text_ram wStringBuffer3
	text_start
	line "fainted!"
	prompt

UnknownText_0x1c0ada::
	text "<PLAYER> is out of"
	line "useable #MON!"

	para "<PLAYER> whited"
	line "out!"
	prompt

UnknownText_0x1c0b03::
	text_ram wStringBuffer3
	text " used"
	line "SWEET SCENT!"
	done

UnknownText_0x1c0b1a::
	text "Looks like there's"
	line "nothing here…"
	done

UnknownText_0x1c0b3b::
	text "<PLAYER> sprinkled"
	line "water."

	para "But nothing"
	line "happened…"
	done

UnknownText_0x1c0b65::
	text "<PLAYER>'s #MON"
	line "were all healed!"
	done

Text_AnEGGCantHoldAnItem::
	text "An EGG can't hold"
	line "an item."
	prompt

UnknownText_0x1c0b9a::
	text "No items."
	done

UnknownText_0x1c0ba5::
	text "Throw away how"
	line "many?"
	done

UnknownText_0x1c0bbb::
	text "Throw away @"
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "(S)?"
	done

UnknownText_0x1c0bd8::
	text "Threw away"
	line "@"
	text_ram wStringBuffer2
	text "(S)."
	prompt

UnknownText_0x1c0bee::
	text "OAK: <PLAYER>!"
	line "This isn't the"
	cont "time to use that!"
	prompt

Text_YouDontHaveAMon::
	text "You don't have a"
	line "#MON!"
	prompt

UnknownText_0x1c0c2e::
	text "Registered the"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

UnknownText_0x1c0c45::
	text "You can't register"
	line "that item."
	prompt

UnknownText_0x1c0c63::
	text "Where should this"
	line "be moved to?"
	done

UnknownText_0x1c0c83::
	text_start
	done

Text_YouCantUseItInABattle::
	text "You can't use it"
	line "in a battle."
	prompt

Text_AreYouABoyOrAreYouAGirl::
	text "Are you a boy?"
	line "Or are you a girl?"
	done

UnknownText_0x1c0cc6::
	text "<USER>'s"
	line "@"
	text_ram wStringBuffer2
	text_end

UnknownText_0x1c0cd0::
	text_pause
	text "<SCROLL>went way up!"
	prompt

UnknownText_0x1c0ce0::
	text " went up!"
	prompt

UnknownText_0x1c0ceb::
	text "<TARGET>'s"
	line "@"
	text_ram wStringBuffer2
	text_end

UnknownText_0x1c0cf5::
	text_pause
	text "<SCROLL>sharply fell!"
	prompt

UnknownText_0x1c0d06::
	text " fell!"
	prompt

UnknownText_0x1c0d0e::
	text "<USER>@"
	text_end

UnknownText_0x1c0d12::
	text_start
	line "made a whirlwind!"
	prompt

UnknownText_0x1c0d26::
	text_start
	line "took in sunlight!"
	prompt

UnknownText_0x1c0d3a::
	text_start
	line "lowered its head!"
	prompt

UnknownText_0x1c0d4e::
	text_start
	line "is glowing!"
	prompt

UnknownText_0x1c0d5c::
	text_start
	line "flew up high!"
	prompt

UnknownText_0x1c0d6c::
	text_start
	line "dug a hole!"
	prompt

CommonText_HidUnderwater::
	text_start
	line "hid underwater!"
	prompt

_ActorNameText::
	text "<USER>@"
	text_end

_UsedMoveText::
	text_start
	line "used @"
	text_end

_UsedInsteadText::
	text "instead,"
	cont "@"
	text_end

_MoveNameText::
	text_ram wStringBuffer2
	text "!"
	done

UnknownText_0x1c0db0::
	text "Huh?"

	para "@"
	text_end

UnknownText_0x1c0db8::
	text_start
	done

UnknownText_0x1c0dba::
	text_ram wStringBuffer1
	text " came"
	line "out of its EGG!@"
	sound_caught_mon
	text_waitbutton
	text_end

UnknownText_0x1c0dd8::
	text "Give a nickname to"
	line "@"
	text_ram wStringBuffer1
	text "?"
	done

UnknownText_0x1c0df3::
	text "It's @"
	text_ram wBreedMon2Nick
	text_start
	line "that was left with"
	cont "the DAY-CARE LADY."
	done

UnknownText_0x1c0e24::
	text "It's @"
	text_ram wBreedMon1Nick
	text_start
	line "that was left with"
	cont "the DAY-CARE MAN."
	done

UnknownText_0x1c0e54::
	text "It's brimming with"
	line "energy."
	prompt

UnknownText_0x1c0e6f::
	text "It has no interest"
	line "in @"
	text_ram wStringBuffer1
	text "."
	prompt

UnknownText_0x1c0e8d::
	text "It appears to care"
	line "for @"
	text_ram wStringBuffer1
	text "."
	prompt

UnknownText_0x1c0eac::
	text "It's friendly with"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

UnknownText_0x1c0ec6::
	text "It shows interest"
	line "in @"
	text_ram wStringBuffer1
	text "."
	prompt

_EmptyMailboxText::
	text "There's no MAIL"
	line "here."
	prompt

ClearedMailPutAwayText::
	text "The cleared MAIL"
	line "was put away."
	prompt

MailPackFullText::
	text "The PACK is full."
	prompt

MailMessageLostText::
	text "The MAIL's message"
	line "will be lost. OK?"
	done

MailAlreadyHoldingItemText::
	text "It's already hold-"
	line "ing an item."
	prompt

MailEggText::
	text "An EGG can't hold"
	line "any MAIL."
	prompt

MailMovedFromBoxText::
	text "The MAIL was moved"
	line "from the MAILBOX."
	prompt

UnknownText_0x1c0fb3::
	text "Yes"
	prompt

UnknownText_0x1c0fb8::
	text "No"
	prompt

UnknownText_0x1c0fbc::
	text_decimal wcf64, 1, 3
	text " @"
	text_ram wStringBuffer1
	text_start
	line "Animation type @"
	text_ram wStringBuffer2
	text_end

UnknownText_0x1c0fdd::
	text "#MON number?"
	done

Text_WasSentToBillsPC::
	text_ram wStringBuffer1
	text " was"
	line "sent to BILL's PC."
	prompt

UnknownText_0x1c1006::
	text "You gotta have"
	line "#MON to call!"
	prompt

UnknownText_0x1c1024::
	text "What?"
	done

UnknownText_0x1c102b::
	text "There is a #MON"
	line "holding MAIL."

	para "Please remove the"
	line "MAIL."
	prompt

UnknownText_0x1c1062::
	text "You don't have a"
	line "single #MON!"
	prompt

UnknownText_0x1c1080::
	text "You can't deposit"
	line "your last #MON!"
	prompt

UnknownText_0x1c10a2::
	text "You can't take any"
	line "more #MON."
	prompt

UnknownText_0x1c10c0::
	text "Caught @"
	text_ram wStringBuffer1
	text "!"
	prompt

UnknownText_0x1c10cf::
	text "Switch #MON?"
	done

UnknownText_0x1c10dd::
	text "You already caught"
	line "a @"
	text_ram wStringBuffer1
	text "."
	prompt

ContestJudging_FirstPlaceText::
	text "This Bug-Catching"
	line "Contest winner is@"
	text_pause
	text "…"

	para "@"
	text_ram wBugContestWinnerName
	text ","
	line "who caught a"
	cont "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

ContestJudging_FirstPlaceScoreText::
	text_start

	para "The winning score"
	line "was @"
	text_decimal wBugContestFirstPlaceScore, 2, 3
	text " points!"
	prompt

ContestJudging_SecondPlaceText::
	text "Placing second was"
	line "@"
	text_ram wBugContestWinnerName
	text ","

	para "who caught a"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

ContestJudging_SecondPlaceScoreText::
	text_start

	para "The score was"
	line "@"
	text_decimal wBugContestSecondPlaceScore, 2, 3
	text " points!"
	prompt

ContestJudging_ThirdPlaceText::
	text "Placing third was"
	line "@"
	text_ram wBugContestWinnerName
	text ","

	para "who caught a"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

ContestJudging_ThirdPlaceScoreText::
	text_start

	para "The score was"
	line "@"
	text_decimal wBugContestThirdPlaceScore, 2, 3
	text " points!"
	prompt

UnknownText_0x1c1203::
	text "Let me measure"
	line "that MAGIKARP."

	para "…Hm, it measures"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

UnknownText_0x1c123a::
	text "CURRENT RECORD"

	para "@"
	text_ram wStringBuffer1
	text " caught by"
	line "@"
	text_ram wMagikarpRecordHoldersName
	text_waitbutton
	text_end

UnknownText_0x1c1261::
	text "Congratulations!"

	para "We have a match"
	line "with the ID number"

	para "of @"
	text_ram wStringBuffer1
	text " in"
	line "your party."
	prompt

UnknownText_0x1c12ae::
	text "Congratulations!"

	para "We have a match"
	line "with the ID number"

	para "of @"
	text_ram wStringBuffer1
	text " in"
	line "your PC BOX."
	prompt

UnknownText_0x1c12fc::
	text "Give a nickname to"
	line "the @"
	text_ram wStringBuffer1
	text " you"
	cont "received?"
	done

UnknownText_0x1c1328::
	text "Bzzzzt! You must"
	line "have a #MON to"
	cont "use this!"
	prompt

UnknownText_0x1c1353::
	text "<PLAYER> turned on"
	line "the PC."
	prompt

UnknownText_0x1c1368::
	text "What do you want"
	line "to do?"
	done

_PlayersPCHowManyWithdrawText::
	text "How many do you"
	line "want to withdraw?"
	done

_PlayersPCWithdrewItemsText::
	text "Withdrew @"
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "(S)."
	prompt

_PlayersPCNoRoomWithdrawText::
	text "There's no room"
	line "for more items."
	prompt

UnknownText_0x1c13df::
	text "No items here!"
	prompt

_PlayersPCHowManyDepositText::
	text "How many do you"
	line "want to deposit?"
	done

_PlayersPCDepositItemsText::
	text "Deposited @"
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "(S)."
	prompt

_PlayersPCNoRoomDepositText::
	text "There's no room to"
	line "store items."
	prompt

UnknownText_0x1c144d::
	text "<PLAYER> turned on"
	line "the PC."
	prompt

UnknownText_0x1c1462::
	text "Access whose PC?"
	done

UnknownText_0x1c1474::
	text "BILL's PC"
	line "accessed."

	para "#MON Storage"
	line "System opened."
	prompt

UnknownText_0x1c14a4::
	text "Accessed own PC."

	para "Item Storage"
	line "System opened."
	prompt

UnknownText_0x1c14d2::
	text "PROF.OAK's PC"
	line "accessed."

	para "#DEX Rating"
	line "System opened."
	prompt

UnknownText_0x1c1505::
	text "…"
	line "Link closed…"
	done

UnknownText_0x1c19cd::
	text "Triple-theme"
	line "trainer ranking!"

	para "The SAVE file you"
	line "just sent might"
	cont "make the rankings!"

	para ""
	done

UnknownText_0x1c1a22::
	text "There is no"
	line "ranking data."

	para "Link to obtain"
	line "ranking data."

	para ""
	done

UnknownText_0x1c1a5b::
	text " , yeah!"
	done

UnknownText_0x1c1a65::
	text "Darn…"
	done

UnknownText_0x1c1a6c::
	text "Would you like to"
	line "end the Contest?"
	done

UnknownText_0x1c1a90::
	text "Toss out how many"
	line "@"
	text_ram wStringBuffer2
	text "(S)?"
	done

UnknownText_0x1c1aad::
	text "Throw away @"
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "(S)?"
	done

UnknownText_0x1c1aca::
	text "Discarded"
	line "@"
	text_ram wStringBuffer1
	text "(S)."
	prompt

UnknownText_0x1c1adf::
	text "That's too impor-"
	line "tant to toss out!"
	prompt

UnknownText_0x1c1b03::
	text "OAK: <PLAYER>!"
	line "This isn't the"
	cont "time to use that!"
	done

UnknownText_0x1c1b2c::
	text "Took @"
	text_ram wMonOrItemNameBuffer
	text "'s"
	line "@"
	text_ram wStringBuffer1
	text " and"

	para "made it hold"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

UnknownText_0x1c1b57::
	text "Made @"
	text_ram wMonOrItemNameBuffer
	text_start
	line "hold @"
	text_ram wStringBuffer2
	text "."
	prompt

UnknownText_0x1c1b6f::
	text "Please remove the"
	line "MAIL first."
	prompt

UnknownText_0x1c1b8e::
	text_ram wMonOrItemNameBuffer
	text " isn't"
	line "holding anything."
	prompt

UnknownText_0x1c1baa::
	text "Item storage space"
	line "full."
	prompt

UnknownText_0x1c1bc4::
	text "Took @"
	text_ram wStringBuffer1
	text_start
	line "from @"
	text_ram wMonOrItemNameBuffer
	text "."
	prompt

UnknownText_0x1c1bdc::
	text_ram wMonOrItemNameBuffer
	text " is"
	line "already holding"

	para "@"
	text_ram wStringBuffer1
	text "."
	line "Switch items?"
	done

UnknownText_0x1c1c09::
	text "This item can't be"
	line "held."
	prompt

UnknownText_0x1c1c22::
	text "The MAIL will lose"
	line "its message. OK?"
	done

UnknownText_0x1c1c47::
	text "MAIL detached from"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

UnknownText_0x1c1c62::
	text "There's no space"
	line "for removing MAIL."
	prompt

UnknownText_0x1c1c86::
	text "Send the removed"
	line "MAIL to your PC?"
	done

UnknownText_0x1c1ca9::
	text "Your PC's MAILBOX"
	line "is full."
	prompt

UnknownText_0x1c1cc4::
	text "The MAIL was sent"
	line "to your PC."
	prompt

UnknownText_0x1c1ce3::
	text "Not enough HP!"
	prompt

UnknownText_0x1c1cf3::
	text "An item in your"
	line "PACK may be"

	para "registered for use"
	line "on SELECT Button."
	done

_OakText1::
	text "Hello! Sorry to"
	line "keep you waiting!"

	para "Welcome to the"
	line "world of #MON!"

	para "My name is OAK."

	para "People call me the"
	line "#MON PROF."
	prompt

_OakText2::
	text "This world is in-"
	line "habited by crea-"
	cont "tures that we call"
	cont "#MON.@"
	text_end

_OakText3::
	text_waitbutton
	text_end

_OakText4::
	text "People and #MON"
	line "live together by"

	para "supporting each"
	line "other."

	para "Some people play"
	line "with #MON, some"
	cont "battle with them."
	prompt

_OakText5::
	text "But we don't know"
	line "everything about"
	cont "#MON yet."

	para "There are still"
	line "many mysteries to"
	cont "solve."

	para "That's why I study"
	line "#MON every day."
	prompt
