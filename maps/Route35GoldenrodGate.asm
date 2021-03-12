	object_const_def ; object_event constants
	const ROUTE35GOLDENRODGATE_RANDY
	const ROUTE35GOLDENRODGATE_POKEFAN_F
	const ROUTE35GOLDENRODGATE_FISHER

Route35GoldenrodGate_MapScripts:
	db 2 ; scene scripts
	scene_script .dummy ; SCENE_DEFAULT
	scene_script .dummy ; SCENE_FINISHED

	db 0 ; callbacks

.dummy
	end

RandyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HP_UP_FROM_RANDY
	iftrue .tryhold
	checkevent EVENT_GAVE_KENYA
	iftrue .questcomplete
	checkevent EVENT_GOT_KENYA
	iftrue .alreadyhavekenya
.continue
	writetext Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText
	yesorno
	iffalse .refused
	writetext Route35GoldenrodGateRandyThanksKidText
	buttonsound
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .partyfull
	writetext Route35GoldenrodGatePlayerReceivedAMonWithMailText
	playsound SFX_KEY_ITEM
	waitsfx
	givepoke CHATOT, 20, NO_ITEM, TRUE, GiftChatotName, GiftChatotOTName
	givepokemail GiftChatotMail
	replacemove AERIAL_ACE, CHATTER
	setevent EVENT_GOT_KENYA
	setscene SCENE_FINISHED
.alreadyhavekenya
	writetext Route35GoldenrodGateRandyWeirdTreeBlockingRoadText
	waitbutton
	closetext
	end

.partyfull
	writetext Route35GoldenrodGateRandyCantCarryAnotherMonText
	waitbutton
	closetext
	end

.refused
	writetext Route35GoldenrodGateRandyOhNeverMindThenText
	waitbutton
	closetext
	end

.questcomplete
	writetext Route35GoldenrodGateRandySomethingForYourTroubleText
	buttonsound
	verbosegiveitem HP_UP
	iffalse .bagfull
	setevent EVENT_GOT_HP_UP_FROM_RANDY
.gothpup
	writetext Route35GoldenrodGateRandyMyPalWasSnoozingRightText
	waitbutton
.bagfull
	closetext
	end

.tryhold
	readmem wTPPFeatureLock
	ifequal TPP_FEATURE_LOCK_VALUE, .gothpup
	; fallthrough

RandyHoldKenya:
	checkspecialstorage SPECIALSTORAGE_CHATOT
	iftrue .withdraw
	writetext .request_hold_text
	yesorno
	iffalse .refused_deposit
	partyselect
	iffalse .refused_deposit
	depositspecial SPECIALSTORAGE_CHATOT, CHATOT, CHATTER
	ifequal SPECIALDEPOSIT_HOLDING_MAIL, .mail
	ifequal SPECIALDEPOSIT_LAST_MON, .last_mon
	ifequal SPECIALDEPOSIT_WRONG_SPECIES, .wrong_mon
	ifequal SPECIALDEPOSIT_WRONG_MOVES, .wrong_move
	ifequal SPECIALDEPOSIT_EGG, .egg
	writetext .deposited_text
	waitbutton
	closetext
	end

.request_hold_text
	text "Oh, it's you again!"
	line "Can I have my"
	cont "#MON back?"
	done

.deposited_text
	text "Thank you! Come"
	line "and visit whenever"
	cont "you're around."

	para "You can borrow"
	line "KENYA any time you"
	cont "want to!"
	done

.refused_deposit
	writetext .refused_hold_text
	waitbutton
	closetext
	end

.refused_hold_text
	text "OK, you can keep"
	line "KENYA around for a"
	para "while. The bird"
	line "seems to love you!"
	done

.mail
	writetext .mail_text
	waitbutton
	closetext
	end

.mail_text
	text "KENYA is still"
	line "holding some MAIL<...>"

	para "I can't stop the"
	line "bird from doing"
	para "its deliveries,"
	line "you know!"
	done

.last_mon
	writetext .last_mon_text
	waitbutton
	closetext
	end

.last_mon_text
	text "If I take KENYA"
	line "away from you,"
	para "what will you"
	line "battle with?"
	done

.wrong_mon
	writetext .wrong_mon_text
	waitbutton
	closetext
	end

.wrong_mon_text
	text "Oh, I cannot just"
	line "raise one of your"
	cont "#MON like that<...>"

	para "Have you tried the"
	line "DAY-CARE to the"
	cont "south of here?"
	done

.wrong_move
	writetext .wrong_move_text
	waitbutton
	closetext
	end

.wrong_move_text
	text "That seems like an"
	line "ordinary CHATOT to"
	cont "me<...>"

	para "Are you sure that's"
	line "my KENYA?"
	done

.egg
	writetext .egg_text
	waitbutton
	closetext
	end

.egg_text
	text "That's just an EGG,"
	line "though!"
	done

.withdraw
	writetext .request_withdraw_text
	yesorno
	iffalse .refused_withdraw
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .party_full
	withdrawspecial SPECIALSTORAGE_CHATOT, CHATOT, GiftChatotOTName
	iffalse .party_full
	waitbutton
	closetext
	end

.request_withdraw_text
	text "Oh, it's you again!"
	line "Do you want to"
	para "borrow KENYA for a"
	line "while?"
	done

