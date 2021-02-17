BattleCommand_BellyDrum:
; bellydrum

	callfar GetHalfMaxHP
	callfar CheckUserHasEnoughHP
	jr nc, .failed

	ld a, [wAttackMissed]
	and a
	jr nz, .failed

	push bc
	call AnimateCurrentMove
	pop bc
	callfar SubtractHPFromUser
	call UpdateUserInParty
	ld a, 6

.max_attack_loop
	push af
	call BattleCommand_AttackUp2
	pop af
	dec a
	jr nz, .max_attack_loop

	ld hl, BellyDrumText
	jp StdBattleTextbox

.failed
	call AnimateFailedMove
	jp PrintButItFailed
