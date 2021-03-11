FadeInRedMode::
	; fades from black
	ldh a, [rSVBK]
	push af
	ld a, BANK(wGBCPalettes)
	ldh [rSVBK], a
	ld hl, RedMode_Palettes
	lb bc, 4, 2
.loop
	push bc
	call DelayFrames
	call RedMode_ApplyPalette
	ld bc, 1 palettes
	add hl, bc
	ld a, 1
	ldh [hCGBPalUpdate], a
	pop bc
	dec b
	jr nz, .loop
	pop af
	ldh [rSVBK], a
	ld a, 2
	ldh [hCGB], a
	jp DelayFrame

FadeOutRedMode::
	; fades to black
	ldh a, [rSVBK]
	push af
	ld a, BANK(wGBCPalettes)
	ldh [rSVBK], a
	ld hl, RedMode_Palettes + 2 palettes
	lb bc, 3, 2
.loop
	push bc
	call DelayFrames
	call RedMode_ApplyPalette
	ld bc, -1 palettes
	add hl, bc
	ld a, 1
	ldh [hCGBPalUpdate], a
	pop bc
	dec b
	jr nz, .loop
	call DelayFrames
	ld hl, wBGPals2
	ld bc, 16 palettes
	xor a
	call ByteFill
	pop af
	ldh [rSVBK], a
	ld a, 1
	ldh [hCGB], a
	ldh [hCGBPalUpdate], a
	jp DelayFrame

RedMode_ApplyPalette:
	push hl
	ld de, wBGPals2
	push de
	ld bc, 1 palettes
	rst CopyBytes
	pop hl
	; abuse the way CopyBytes works with overlapping ranges
	ld bc, 15 palettes
	rst CopyBytes
	pop hl
	ret

RedMode_Palettes:
	; fade step 1
	RGB  0,  0,  0
	RGB  3,  0,  0
	RGB  5,  0,  0
	RGB  8,  0,  0

	; fade step 2
	RGB  0,  0,  0
	RGB  8,  0,  0
	RGB 11,  0,  0
	RGB 16,  0,  0

	; fade step 3
	RGB  0,  0,  0
	RGB  8,  0,  0
	RGB 16,  0,  0
	RGB 23,  0,  0

	; final palette
	RGB  0,  0,  0
	RGB 10,  0,  0
	RGB 21,  0,  0
	RGB 31,  0,  0
