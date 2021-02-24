BattleCommand_Memento:
	ld a, [wAttackMissed]
	and a
	jr nz, .failed

	farcall CheckSubstituteOpp
	jr nz, .failed

	farcall AnimateCurrentMove

	; Faint user.
	farcall GetMaxHP
	farcall SubtractHPFromUser

	; Don't play the move anim again.
	ld a, 1
	ld [wAlreadyPerformed], a

	; (Try to) lower opponent stats
	farcall BattleCommand_AttackDown2
	farcall BattleCommand_StatDownAnim
	farcall BattleCommand_StatDownMessage
	farcall BattleCommand_StatDownFailText
	farcall BattleCommand_ResetMiss
	farcall BattleCommand_SpecialAttackDown2
	farcall BattleCommand_StatDownAnim
	farcall BattleCommand_StatDownMessage
	farcall BattleCommand_StatDownFailText
	ret

.failed
	farcall AnimateFailedMove
	farcall TryPrintButItFailed
	farcall EndMoveEffect
	ret
