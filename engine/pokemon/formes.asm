GetCurrentForme:
; Return Unown letter in wUnownLetter and forme in wCurrentForme based on DVs at hl

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
	sub 6
	jr nc, .loop
	add a, 6
	ld [wCurrentForme], a

; Unown letter = discriminant / 10, where the discriminant is the concatenation of the two middle bits of each DV
; +1 because the letter is stored 1-based

	; attack
	ld a, [hl]
	and %01100000
	add a, a
	ld b, a
	; defense
	ld a, [hli]
	and %00000110
	add a, a
	add a, a
	add a, a
	or b
	ld b, a
	; speed
	ld a, [hl]
	and %01100000
	swap a
	add a, a
	or b
	ld b, a
	; special
	ld a, [hld]
	rrca
	and %00000011
	or b

; Divide by 10 and increment
	ld b, 0
.divide
	inc b
	sub 10
	jr nc, .divide

	ld a, b
	ld [wUnownLetter], a
	ret

_GetFormeTypeOverrides::
	; in: bc: species; may clobber a, hl
	; out: carry: type overrides loaded; bc: type overrides (clobbered if no carry)
	push de
	ld hl, FormeTypeOverrides
	ld de, 14
	call IsInHalfwordArray
	pop de
	ret nc
	ld a, [wCurrentForme]
	inc a
	add a, a
	add a, l
	ld l, a
	adc h
	sub l
	ld h, a
	ld a, [hli]
	ld b, a
	ld c, [hl]
	scf
	ret
