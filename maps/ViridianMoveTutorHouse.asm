ViridianMoveTutorHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

ViridianMoveTutor:
	faceplayer
	opentext
	writetext .teach_move_text
	yesorno
	iffalse .refused
	writetext .what_move_text
	movetutor OVERHEAT, GRASS_KNOT, SCALD
	iftrue .refused
	writetext .finished_text
	waitbutton
	closetext
	end

.teach_move_text
	text "Welcome! I know"
	line "all about #MON"
	cont "moves!"

	para "I know! I'll teach"
	line "your #MON an"
	cont "amazing new move!"

	para "All for free! What"
	line "do you say?"
	done

.what_move_text
	text "What move should I"
	line "teach?"
	done

.finished_text
	text "Amazing! Come back"
	line "whenever you want!"
	done

.refused
	writetext .refused_text
	waitbutton
	closetext
	end

.refused_text
	text "They are great"
	line "moves, I swear!"
	done

ViridianMoveTutorHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, VIRIDIAN_CITY, 6
	warp_event  3,  7, VIRIDIAN_CITY, 6

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianMoveTutor, -1
