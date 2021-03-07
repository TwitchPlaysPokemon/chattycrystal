SECTION "Low Home", ROM0

NULL::
	assert NULL == $0000
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
	assert FarCall == $0008
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
	assert Bankswitch == $0010
	; rst $10
	ldh [hROMBank], a
	ld [MBC3RomBank], a
	ret

	ds 2

ChattyOn::
	assert ChattyOn == $0018
	; rst $18
	push af
	xor a
	ld [wChattyOverride], a
	pop af
	ret

	ds 1

ChattyOff::
	assert ChattyOff == $0020
	; rst $20
	push af
	ld a, 1
	ld [wChattyOverride], a
	pop af
	ret

JumpTable::
	assert JumpTable == $0028
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

Crash::
	assert Crash == $0038
	; no rst, just a crash
	rst Crash

	ds 7

	assert @ == $0040
	; vblank interrupt
	jp VBlank

	ds 5

	assert @ == $0048
	; lcd interrupt
	jp LCD

	ds 5

	assert @ == $0050
	; timer interrupt
	jp Timer

	ds 5

	assert @ == $0058
	; serial interrupt
	jp Serial

	ds 5

	assert @ == $0060
	; joypad interrupt
	jp JoypadInt
