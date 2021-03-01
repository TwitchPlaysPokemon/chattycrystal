	object_const_def ; object_event constants
	const MTBTLMASTER
	const SILPH_CO_MASTER_BALL
	const SILPH_CO_RAIKOU
	const SILPH_CO_ENTEI
	const SILPH_CO_SUICUNE

SilphCoRoof_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MtBattleTrainer100:
	trainer CAL, MT_BATTLE_100, EVENT_BEAT_MT_BATTLE_100, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleBeatBtlMaster


MtBattleBeatBtlMaster:
	endifjustbattled
	opentext
	writetext MtBattleBeatBtlMasterText
	waitbutton
	closetext
	end

MtBattleMasterBall:
	verbosegiveitem2 MASTER_BALL, 5
	iftrue MtBattleGotReward
	opentext
	writetext MtBattleBagFullText
	closetext
	end

MtBattleBeatBtlMasterText:
	text "You beat every one"
	line "of us! Good work!"

	para "Your reward is up"
	line "the stairs behind"
	cont "me."

	para "But once you take"
	line "it, you'll have"

	para "to beat us all"
	line "over again to"
	cont "get another!"
	done

MtBattleBagFullText:
	text "You have no room"
	line "for this."
	done

SilphCoRoof_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  7, 13, SILPH_CO_11F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  8,  4, SPRITE_CAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, MtBattleTrainer100, -1
	object_event  7,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtBattleMasterBall, -1
	object_event 10,  0, SPRITE_RAIKOU, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MT_BATTLE_HIDE_RAIKOU
	object_event 12,  3, SPRITE_SUICUNE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MT_BATTLE_HIDE_SUICUNE

