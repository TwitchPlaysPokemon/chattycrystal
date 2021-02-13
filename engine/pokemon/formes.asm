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
