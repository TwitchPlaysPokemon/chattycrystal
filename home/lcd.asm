; LCD handling

DisableLCD::
; Turn the LCD off

; Don't need to do anything if the LCD is already off
	ldh a, [rLCDC]
	bit rLCDC_ENABLE, a
	ret z

	xor a
	ldh [rIF], a
	ldh a, [rIE]
	ld b, a

; Disable VBlank
	res VBLANK, a
	ldh [rIE], a

.wait
; Wait until VBlank would normally happen
	ldh a, [rLY]
	cp LY_VBLANK + 1
	jr nz, .wait

	ldh a, [rLCDC]
	and $ff ^ (1 << rLCDC_ENABLE)
	ldh [rLCDC], a

	xor a
	ldh [rIF], a
	ld a, b
	ldh [rIE], a
	ret

EnableLCD::
	ldh a, [rLCDC]
	set rLCDC_ENABLE, a
	ldh [rLCDC], a
	ret
