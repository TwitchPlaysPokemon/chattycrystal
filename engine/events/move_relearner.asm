	const_def
	const MOVERELEARNER_OK
	const MOVERELEARNER_CANCEL
	const MOVERELEARNER_NO_MOVES
	const MOVERELEARNER_EGG

MoveRelearnerScript::
	; assumes the player has already been offered the relearner's services
	yesorno
	iffalse .cancel
	refreshscreen
	partyselect
	iffalse .cancel
	callasm MoveRelearnerLoad
	ifequal MOVERELEARNER_NO_MOVES, .no_moves
	ifequal MOVERELEARNER_EGG, .egg
	writetext .what_move_text
	callasm MoveRelearner
	opentext
	ifequal MOVERELEARNER_CANCEL, .cancel
	writetext .done_text
	waitbutton
	closetext
	setval TRUE
	end

.what_move_text
	text "What move should I"
	line "teach?"
	prompt

.done_text
	text "Come again if your"
	line "#MON need to"
	para "remember any other"
	line "moves!"
	done

.no_moves
	writetext .no_moves_text
	sjump .exit_failure

.no_moves_text
	text "This #MON knows"
	line "every move it can"
	para "learn! There's"
	line "nothing for me to"
	cont "do here!"
	done

.egg
	writetext .egg_text
	sjump .exit_failure

.egg_text
	text "EGGS don't learn"
	line "moves! How could I"
	para "make an EGG"
	line "remember a move?"
	done

.cancel
	writetext .cancel_text
.exit_failure
	waitbutton
	closetext
	setval FALSE
	end

.cancel_text
	text "That's too bad."
	line "Come back later if"
	para "you need my"
	line "services again."
	done

MoveRelearnerLoad:
	ld a, [wScriptVar]
	dec a
	ld [wCurPartyMon], a
	add a, LOW(wPartySpecies)
	ld l, a
	adc HIGH(wPartySpecies)
	sub l
	ld h, a
	ld a, [hl]
	cp EGG
	jr nz, .no_egg
	ld a, MOVERELEARNER_EGG
	ld [wScriptVar], a
	ret

.no_egg
	ld d, a
	ld a, [wCurPartyMon]
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1Level
	call AddNTimes
	ld e, [hl]
	ld bc, MON_MOVES - MON_LEVEL
	add hl, bc
	push de
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld d, a
	ld e, [hl]
	pop hl
	push de
	push bc
	ld a, BANK(wMoveRelearnerStaging)
	ldh [rSVBK], a
	ld a, l
	ld [wMoveRelearnerLevelStaging], a
	ld a, h
	call GetPokemonIndexFromID
	ld a, l
	ld [wMoveRelearnerSpeciesStaging], a
	ld a, h
	ld [wMoveRelearnerSpeciesStaging + 1], a
	ld hl, wMoveRelearnerTeachableMoves
	ld bc, (NUM_ATTACKS + 7) / 8
	xor a
	push bc
	call ByteFill
	pop bc
	ld hl, wMoveRelearnerRejectedMoves
	dec a
	call ByteFill
	rept 2
		pop de
		ld a, d
		call MoveRelearner_RejectMoveID
		ld a, e
		call MoveRelearner_RejectMoveID
	endr
	ld hl, wMoveRelearnerSpeciesStaging
	ld a, [hli]
	ld h, [hl]
	ld l, a
.move_list_loop
	ld b, h
	ld c, l
	push bc
	ld hl, EvosAttacksPointers
	ld a, BANK(EvosAttacksPointers)
	call LoadDoubleIndirectPointer
	call FarSkipEvolutions
	ld d, b
	call MoveRelearner_MarkToLevel
	call MoveRelearner_RejectAllMoves
	pop bc
	ld hl, PreviousEvolutionStage - 2
	add hl, bc
	add hl, bc
	ld a, BANK(PreviousEvolutionStage)
	call GetFarHalfword
	ld a, h
	or l
	jr nz, .move_list_loop

	ld hl, AlphabeticalMoveList
	ld de, wMoveRelearnerMoveListStaging
.load_moves_loop
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	or c
	jr z, .done_loading
	push bc
	call MoveRelearner_IsMoveTeachable
	pop bc
	jr z, .load_moves_loop
	ld a, c
	ld [de], a
	inc e
	ld a, b
	ld [de], a
	inc e
	jr nz, .load_moves_loop
.done_loading
	ld h, d
	ld l, e
	xor a
	sub e
	cp $100 - LOW(wMoveRelearnerMoveListStaging)
	ld d, MOVERELEARNER_NO_MOVES
	jr z, .done
	ld c, a
	xor a
	ld b, a
	ld d, a
	call ByteFill
	ld a, e
	sub LOW(wMoveRelearnerMoveListStaging)
	rrca
	ld [wMoveRelearnerMoveCountStaging], a
	ld a, BANK(wPokemonData)
	ldh [rSVBK], a
