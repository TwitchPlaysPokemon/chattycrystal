CheckChattyMon:
	; in: c: party position
	; returns carry if the mon cannot be disposed of
	ld a, PARTYMON_STRUCT_LENGTH
	ld b, 0
	push bc
	ld hl, wPartyMon1Moves
	call AddNTimes
	pop bc
	ld b, NUM_MOVES
.loop
	ld a, [hli]
	and a
	ret z
	push hl
	call GetMoveIndexFromID
	assert HIGH(CHATTER) == HIGH(CHATTY_HP)
	ld a, h
	cp HIGH(CHATTER)
	ld a, l
	pop hl
	jr nz, .not
	cp LOW(CHATTER)
	scf
	ret z
	cp LOW(CHATTY_HP)
	scf
	ret z
.not
	dec b
	jr nz, .loop
	and a
	ret
