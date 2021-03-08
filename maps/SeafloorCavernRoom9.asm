	object_const_def ; object_event constants
	const SEAFLOOR_CAVERN_ROOM9_MARINA

SeafloorCavernRoom9_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Marina:
	special FadeOutMusic
	chattyoff
	opentext
	writetext .Seen
	waitbutton
	closetext
	faceplayer
	opentext
	writetext .Challenge
	special BackupHeldItems
	setval 0
	writemem wPartyMon1Item
	writemem wPartyMon2Item
	writemem wPartyMon3Item
	writemem wPartyMon4Item
	writemem wPartyMon5Item
	writemem wPartyMon6Item
	waitbutton
	closetext
	winlosstext .YouWin, .YouLose
	loadtrainer BLUE_MAY, MARINA
	loadvar VAR_BATTLETYPE, BATTLETYPE_METRONOME
	startbattle
	dontrestartmapmusic
	reloadmap
	special FadeOutMusic
	special RestoreHeldItems
	opentext
	iftrue .LostToMarina
	writetext .MarinaDefeated
	waitbutton
	closetext
	chattyon
	clearevent EVENT_MARINA_AVAILABLE
	setevent EVENT_MARINA_DEFEATED
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear SEAFLOOR_CAVERN_ROOM9_MARINA
	pause 15
	special FadeInQuickly
	pause 30
	special HealParty
	refreshscreen
	setval SPAWN_MARINA
	writemem wSpawnAfterChampion
	credits
	end

.LostToMarina
	writetext .MarinaVictorious
	waitbutton
	closetext
	chattyon
	special FadeBlackQuickly
	pause 15
	special HealParty
	warp REDS_HOUSE_2F, 0, 7
	end

.Seen
	text "That should do it."
	done

.Challenge
	text "Oh, a battle?"

	para "Very well."

	para "But on my terms."
	done

.YouLose
	text "Simply outplayed."
	done

.YouWin
	text "Luck was not on"
	line "my side."
	done

.MarinaDefeated
	text "Thanks, I had fun."

	para "Maybe we'll meet"
	line "again someday."
	done

.MarinaVictorious
	text "Beat me at my own"
	line "game?"

	para "Maybe in your"
	line "dreams."

	para "Time to wake up,"
	line "<PLAYER>!"
	done

SeafloorCavernRoom9_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  5, 4, SEAFLOOR_CAVERN_ROOM8, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event 12,  6, SPRITE_MAY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Marina, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
