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

CheckTauntPreventsCurrentMove:
	ldh a, [hBattleTurn]
	and a
	ld a, [wPlayerTauntCount]
	jr z, .check
	ld a, [wEnemyTauntCount]
.check
	and a
	ret z
	ld a, BATTLE_VARS_MOVE_ANIM
	call GetBattleVar
	ld l, a
	ld a, MOVE_POWER
	call GetMoveAttribute
	sub 1
	ret
