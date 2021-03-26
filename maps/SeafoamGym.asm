	object_const_def ; object_event constants
	const SEAFOAMGYM_BLAINE
	const SEAFOAMGYM_GYM_GUY

SeafoamGym_MapScripts:
	db 1 ; scene scripts
	scene_script GenericDummyScript

	db 0 ; callbacks

SeafoamGymBlaineScript:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
	iftrue .FightDone
	writetext HostSilenceText
	waitbutton
	closetext
	winlosstext HostSilenceText, 0
	loadtrainer GSCHGSS_CHRIS, AAEFFFF
	startbattle
	iftrue .ReturnAfterBattle
	appear SEAFOAMGYM_GYM_GUY
.ReturnAfterBattle:
	reloadmapafterbattle
	setevent EVENT_BEAT_BLAINE
	opentext
	writetext ReceivedVolcanoBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_VOLCANOBADGE
.FightDone:
	writetext HostSilenceText
	waitbutton
	closetext
	end

SeafoamGymGuyScript:
	checkevent EVENT_TALKED_TO_SEAFOAM_GYM_GUY_ONCE
	iftrue .TalkedToSeafoamGymGuyScript
	setevent EVENT_TALKED_TO_SEAFOAM_GYM_GUY_ONCE
	jumptextfaceplayer SeafoamGymGuyWinText

.TalkedToSeafoamGymGuyScript:
	jumptextfaceplayer SeafoamGymGuyWinText2

ReceivedVolcanoBadgeText:
	text "<PLAYER> received"
	line "VOLCANOBADGE."
	done

SeafoamGymGuyWinText:
	text "Yo!"

	para "… Huh? It's over"
	line "already?"

	para "Sorry, sorry!"

	para "CINNABAR GYM was"
	line "gone, so I didn't"
	para "know where to find"
	line "you."

	para "But, hey, you're"
	line "plenty strong even"
	para "without my advice."
	line "I knew you'd win!"
	done

SeafoamGymGuyWinText2:
	text "A #MON GYM can"
	line "be anywhere as"
	para "long as the GYM"
	line "LEADER is there."
	para "There's no need"
	line "for a building."
	done

SeafoamGym_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  4,  6, SEAFOAM_ISLANDS_1F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5,  2, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamGymBlaineScript, -1
	object_event  6,  5, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamGymGuyScript, EVENT_SEAFOAM_GYM_GYM_GUY
