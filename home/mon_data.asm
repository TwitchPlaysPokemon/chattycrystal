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
	push bc
	ld a, BANK(BaseData)
	ld hl, BaseData
	call LoadIndirectPointer
	; jr z, <some error handler>
	rst Bankswitch
	ld de, wCurBaseData
	ld bc, BASE_DATA_SIZE
	call CopyBytes
	pop bc
	call GetFormeTypeOverrides.function
	jr nc, .end
	ld a, b
	ld [wBaseType1], a
	ld a, c
	ld [wBaseType2], a
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

GetFormeTypeOverrides::
	; in: bc: species
	; out: carry: type overrides loaded; bc: type overrides (clobbered if no carry)
	push hl
	ldh a, [hROMBank]
	push af
	call .function
	pop hl
	ld a, h
	rst Bankswitch
	pop hl
	ret

.function
	ld a, BANK(_GetFormeTypeOverrides)
	rst Bankswitch
	jp _GetFormeTypeOverrides

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

GetFormeData::
	; in: bc = species index
	; if the species has formes, returns the forme base pointer in bc and carry
	; otherwise, carry is cleared and bc is unchanged
	ldh a, [hROMBank]
	push hl
	push af
	push bc
	push de
	ld a, BANK(Formes)
	rst Bankswitch
	ld de, 4
	ld hl, Formes
	call IsInHalfwordArray
	pop de
	pop bc
	jr nc, .done
	inc hl
	inc hl
	ld a, [wCurrentForme]
	ld c, a
	assert FORME_STRUCT_SIZE == $11
	add a, a
	add a, a
	add a, a
	add a, a
	add a, c
	add a, [hl]
	inc hl
	ld c, a
	adc [hl]
	sub c
	ld b, a
	scf
.done
	pop hl
	ld a, h
	rst Bankswitch
	pop hl
	ret
