KnowsMove:
	ld a, MON_MOVES
	call GetPartyParamLocation
	ld a, [wPutativeTMHMMove]
	ld b, a
	ld c, NUM_MOVES
.loop
	ld a, [hli]
	cp b
	jr z, .knows_move
	dec c
	jr nz, .loop
	and a
	ret

.knows_move
	ld hl, .Text_knows
	call PrintText
	scf
	ret

.Text_knows:
	; knows @ .
	text_far UnknownText_0x1c5ea8
	text_end

ReplaceMove::
	; replaces move de with move bc for the last Pokémon in the party
	; returns carry if the move is not found
	push bc
	ld a, [wPartyCount]
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1Moves - PARTYMON_STRUCT_LENGTH
	call AddNTimes
	ld c, NUM_MOVES
.check
	ld a, [hli]
	push hl
	call GetMoveIndexFromID
	ld a, l
	cp e
	ld a, h
	pop hl
	jr nz, .not
	cp d
	jr z, .found
.not
	dec c
	jr nz, .check
	pop bc
	scf
	ret

.found
	dec hl
	ld d, h
	ld e, l
	pop bc
	ld h, b
	ld l, c
	call GetMoveIDFromIndex
	ld [de], a
	; fix the PP
	ld a, BANK(Moves)
	ld hl, Moves
	call LoadIndirectPointer
	jr z, .ok
	ld bc, MOVE_PP - 1
	add hl, bc
	ld a, [hl]
.ok
	ld hl, MON_PP - MON_MOVES
	assert MON_PP > MON_MOVES ; so the addition already clears carry
	add hl, de
	ld [hl], a
	ret
