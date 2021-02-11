Timer::
	push af
	push bc
	push de
	push hl

	ldh a, [hMobile]
	and a
	jr z, .pop_ret

	xor a
	ldh [rTAC], a

; Turn off timer interrupt
	ldh a, [rIF]
	and 1 << VBLANK | 1 << LCD_STAT | 1 << SERIAL | 1 << JOYPAD
	ldh [rIF], a

	ld a, [$c86a]
	or a
	jr z, .pop_ret

	ld a, [$c822]
	bit 1, a
	jr nz, .skip_Timer

	ldh a, [rSC]
	and 1 << rSC_ON
	jr nz, .skip_Timer

	ldh a, [hROMBank]
	push af
	ld a, BANK(_Timer)
	ld [$c981], a
	rst Bankswitch

	call _Timer

	pop bc
	ld a, b
	ld [$c981], a
	rst Bankswitch

.skip_Timer
	ldh a, [rTMA]
	ldh [rTIMA], a

	ld a, 1 << rTAC_ON | rTAC_65536_HZ
	ldh [rTAC], a

.pop_ret
	pop hl
	pop de
	pop bc
	pop af
	reti
