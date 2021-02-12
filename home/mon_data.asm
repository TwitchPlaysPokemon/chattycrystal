GetBaseData::
	push bc
	push de
	push hl
	ldh a, [hROMBank]
	push af

; Egg doesn't have BaseData
	ld a, [wCurSpecies]
	cp EGG
	jr z, .egg

; Get BaseData
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld a, BANK(BaseData)
	ld hl, BaseData
	call LoadIndirectPointer
	; jr z, <some error handler>
	rst Bankswitch
	ld de, wCurBaseData
	ld bc, BASE_DATA_SIZE
	call CopyBytes
	jr .end

.egg
; Sprite dimensions
	ld hl, wBasePicSize
	ld [hl], $55

	ld hl, wBasePadding
	ld a, LOW(UnknownEggPic)
	ld [hli], a
	ld [hl], HIGH(UnknownEggPic)
	inc hl
	ld [hli], a
	ld [hl], HIGH(UnknownEggPic)

.end
; Replace Pokedex # with species
	ld a, [wCurSpecies]
	ld [wBaseSpecies], a

	pop af
	rst Bankswitch
	pop hl
	pop de
	pop bc
	ret

GetCurNick::
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames

GetNick::
; Get nickname a from list hl.

	push hl
	push bc

	call SkipNames
	ld de, wStringBuffer1

	push de
	ld bc, MON_NAME_LENGTH
	call CopyBytes
	pop de

	callfar CorrectNickErrors

	pop bc
	pop hl
	ret

GetPartyParamLocation::
; Get the location of parameter a from wCurPartyMon in hl
	push bc
	ld hl, wPartyMons
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [wCurPartyMon]
	call GetPartyLocation
	pop bc
	ret

FarSkipEvolutions::
; Calls SkipEvolutions from another bank. It can't be a farcall because it uses hl.
	ldh a, [hROMBank]
	push af
	ld a, BANK(SkipEvolutions)
	rst Bankswitch
	call SkipEvolutions
	pop af
	rst Bankswitch
	ret

GetFormeIndex::
; Returns an index from 0 to 5 based on the DVs given at hl.
; forme = ((attack ^ speed) * 5 + (defense ^ special)) % 6
	push hl
	ld a, [hli]
	xor [hl]
	ld l, a
	and $f
	ld h, a
	xor l
	swap a
	ld l, a
	add a, a
	add a, a
	add a, l
	add a, h
	pop hl
.loop
	sub 12
	jr nc, .loop
	add a, 6
	ret c
	add a, 6
	ret
