BackupHeldItems::
	ld hl, wPartyMon1Item
	ld de, wBackupHeldItems
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, PARTY_LENGTH
.loop
	ld [wTempLoopCounter], a
	ld a, [hl]
	ld [de], a
	add hl, bc
	inc de
	ld a, [wTempLoopCounter]
	dec a
	jr nz, .loop
	ret

RestoreHeldItems::
	ld hl, wPartyMon1Item
	ld de, wBackupHeldItems
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, PARTY_LENGTH
.loop
	ld [wTempLoopCounter], a
	ld a, [de]
	ld [hl], a
	add hl, bc
	inc de
	ld a, [wTempLoopCounter]
	dec a
	jr nz, .loop
	ret
