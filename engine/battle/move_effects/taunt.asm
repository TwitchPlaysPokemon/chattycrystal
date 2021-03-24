BattleCommand_Taunt:
	ldh a, [hBattleTurn]
	and a
	ld hl, wEnemyTauntCount
	jr z, .got_opponent_taunt
	ld hl, wPlayerTauntCount
.got_opponent_taunt
	push hl
	farcall CheckOpponentWentFirst
	pop hl
	ld a, 4
	jr z, .got_duration
	inc a
.got_duration
	; Check if the opponent is already Taunted.
	dec [hl]
	inc [hl]
	jr nz, .failed

	; Otherwise, set Taunt.
	ld [hl], a

	farcall AnimateCurrentMove
	ld hl, WasTauntedText
	jp StdBattleTextbox

.failed
	farcall AnimateFailedMove
	farcall PrintButItFailed
	farcall EndMoveEffect
	ret
