CheckSpecialMon::
	; in: bc: species, de: move, [wCurPartyMon]: party index
	; out: carry: check failed, [wScriptVar]: result if error (SPECIALDEPOSIT_*)
	ld a, [wCurPartyMon]
	add a, LOW(wPartySpecies)
	ld l, a
	adc HIGH(wPartySpecies)
	sub l
	ld h, a
	ld a, [hl]
	cp EGG
	ld a, SPECIALDEPOSIT_EGG
	jr z, .error
	push bc
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1
	ld a, [wCurPartyMon]
	call AddNTimes
	pop bc
	assert MON_SPECIES == 0
	assert MON_MOVES == 2
	ld a, [hli]
	push hl
	call GetPokemonIndexFromID
	ld a, l
	cp c
	ld a, h
	pop hl
	jr nz, .wrong_mon
	cp b
.wrong_mon
	ld a, SPECIALDEPOSIT_WRONG_SPECIES
	jr nz, .error
	inc hl
	push hl
	ld h, d
	ld l, e
	call GetMoveIDFromIndex
	pop hl
	ld b, a
	ld c, NUM_MOVES
.move_loop
	ld a, [hli]
	cp b
	ret z ; no carry
	and a
	jr z, .wrong_move
	dec c
	jr nz, .move_loop
.wrong_move
	ld a, SPECIALDEPOSIT_WRONG_MOVES
.error
	ld [wScriptVar], a
	scf
	ret

TryDepositSpecialMon::
	; in: [wCurPartyMon]: party index, de: destination
	; out: [wScriptVar]: result (SPECIALDEPOSIT_*)
	push de
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	ld d, [hl]
	farcall ItemIsMail
	ld a, SPECIALDEPOSIT_HOLDING_MAIL
	jr c, .done
	ld a, [wPartyCount]
	cp 2
	jr c, .last_mon
	ld b, a
	ld c, 0
	ld de, wPartySpecies
	ld hl, wPartyMon1HP
.loop
	ld a, [wCurPartyMon]
	cp c
	jr z, .skip
	ld a, [de]
	inc de
	cp EGG
	jr z, .skip
	call IsAPokemon
	jr c, .skip
	inc hl
	ld a, [hld]
	or [hl]
	jr nz, .go
.skip
	push bc
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	inc c
	ld a, c
	cp b
	jr c, .loop
.last_mon
	ld a, SPECIALDEPOSIT_LAST_MON
.done
	pop de
	ld [wScriptVar], a
	ret

.go
	ld a, [wCurPartyMon]
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1
	call AddNTimes
	ld a, BANK(wPartyMon1)
	pop de
	push de
	lb bc, BANK(wSavedChatot), BOXMON_STRUCT_LENGTH
	call DoubleFarCopyWRAM
	; de points at the end of the copy
	ld hl, wPartyMonNicknames
	ld a, [wCurPartyMon]
	ld bc, MON_NAME_LENGTH
	call AddNTimes
	ld a, BANK(wPartyMonNicknames)
	lb bc, BANK(wSavedChatot), MON_NAME_LENGTH
	call DoubleFarCopyWRAM
	pop bc
	ldh a, [rSVBK]
	ld d, a
	ld a, BANK(wSavedChatot)
	ldh [rSVBK], a
	farcall ConvertPartyStructToBoxStruct
	ld a, d
	ldh [rSVBK], a
	xor a
	ld [wScriptVar], a
	ld [wPokemonWithdrawDepositParameter], a
	farcall RemoveMonFromPartyOrBox
	ret

TryWithdrawSpecialMon::
	; in: de: mon data, bc: OT name, [wCurPartySpecies]: intended species
	; out: carry if party full or if no mon is deposited
	ldh a, [rSVBK]
	ld h, a
	ld a, BANK(wSavedChatot)
	ldh [rSVBK], a
	ld a, [de]
	ld l, a
	ld a, h
	ldh [rSVBK], a
	ld a, l
	sub 1
	ret c
	ld a, [wPartyCount]
	cp PARTY_LENGTH
	ccf
	ret c
	push bc
	push de
	ld c, a
	add a, LOW(wPartySpecies)
	ld l, a
	adc HIGH(wPartySpecies)
	sub l
	ld h, a
	ld a, [wCurPartySpecies]
	ld [hli], a
	ld [hl], -1
	ld b, 0
	ld a, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMons
	call AddNTimes
	ld d, h
	ld e, l
	pop hl
	push de
	xor a
	ld [de], a
	lb bc, BANK(wPartyMons), BOXMON_STRUCT_LENGTH
	ld a, BANK(wSavedChatot)
	call DoubleFarCopyWRAM
	pop bc
	push hl
	ld a, [wCurPartySpecies]
	ld [bc], a
	farcall ConvertBoxStructToPartyStruct
	ld a, [wPartyCount]
	ld bc, MON_NAME_LENGTH
	ld hl, wPartyMonNicknames
	call AddNTimes
	ld d, h
	ld e, l
	pop hl
	lb bc, BANK(wPartyMonNicknames), MON_NAME_LENGTH
	ld a, BANK(wSavedChatot)
	call DoubleFarCopyWRAM
	ld hl, wPartyCount
	ld a, [hl]
	inc [hl]
	ld bc, NAME_LENGTH
	ld hl, wPartyMonOT
	call AddNTimes
	ld d, h
	ld e, l
	pop hl
	rst CopyBytes
	and a
	ret