.refused_withdraw
	writetext .refused_withdraw_text
	waitbutton
	closetext
	end

.refused_withdraw_text
	text "Oh, that's fine."
	line "Come back whenever"
	cont "you want!"
	done

.party_full
	writetext .party_full_text
	waitbutton
	closetext
	end

.party_full_text
	text "Oh, but you can't"
	line "carry any more"
	cont "#MON, can you?"

	para "KENYA is terrified"
	line "of the PC for some"
	cont "reason<...>"
	done

GiftChatotMail:
	db FLOWER_MAIL
	db   "DARK CAVE leads"
	next "to another road@"

GiftChatotName:
	db "KENYA@"

GiftChatotOTName:
	db "RANDY@"

Route35GoldenrodGate_KenyaLock_Left:
	turnobject ROUTE35GOLDENRODGATE_RANDY, RIGHT
	showemote EMOTE_SHOCK, ROUTE35GOLDENRODGATE_RANDY, 20
	opentext
	writetext Route35GoldenrodGate_KenyaLock_HeyWaitText
	closetext
	applymovement PLAYER, Route35GoldenrodGate_KenyaLock_MovementLeft
	opentext
	sjump RandyScript.continue

Route35GoldenrodGate_KenyaLock_Right:
	turnobject ROUTE35GOLDENRODGATE_RANDY, RIGHT
	opentext
	writetext Route35GoldenrodGate_KenyaLock_HeyWaitText
	closetext
	applymovement PLAYER, Route35GoldenrodGate_KenyaLock_MovementRight
	opentext
	sjump RandyScript.continue

Route35GoldenrodGate_KenyaLock_HeyWaitText:
	text "Hey, wait!"
	prompt

Route35GoldenrodGate_KenyaLock_MovementRight:
	step LEFT
Route35GoldenrodGate_KenyaLock_MovementLeft:
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step_end

Route35GoldenrodGatePokefanFScript:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .FoughtSudowoodo
	writetext Route35GoldenrodGatePokefanFText
	waitbutton
	closetext
	end

.FoughtSudowoodo
	writetext Route35GoldenrodGatePokefanFText_FoughtSudowoodo
	waitbutton
	closetext
	end

Route35GoldenrodGateFisherScript:
	jumptextfaceplayer Route35GoldenrodGateFisherText

Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText:
	text "Excuse me, kid!"
	line "Can you do a guy"
	cont "a favor?"

	para "Can you take this"
	line "#MON with MAIL"
	cont "to my friend?"

	para "He's on ROUTE 31."
	done

Route35GoldenrodGateRandyThanksKidText:
	text "You will? Perfect!"
	line "Thanks, kid!"

	para "My pal's a chubby"
	line "guy who snoozes"
	cont "all the time."

	para "You'll recognize"
	line "him right away!"
	done

Route35GoldenrodGatePlayerReceivedAMonWithMailText:
	text "<PLAYER> received a"
	line "#MON with MAIL."
	done

Route35GoldenrodGateRandyWeirdTreeBlockingRoadText:
	text "You can read it,"
	line "but don't lose it!"
	cont "ROUTE 31!"

	para "Oh, yeah. There"
	line "was a weird tree"
	cont "blocking the road."

	para "I wonder if it's"
	line "been cleared?"
	done

Route35GoldenrodGateRandyCantCarryAnotherMonText:
	text "You can't carry"
	line "another #MON…"
	done

Route35GoldenrodGateRandyOhNeverMindThenText:
	text "Oh… Never mind,"
	line "then…"
	done

Route35GoldenrodGateRandySomethingForYourTroubleText:
	text "Thanks, kid! You"
	line "made the delivery"
	cont "for me!"

	para "Here's something"
	line "for your trouble!"
	done

Route35GoldenrodGateRandyMyPalWasSnoozingRightText:
	text "My pal was snooz-"
	line "ing, right? Heh,"
	cont "what'd I say?"
	done

Route35GoldenrodGatePokefanFText:
	text "A strange tree is"
	line "blocking the road."

	para "It wriggles around"
	line "if you talk to it."

	para "I heard it became"
	line "wild when someone"

	para "watered it with a"
	line "SQUIRTBOTTLE."
	done

Route35GoldenrodGatePokefanFText_FoughtSudowoodo:
	text "I like the #MON"
	line "Lullaby they play"
	cont "on the radio."
	done

Route35GoldenrodGateFisherText:
	text "I wonder how many"
	line "kinds of #MON"

	para "there are in the"
	line "world."

	para "Three years ago,"
	line "PROF.OAK said that"

	para "there were 150"
	line "different kinds."
	done

Route35GoldenrodGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  0, ROUTE_35, 1
	warp_event  5,  0, ROUTE_35, 2
	warp_event  4,  7, GOLDENROD_CITY, 12
	warp_event  5,  7, GOLDENROD_CITY, 12

	db 2 ; coord events
	coord_event 4, 1, SCENE_DEFAULT, Route35GoldenrodGate_KenyaLock_Left
	coord_event 5, 1, SCENE_DEFAULT, Route35GoldenrodGate_KenyaLock_Right

	db 0 ; bg events

	db 3 ; object events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RandyScript, -1
	object_event  6,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route35GoldenrodGatePokefanFScript, -1
	object_event  3,  2, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route35GoldenrodGateFisherScript, -1
