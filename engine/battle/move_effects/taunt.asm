BattleCommand_Taunt:
	ldh a, [hBattleTurn]
	and a
	ld hl, wEnemyTauntCount
	jr z, .got_opponent_taunt
	ld hl, wPlayerTauntCount
.got_opponent_taunt
	call CheckOpponentWentFirst
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

	call AnimateCurrentMove
	ld hl, WasTauntedText
	jp StdBattleTextbox

.failed
	call AnimateFailedMove
	call PrintButItFailed
	jp EndMoveEffect
