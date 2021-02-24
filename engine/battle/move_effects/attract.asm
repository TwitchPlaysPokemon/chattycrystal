BattleCommand_Attract:
; attract
	ld a, [wAttackMissed]
	and a
	jr nz, .failed
	call CheckOppositeGender
	jr c, .failed
	call CheckHiddenOpponent
	jr nz, .failed
	ld a, BATTLE_VARS_SUBSTATUS1_OPP
	call GetBattleVarAddr
	bit SUBSTATUS_IN_LOVE, [hl]
	jr nz, .failed

	set SUBSTATUS_IN_LOVE, [hl]
	call AnimateCurrentMove

; 'fell in love!'
	ld hl, FellInLoveText
	jp StdBattleTextbox

.failed
	jp FailMove

CheckOppositeGender:
	ld a, MON_SPECIES
	call BattlePartyAttr
	ld a, [hl]
	ld [wCurPartySpecies], a

	ld a, [wCurBattleMon]
	ld [wCurPartyMon], a
	xor a
	ld [wMonType], a

	farcall GetGender
	ret c

	ld b, 0
	jr z, .got_gender
	dec b

.got_gender
	push bc
	ld a, [wTempEnemyMonSpecies]
	ld [wCurPartySpecies], a
	ld hl, wEnemyMonDVs
	ld a, [wEnemySubStatus5]
	bit SUBSTATUS_TRANSFORMED, a
	jr z, .not_transformed
	ld hl, wEnemyBackupDVs
.not_transformed
	ld a, [hli]
	ld [wTempMonDVs], a
	ld a, [hl]
	ld [wTempMonDVs + 1], a
	ld a, 3
	ld [wMonType], a
	farcall GetGender
	pop bc
	ret c

	ld a, 0
	jr z, .got_enemy_gender
	dec a

.got_enemy_gender
	ld hl, wChattyChatterMove
	bit 6, [hl]
	jr nz, .ignore_genders
	xor b
	ld b, a ; 0 or $FF
	ld a, [hl]
	add a, a
	sbc a ; $FF if the flag is set
	xor b ; will invert the result if a = $FF
	ret nz
	scf
	ret

.ignore_genders
	; works on both male and female mons, but at half accuracy
	call BattleRandom
	add a, a
	ret