.done
	ld a, d
	ld [wScriptVar], a
	ret

MoveRelearner_MarkToLevel:
	; in: d:hl: move list
	; out: same list, pointing to the first move that goes above the level limit
	ld a, [wMoveRelearnerLevelStaging]
	ld c, a
	ld a, d
	call GetFarByte
	and a
	ret z
	dec a
	cp c
	ret nc
	inc hl
	push hl
	ld a, d
	call GetFarHalfword
	ld b, h
	ld c, l
	pop hl
	inc hl
	inc hl
	call MoveRelearner_MarkMove
	jr MoveRelearner_MarkToLevel

MoveRelearner_RejectAllMoves:
	; in: d:hl: move list
	ld a, d
	call GetFarByte
	and a
	ret z
	inc hl
	push hl
	ld a, d
	call GetFarHalfword
	ld b, h
	ld c, l
	pop hl
	inc hl
	inc hl
	call MoveRelearner_RejectIfNotMarked
	jr MoveRelearner_RejectAllMoves

MoveRelearner_IsMoveTeachable:
	push hl
	dec bc
	ld hl, wMoveRelearnerTeachableMoves
	call MoveRelearner_AdjustPointerByMoveIndex
	and [hl]
	inc h
	and [hl]
	pop hl
	ret

MoveRelearner_MarkMove:
	push hl
	dec bc
	ld hl, wMoveRelearnerTeachableMoves
	call MoveRelearner_AdjustPointerByMoveIndex
	or [hl]
	ld [hl], a
	pop hl
	ret

MoveRelearner_RejectIfNotMarked:
	push hl
	dec bc
	ld hl, wMoveRelearnerTeachableMoves
	call MoveRelearner_AdjustPointerByMoveIndex
	and [hl]
	inc h
	jr MoveRelearner_RejectMove.continue

MoveRelearner_RejectMoveID:
	and a
	ret z
	call GetMoveIndexFromID
	ld b, h
	ld c, l
MoveRelearner_RejectMove:
	push hl
	dec bc
	ld hl, wMoveRelearnerRejectedMoves
	call MoveRelearner_AdjustPointerByMoveIndex
.continue
	cpl
	and [hl]
	ld [hl], a
	pop hl
	ret

MoveRelearner_AdjustPointerByMoveIndex:
	ld a, c
	rept 3
		srl b
		rr c
	endr
	add hl, bc
	and 7
	jp ShiftLeftOne

INCLUDE "data/moves/alphabetical_order.asm"

MoveRelearner:
	call FadeToMenu
	ldh a, [hInMenu]
	push af
	ld a, 1
	ldh [hInMenu], a
	call ClearTileMap
	call ClearBGPalettes

	ldh a, [rSVBK]
	push af
	ld a, BANK(wMoveRelearnerStaging)
	ldh [rSVBK], a
	ld hl, wMoveRelearnerSpeciesStaging
	ld de, wMoveRelearnerSpecies
	ld bc, wMoveRelearnerMoveListTerminator - wMoveRelearnerSpecies
	rst CopyBytes
	pop af
	ldh [rSVBK], a
	xor a
	ld [de], a
	inc de
	ld [de], a

	call MoveRelearner_InitializeScreenLayout
	xor a
	ld [wMoveRelearnerCursor], a
	ld [wMoveRelearnerScroll], a
	call MoveRelearner_DisplayMoveData
	call WaitBGMap
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	call SetPalettes

.loop
	ld c, 3
	call DelayFrames
	call GetJoypad
	ldh a, [hJoyPressed]
	and a
	jr z, .loop
	call MoveRelearner_InterpretJoypad
	jr nc, .loop

	pop af
	ldh [hInMenu], a
	jp ExitAllMenus

MoveRelearner_InitializeScreenLayout:
	hlcoord 0, 1
	lb bc, 8, 18
	call Textbox
	hlcoord 0, 11
	lb bc, 5, 18
	call Textbox
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	call AddNTimes
	ld d, h
	ld e, l
	hlcoord 3, 0
	call PlaceString
	ld a, [wMoveRelearnerLevel]
	ld [wTempMonLevel], a
	hlcoord 14, 0
	jp PrintLevel

MoveRelearner_DisplayMoveData:
	; TODO: display move data
	ret

MoveRelearner_InterpretJoypad:
	; TODO: actually do something
	and A_BUTTON + B_BUTTON
	ret z
	scf
	ret
