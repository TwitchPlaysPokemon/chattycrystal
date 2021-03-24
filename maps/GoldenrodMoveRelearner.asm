	object_const_def ; object_event constants
	const GOLDENRODMOVERELEARNER_RELEARNER

GoldenrodMoveRelearner_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

GoldenrodMoveRelearner_RelearnerScript:
	; TODO: fix up
	jumptextfaceplayer .test

.test
	text "Testing: OK!"
	done

GoldenrodMoveRelearnerBookshelf1:
	jumpstd magazinebookshelf

GoldenrodMoveRelearnerBookshelf2:
	jumpstd difficultbookshelf

GoldenrodMoveRelearnerRadio:
	jumpstd radio1

GoldenrodMoveRelearner_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, GOLDENROD_CITY, 16
	warp_event  3,  7, GOLDENROD_CITY, 16

	db 0 ; coord events

	db 3 ; bg events
	bg_event  0,  1, BGEVENT_READ, GoldenrodMoveRelearnerBookshelf2
	bg_event  1,  1, BGEVENT_READ, GoldenrodMoveRelearnerBookshelf1
	bg_event  7,  1, BGEVENT_READ, GoldenrodMoveRelearnerRadio

	db 1 ; object events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodMoveRelearner_RelearnerScript, -1
