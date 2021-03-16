	const_def
	const MOVERELEARNER_OK
	const MOVERELEARNER_CANCEL
	const MOVERELEARNER_NO_MOVES
	const MOVERELEARNER_EGG

MoveRelearnerLoad:
	ld a, [wScriptVar]
	dec a
	ld [wCurPartyMon], a
	add a, LOW(wPartyMons)
	ld l, a
	adc HIGH(wPartyMons)
	sub l
	ld h, a
	ld a, [hl]
	cp EGG
	jr nz, .no_egg
	ld a, MOVERELEARNER_EGG
	ld [wScriptVar], a
	ret

.no_egg
	ld [wCurPartySpecies], a
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
	ld c, 2
.reject_own_moves_loop
	pop de
	ld a, d
	call MoveRelearner_RejectMoveID
	ld a, e
	call MoveRelearner_RejectMoveID
	dec c
	jr nz, .reject_own_moves_loop
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
	call MoveRelearner_IsMoveTeachable
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
