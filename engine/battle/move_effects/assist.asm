BattleCommand_Assist:
; Select a random move from alive non-Eggs in the back.
	ldh a, [hBattleTurn]
	and a
	ld de, wPartySpecies
	ld a, [wCurBattleMon]
	jr z, .got_party

	; Ensure that we're dealing with a trainer's mon.
	ld a, [wBattleMode]
	dec a
	ld de, wOTPartySpecies
	ld a, [wCurOTMon]
	jr nz, .got_party

	; Wildmons get no help.
.failed
	call AnimateFailedMove
	call PrintButItFailed
	jp EndMoveEffect

.got_party
	; Iterator. Needed to ensure we aren't checking moves for ourself.
	ld b, 0
	ld c, a ; current mon out

	xor a
	ld [wAssistMoveIterator], a

	ld hl, wPartyMon1Moves - wPartySpecies ; works on OT party too
	add hl, de
.loop
	; Check if we're done.
	ld a, [de]
	inc de
	inc a
	jr z, .done

	; Don't read moves from Eggs.
	xor EGG + 1 ; + 1 from the 'inc a' above
	jr z, .next

	; Ignore ourself.
	ld a, b
	cp c
	jr z, .next

	push bc
	push hl
	ld b, NUM_MOVES
.move_loop
	; Ensure we're dealing with a valid move.
	ld a, [hli]
	push hl
	push de
	push bc
	inc a
	jr z, .nextmove
	dec a
	jr z, .nextmove

	; Check if Assist is allowed to call this move.
	ld d, a
	call GetMoveIndexFromID
	push de
	ld de, 2
	ld hl, AssistExcepts
	call IsInHalfwordArray
	pop de
	jr c, .nextmove

	; The move is valid. Perform a random check for whether we should use it.
	ld a, [wAssistMoveIterator]
	inc a
	ld [wAssistMoveIterator], a
	call BattleRandomRange
	and a
	ld a, d
	jr nz, .nextmove
	ld [wAssistMove], a
.nextmove
	pop bc
	pop de
	pop hl
	dec b
	jr nz, .move_loop

	pop hl
	pop bc
.next
	; Advance to next partymon struct
	ld a, PARTYMON_STRUCT_LENGTH
	add l
	ld l, a
	adc h
	sub l
	ld h, a

	inc b
	jr .loop

.done
	; Check if we actually got a move.
	ld a, [wAssistMoveIterator]
	and a
	jr z, .failed

	; We did. Now use it.
	call AnimateCurrentMove

	ld a, BATTLE_VARS_MOVE
	call GetBattleVarAddr
	ld a, [wAssistMove]
	ld [hl], a
	call UpdateMoveData
	jp ResetTurn
