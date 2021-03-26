	object_const_def ; object_event constants
	const VIRIDIAN_FOREST_BUG_CATCHER_1
	const VIRIDIAN_FOREST_BUG_CATCHER_2
	const VIRIDIAN_FOREST_BUG_CATCHER_3
	const VIRIDIAN_FOREST_BUG_CATCHER_4
	const VIRIDIAN_FOREST_BUG_CATCHER_5
	const VIRIDIAN_FOREST_POKE_BALL_1
	const VIRIDIAN_FOREST_POKE_BALL_2

ViridianForest_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerBugCatcherDane:
	trainer BUG_CATCHER, DANE, EVENT_BEAT_BUG_CATCHER_DANE, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext .AfterText

.SeenText:
	text "Welcome to"
	line "VIRIDIAN FOREST."
	para "Enjoy my bug-type"
	line "#MON."
	done

.BeatenText:
	text "That's wonderful…"
	done

.AfterText:
	text "Pretty impressive!"

	para "I'm sure you can"
	line "go anywhere with"
	cont "that skill!"
	done

TrainerBugCatcherDion:
	trainer BUG_CATCHER, DION, EVENT_BEAT_BUG_CATCHER_DION, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext .AfterText

.SeenText:
	text "Shh! Be quiet! The"
	line "bug #MON will"
	cont "run away!"
	done

.BeatenText:
	text "Phew…"
	done

.AfterText:
	text "Bug-type #MON"
	line "make all kinds of"
	cont "sounds."

	para "For bug #MON"
	line "fans, knowing how"
	para "to distinguish"
	line "them is key!"
	done

TrainerBugCatcherStacey:
	trainer BUG_CATCHER, STACEY, EVENT_BEAT_BUG_CATCHER_STACEY, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext .AfterText

.SeenText:
	text "Wow, that's a HUGE"
	line "#MON!"

	para "…"
	line "…What kind of"
	cont "trainer?!"
	done

.BeatenText:
	text "I couldn't catch"
	line "it!"
	done

.AfterText:
	text "Has anyone ever"
	line "told you that from"
	para "behind you look"
	line "like a VENONAT?"
	done

TrainerBugCatcherEllis:
	trainer BUG_CATCHER, ELLIS, EVENT_BEAT_BUG_CATCHER_ELLIS, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext .AfterText

.SeenText:
	text "There's nothing"
	line "more efficient and"
	para "beautiful than a"
	line "bug-type #MON."
	done

.BeatenText:
	text "I lost"
	line "beautifully!"
	done

.AfterText:
	text "If this is it,"
	line "then I don't mind"
	cont "losing!"
	done

TrainerBugCatcherAbner:
	trainer BUG_CATCHER, ABNER, EVENT_BEAT_BUG_CATCHER_ABNER, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext .AfterText

.SeenText:
	text "Many people prefer"
	line "solid bug #MON"
	para "over squishy bug"
	line "#MON."
	done

.BeatenText:
	text "Thanks for your"
	line "hard work, my"
	cont "lovely #MON…"
	done

.AfterText:
	text "Doesn't matter what"
	line "kind of #MON--"

	para "as long as you"
	line "like them, they"
	cont "all look cute."
	done

ViridianForestSignScript1:
	jumptext .Text

.Text:
	text "LEAVING"
	line "VIRIDIAN FOREST"
	cont "PEWTER CITY AHEAD"
	done

ViridianForestSignScript2:
	jumptext .Text

.Text:
	text "TRAINER TIPS"

	para "Hold on to that"
	line "BIG MUSHROOM!"

	para "Some maniacs will"
	line "pay lots of money"
	cont "for useless items!"
	done

ViridianForestSignScript3:
	jumptext .Text

.Text:
	text "TRAINER TIPS"

	para "GRASS-type #MON"
	line "are unaffected by"
	para "powder and spore"
	line "moves!"
	done

ViridianForestSignScript4:
	jumptext .Text

.Text:
	text "For poison, use"
	line "ANTIDOTE! Get it"
	cont "at #MON MARTS!"
	done

ViridianForestSignScript5:
	jumptext .Text

.Text:
	text "TRAINER TIPS"

	para "Poison-type #-"
	line "MON can't be poi-"
	cont "soned themselves!"
	done

ViridianForestSignScript6:
	jumptext .Text

.Text:
	text "TRAINER TIPS"

	para "Weaken #MON"
	line "before attempting"
	cont "capture!"

	para "When healthy,"
	line "they may escape!"
	done

ViridianForestDireHit:
	itemball DIRE_HIT

ViridianForestMaxPotion:
	itemball MAX_POTION

ViridianForestHiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_VIRIDIAN_FOREST_HIDDEN_MAX_ETHER

ViridianForestHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_VIRIDIAN_FOREST_HIDDEN_FULL_HEAL

ViridianForestHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_VIRIDIAN_FOREST_HIDDEN_FULL_RESTORE

ViridianForestHiddenRevive:
	hiddenitem REVIVE, EVENT_VIRIDIAN_FOREST_HIDDEN_REVIVE

ViridianForest_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2,  3, VIRIDIAN_FOREST_NORTH_GATE, 3
	warp_event 16, 51, VIRIDIAN_FOREST_SOUTH_GATE, 1
	warp_event 17, 51, VIRIDIAN_FOREST_SOUTH_GATE, 2

	db 0 ; coord events

	db 10 ; bg events
	bg_event  1,  4, BGEVENT_READ, ViridianForestSignScript1
	bg_event  4, 28, BGEVENT_READ, ViridianForestSignScript2
	bg_event 26, 21, BGEVENT_READ, ViridianForestSignScript3
	bg_event 16, 36, BGEVENT_READ, ViridianForestSignScript4
	bg_event 24, 44, BGEVENT_READ, ViridianForestSignScript5
	bg_event 18, 49, BGEVENT_READ, ViridianForestSignScript6
	bg_event 13, 23, BGEVENT_ITEM, ViridianForestHiddenMaxEther
	bg_event 13,  7, BGEVENT_ITEM, ViridianForestHiddenFullHeal
	bg_event 16, 45, BGEVENT_ITEM, ViridianForestHiddenFullRestore
	bg_event 31, 37, BGEVENT_ITEM, ViridianForestHiddenRevive

	db 7 ; object events
	object_event  2, 22, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherDane, -1
	object_event 15, 20, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherDion, -1
	object_event 23,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherStacey, -1
	object_event 30, 23, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherEllis, -1
	object_event 27, 40, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherAbner, -1
	object_event  1, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestDireHit, EVENT_VIRIDIAN_FOREST_DIRE_HIT
	object_event 12, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestMaxPotion, EVENT_VIRIDIAN_FOREST_MAX_POTION
