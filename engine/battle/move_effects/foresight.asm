BattleCommand_Foresight:
; foresight

	ld a, [wAttackMissed]
	and a
	jr nz, .failed

	ld a, BATTLE_VARS_SUBSTATUS1_OPP
	call GetBattleVarAddr
	bit SUBSTATUS_IDENTIFIED, [hl]
.failed
	jp nz, FailMove

	set SUBSTATUS_IDENTIFIED, [hl]
	farcall AnimateCurrentMove
	ld hl, IdentifiedText
	jp StdBattleTextbox
