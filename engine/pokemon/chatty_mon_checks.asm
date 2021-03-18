CheckChattyMonInParty::
	; checks if any mon in the party is undisposable
	; if true, it loads the nickname in wStringBuffer2 and sets the script variable to true
	; otherwise, script variable is set to false
	xor a
	ld [wScriptVar], a
	ld a, [wPartyCount]
	and a
	ret z
	ld e, a
	ld c, 0
.loop
	call CheckChattyMon
	jr c, .found
	inc c
	dec e
	jr nz, .loop
	ret

.found
	ld b, 0
	ld a, MON_NAME_LENGTH
	ld hl, wPartyMonNicknames
	call AddNTimes
	ld a, TRUE
	ld [wScriptVar], a
	ld d, h
	ld e, l
	ld hl, wStringBuffer2
	jp CopyName2

CheckChattyMon:
	; in: c: party position
	; returns carry if the mon cannot be disposed of
	ld a, PARTYMON_STRUCT_LENGTH
	ld b, 0
	ld hl, wPartyMon1Moves
	call AddNTimes
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
