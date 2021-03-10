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

TX_ENDText::
	text_end

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

BattleAnim_Dummy::
	anim_ret

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
	jr _Jumptable

ResetMapBufferEventFlags::
	xor a
	ld hl, wEventFlags
	ld [hli], a
	ret

CopyBytes::
	assert CopyBytes == $0030
	; rst $30
	; copy bc bytes from hl to de
	inc b ; we bail the moment b hits 0, so include the last run
	inc c ; same thing; include last byte
	jr CopyBytes_Loop

SetPlayerTurn::
	xor a
	ldh [hBattleTurn], a
	ret

Crash::
	assert Crash == $0038
	; no rst, just a crash
	rst Crash

UpdateTimePals::
	callfar _UpdateTimePals
	ret

	assert @ == $0040
	; vblank interrupt
	jp VBlank

SetHPPal::
; Set palette for hp bar pixel length e at hl.
	call GetHPPal
	ld [hl], d
	ret

	assert @ == $0048
	; lcd interrupt
	jr LCD

GetBattleVar::
; Preserves hl.
	push hl
	call GetBattleVarAddr
	pop hl
	ret

	assert @ == $0050
	; timer interrupt
	reti

	ds 2

VolumeOff::
	xor a
	ld [wVolume], a
	ret

	assert @ == $0058
	; serial interrupt
	jp Serial

SetEnemyTurn::
	ld a, 1
	ldh [hBattleTurn], a
	ret

	assert @ == $0060
	; joypad interrupt
	reti

_Jumptable:
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

CopyBytes_DoCopy:
	ld a, [hli]
	ld [de], a
	inc de
CopyBytes_Loop:
	dec c
	jr nz, CopyBytes_DoCopy
	dec b
	jr nz, CopyBytes_DoCopy
	ret

LCD::
	push af
	ldh a, [hLCDCPointer]
	and a
	jr z, .done

; At this point it's assumed we're in WRAM bank 5!
	push bc
	ldh a, [rLY]
	ld c, a
	ld b, HIGH(wLYOverrides)
	ld a, [bc]
	ld b, a
	ldh a, [hLCDCPointer]
	ld c, a
	ld a, b
	ldh [c], a
	pop bc

.done
	pop af
	reti

_LoadMusicByte::
; wCurMusicByte = [a:de]
	ldh [hROMBank], a
	ld [MBC3RomBank], a

	ld a, [de]
	ld [wCurMusicByte], a
	ld a, BANK(LoadMusicByte)

	ldh [hROMBank], a
	ld [MBC3RomBank], a
	ret

IsAPokemon::
; Return carry if species a is not a Pokemon.
	cp EGG
	ret z
	dec a
	cp MON_TABLE_ENTRIES
	inc a
	ccf
	ret

Cosine::
; a = d * cos(a * pi/32)
	add %010000 ; cos(x) = sin(x + pi/2)
	; fallthrough
Sine::
; a = d * sin(a * pi/32)
	ld e, a
	homecall _Sine
	ret

DelayFrames::
; Wait c frames
	call DelayFrame
	dec c
	jr nz, DelayFrames
	ret

DelayFrame::
; Wait for one frame
	ld a, 1
	ld [wVBlankOccurred], a

; Wait for the next VBlank, halting to conserve battery
.halt
	halt ; rgbasm adds a nop after this instruction by default
	ld a, [wVBlankOccurred]
	and a
	jr nz, .halt
	ret

GetWeekday::
	ld a, [wCurDay]
.mod
	sub 7
	jr nc, .mod
	add 7
	ret

PokeFluteTerminatorCharacter::
RadioTerminator::
	ld hl, TX_ENDText
	ret

ResetDamage::
	xor a
	ld [wCurDamage], a
	ld [wCurDamage + 1], a
	ret

GetHPPal::
; Get palette for hp bar pixel length e in d.
	ld d, HP_GREEN
	ld a, e
	cp (HP_BAR_LENGTH_PX * 50 / 100) ; 24
	ret nc
	inc d ; HP_YELLOW
	cp (HP_BAR_LENGTH_PX * 21 / 100) ; 10
	ret nc
	inc d ; HP_RED
	ret

RTC::
; update time and time-sensitive palettes
	ld a, [wSpriteUpdatesEnabled]
	and a
	ret z

	call UpdateTime

; obj update on?
	ld a, [wVramState]
	rra
	ret nc
TimeOfDayPals::
	callfar _TimeOfDayPals
	ret
