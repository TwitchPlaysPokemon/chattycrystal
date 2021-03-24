BattleCommand_ChattyAssist:
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
	ld [wAssistMove], a

	; unioned with wAssistMoveIterator
	ld [wAssistMaxDamage], a
	ld [wAssistMaxDamage + 1], a

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

	ld a, BATTLE_VARS_MOVE_EFFECT
	call GetBattleVar
	cp EFFECT_ASSIST
	push af
	call z, .Assist
	pop af
	call nz, .ChattyAssist
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
	ld a, [wAssistMove]
	and a
	jr z, .failed

	; We did. Now use it.
	push af
	call AnimateCurrentMove

	ld a, BATTLE_VARS_MOVE
	call GetBattleVarAddr
	pop af
	ld [hl], a
	call UpdateMoveData
	jp ResetTurn

.Assist:
	call GetMoveIndexFromID
	push de
	ld de, 2
	ld hl, AssistExcepts
	call IsInHalfwordArray
	pop de
	ret c

	; The move is valid. Perform a random check for whether we should use it.
	ld a, [wAssistMoveIterator]
	inc a
	ld [wAssistMoveIterator], a
	call BattleRandomRange
	and a
	ld a, d
	ret nz
	ld [wAssistMove], a
	ret

.ChattyAssist:
	call GetMoveIndexFromID
	push de
	ld de, 2
	ld hl, ChatterExcepts
	call IsInHalfwordArray
	pop de
	ret c

	; The move is valid. Perform a check for whether we should use it.
	ld a, BATTLE_VARS_MOVE
	call GetBattleVarAddr

	; Store the current move so we can revert it after.
	ld a, [hl]
	push af
	ld a, d
	ld [hl], a
	call UpdateMoveData

	; Is this a damaging move?
	ld a, BATTLE_VARS_MOVE_POWER
	call GetBattleVar
	and a
	jr z, .chattyassist_done

	; Verify type matchup.
	call BattleCheckTypeMatchup
	ld a, [wTypeMatchup]
	and a
	jr z, .chattyassist_done

	; Moves with a special damage formula.
	ld a, BATTLE_VARS_MOVE_EFFECT
	call GetBattleVar
	cp EFFECT_SUPER_FANG
	jr z, .static
	cp EFFECT_STATIC_DAMAGE
	jr z, .static
	cp EFFECT_LEVEL_DAMAGE
	jr z, .static
	cp EFFECT_REVERSAL
	jr z, .static
	cp EFFECT_ENDEAVOR
	jr z, .static

	; The rest. Note that other dynamic moves (besides the .static ones above)
	; are unhandled.
	call AttackDamage
	call BattleCommand_DamageCalc
	ld a, EFFECT_REVERSAL
	and a
.static
	push af
	call z, BattleCommand_ConstantDamage
	pop af

	; Reversal goes through the stab check as well.
	cp EFFECT_REVERSAL
	call z, BattleCommand_Stab

	ld de, wAssistMaxDamage + 1
	ld hl, wCurDamage + 1
	ld a, [de]
	cp [hl]
	dec de
	dec hl
	ld a, [de]
	sbc [hl]
	jr nc, .chattyassist_done

	; Update current most damaging move.
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	ld a, BATTLE_VARS_MOVE_ANIM
	call GetBattleVar
	ld [wAssistMove], a
.chattyassist_done
	ld a, BATTLE_VARS_MOVE
	call GetBattleVarAddr
	pop af
	ld [hl], a
	jp UpdateMoveData
