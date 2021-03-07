SECTION "Low Home", ROM0

	assert @ == $0000
NULL::
	; reset code, just in case
	di
	jp Start

; Register aliases

_hl_::
	jp hl

_de_::
	push de
GenericDummyFunction::
	ret

	ds 1

FarCall::
	; rst $08
	jp FarCall_hl

xor_a::
	xor a
	ret

xor_a_dec_a::
	xor a
	dec a
	ret

Bankswitch::
	; rst $10
	ldh [hROMBank], a
	ld [MBC3RomBank], a
	ret

	ds 2

ChattyOn::
	; rst $18
	push af
	xor a
	ld [wChattyOverride], a
	pop af
	ret

	ds 1

ChattyOff::
	; rst $20
	push af
	ld a, 1
	ld [wChattyOverride], a
	pop af
	ret

JumpTable::
	; rst $28
	push de
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop de
	jp hl

	ds 5

	assert @ == $0038
; no rst, just a crash
	rst $38

	ds 7

	assert @ == $0040
	jp VBlank

	ds 5

	assert @ == $0048
	jp LCD

	ds 5

	assert @ == $0050
	jp Timer

	ds 5

	assert @ == $0058
	jp Serial

	ds 5

	assert @ == $0060
	jp JoypadInt
