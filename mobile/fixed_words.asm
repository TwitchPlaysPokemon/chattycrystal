Function11c075:
	push de
	ld a, c
	call Function11c254
	pop de
	ld bc, wcd36
Function11c08f:
	ld l, e
	ld h, d
	push hl
	ld a, 3
.loop
	push af
	ld a, [bc]
	ld e, a
	inc bc
	ld a, [bc]
	ld d, a
	inc bc
	push bc
	jr c, .okay
	inc bc

.okay
	ld l, c
	ld h, b
	pop bc
	pop af
	dec a
	jr nz, .loop
	pop hl
	ld de, 2 * SCREEN_WIDTH
	add hl, de
	ld a, $3
.loop2
	push af
	ld a, [bc]
	ld e, a
	inc bc
	ld a, [bc]
	ld d, a
	inc bc
	push bc
	jr c, .okay2
	inc bc

.okay2
	ld l, c
	ld h, b
	pop bc
	pop af
	dec a
	jr nz, .loop2
	ret

Function11c254:
	push af
	ld a, $4
	call GetSRAMBank
	ld hl, $a007
	pop af
	sla a
	sla a
	ld c, a
	sla a
	add c
	ld c, a
	ld b, $0
	add hl, bc
	ld de, wcd36
	ld bc, 12
	call CopyBytes
	jp CloseSRAM

BCD2String:
	inc a
	push af
	and $f
	ldh [hDividend], a
	pop af
	and $f0
	swap a
	ldh [hDividend + 1], a
	xor a
	ldh [hDividend + 2], a
	push hl
	farcall Function11a80c
	pop hl
	ld a, [wcd63]
	add "０"
	ld [hli], a
	ld a, [wcd62]
	add "０"
	ld [hli], a
	ret

AnimateEZChatCursor:
	ld hl, SPRITEANIMSTRUCT_0C
	add hl, bc
	ld a, [hl]
	ld e, a
	ld d, 0
	ld hl, .Jumptable
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.Jumptable:
	dw .zero
	dw .one
	dw .two
	dw .three
	dw .four
	dw .five
	dw .six
	dw .seven
	dw .eight
	dw .nine
	dw .ten

.zero
	ld a, [wcd20]
	sla a
	ld hl, .Coords_Zero
	ld e, $1
	jr .load

.one
	ld a, [wcd21]
	sla a
	ld hl, .Coords_One
	ld e, $2
	jr .load

.two
	ld hl, .FramesetsIDs_Two
	ld a, [wcd22]
	ld e, a
	ld d, $0
	add hl, de
	ld a, [hl]
	call ReinitSpriteAnimFrame

	ld a, [wcd22]
	sla a
	ld hl, .Coords_Two
	ld e, $4
	jr .load

.three
	ld a, SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_2
	call ReinitSpriteAnimFrame
	ld a, [wMobileCommsJumptableIndex]
	sla a
	ld hl, .Coords_Three
	ld e, $8
.load
	push de
	ld e, a
	ld d, $0
	add hl, de
	push hl
	pop de
	ld hl, SPRITEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	ld [hl], a
	pop de
	ld a, e
	call .UpdateObjectFlags
	ret

.four
	ld a, SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_2
	call ReinitSpriteAnimFrame
	ld a, [wcd2a]
	sla a
	ld hl, .Coords_Four
	ld e, $10
	jr .load

.five
	ld a, SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_2
	call ReinitSpriteAnimFrame
	ld a, [wcd2c]
	sla a
	ld hl, .Coords_Five
	ld e, $20
	jr .load

.six
	ld a, SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_5
	call ReinitSpriteAnimFrame
	; X = [wcd4a] * 8 + 24
	ld a, [wcd4a]
	sla a
	sla a
	sla a
	add $18
	ld hl, SPRITEANIMSTRUCT_XCOORD
	add hl, bc
	ld [hli], a
	; Y = 48
	ld a, $30
	ld [hl], a

	ld a, $1
	ld e, a
	call .UpdateObjectFlags
	ret

.seven
	ld a, [wEZChatCursorYCoord]
	cp $4
	jr z, .cursor0
	ld a, SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3
	jr .got_frameset

.cursor0
	ld a, SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_1
.got_frameset
	call ReinitSpriteAnimFrame
	ld a, [wEZChatCursorYCoord]
	cp $4
	jr z, .asm_11d1b1
	; X = [wEZChatCursorXCoord] * 8 + 32
	ld a, [wEZChatCursorXCoord]
	sla a
	sla a
	sla a
	add $20
	ld hl, SPRITEANIMSTRUCT_XCOORD
	add hl, bc
	ld [hli], a
	; Y = [wEZChatCursorYCoord] * 16 + 72
	ld a, [wEZChatCursorYCoord]
	sla a
	sla a
	sla a
	sla a
	add $48
	ld [hl], a
	ld a, $2
	ld e, a
	call .UpdateObjectFlags
	ret

.asm_11d1b1
	; X = [wEZChatCursorXCoord] * 40 + 24
	ld a, [wEZChatCursorXCoord]
	sla a
	sla a
	sla a
	ld e, a
	sla a
	sla a
	add e
	add $18
	ld hl, SPRITEANIMSTRUCT_XCOORD
	add hl, bc
	ld [hli], a
	; Y = 138
	ld a, $8a
	ld [hl], a
	ld a, $2
	ld e, a
	call .UpdateObjectFlags
	ret

.nine
	ld d, -13 * 8
	ld a, SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_7
	jr .eight_nine_load

.eight
	ld d, 2 * 8
	ld a, SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_6
.eight_nine_load
	push de
	call ReinitSpriteAnimFrame
	ld a, [wcd4a]
	sla a
	sla a
	sla a
	ld e, a
	sla a
	add e
	add 8 * 8
	ld hl, SPRITEANIMSTRUCT_YCOORD
	add hl, bc
	ld [hld], a
	pop af
	ld [hl], a
	ld a, $4
	ld e, a
	call .UpdateObjectFlags
	ret

.ten
	ld a, SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_1
	call ReinitSpriteAnimFrame
	ld a, $8
	ld e, a
	call .UpdateObjectFlags
	ret

.Coords_Zero:
	dbpixel  1,  3, 5, 2
	dbpixel  7,  3, 5, 2
	dbpixel 13,  3, 5, 2
	dbpixel  1,  5, 5, 2
	dbpixel  7,  5, 5, 2
	dbpixel 13,  5, 5, 2
	dbpixel  1, 17, 5, 2
	dbpixel  7, 17, 5, 2
	dbpixel 13, 17, 5, 2

.Coords_One:
	dbpixel  1,  8, 5, 2
	dbpixel  7,  8, 5, 2
	dbpixel 13,  8, 5, 2
	dbpixel  1, 10, 5, 2
	dbpixel  7, 10, 5, 2
	dbpixel 13, 10, 5, 2
	dbpixel  1, 12, 5, 2
	dbpixel  7, 12, 5, 2
	dbpixel 13, 12, 5, 2
	dbpixel  1, 14, 5, 2
	dbpixel  7, 14, 5, 2
	dbpixel 13, 14, 5, 2
	dbpixel  1, 16, 5, 2
	dbpixel  7, 16, 5, 2
	dbpixel 13, 16, 5, 2
	dbpixel  1, 18, 5, 2
	dbpixel  7, 18, 5, 2
	dbpixel 13, 18, 5, 2

.Coords_Two:
	dbpixel  2,  9       ; 00
	dbpixel  3,  9       ; 01
	dbpixel  4,  9       ; 02
	dbpixel  5,  9       ; 03
	dbpixel  6,  9       ; 04
	dbpixel  2, 11       ; 05
	dbpixel  3, 11       ; 06
	dbpixel  4, 11       ; 07
	dbpixel  5, 11       ; 08
	dbpixel  6, 11       ; 09
	dbpixel  2, 13       ; 0a
	dbpixel  3, 13       ; 0b
	dbpixel  4, 13       ; 0c
	dbpixel  5, 13       ; 0d
	dbpixel  6, 13       ; 0e
	dbpixel  2, 15       ; 0f
	dbpixel  3, 15       ; 10
	dbpixel  4, 15       ; 11
	dbpixel  5, 15       ; 12
	dbpixel  6, 15       ; 13
	dbpixel  8,  9       ; 14
	dbpixel  9,  9       ; 15
	dbpixel 10,  9       ; 16
	dbpixel 11,  9       ; 17
	dbpixel 12,  9       ; 18
	dbpixel  8, 11       ; 19
	dbpixel  9, 11       ; 1a
	dbpixel 10, 11       ; 1b
	dbpixel 11, 11       ; 1c
	dbpixel 12, 11       ; 1d
	dbpixel  8, 13       ; 1e
	dbpixel  9, 13       ; 1f
	dbpixel 10, 13       ; 20
	dbpixel 11, 13       ; 21
	dbpixel 12, 13       ; 22
	dbpixel 14,  9       ; 23
	dbpixel 16,  9       ; 24
	dbpixel 18,  9       ; 25
	dbpixel  8, 15       ; 26
	dbpixel  9, 15       ; 27
	dbpixel 10, 15       ; 28
	dbpixel 11, 15       ; 29
	dbpixel 12, 15       ; 2a
	dbpixel 14, 11       ; 2b
	dbpixel 14, 13       ; 2c
	dbpixel  1, 18, 5, 2 ; 2d
	dbpixel  7, 18, 5, 2 ; 2e
	dbpixel 13, 18, 5, 2 ; 2f

.Coords_Three:
	dbpixel  2, 10
	dbpixel  8, 10
	dbpixel 14, 10
	dbpixel  2, 12
	dbpixel  8, 12
	dbpixel 14, 12
	dbpixel  2, 14
	dbpixel  8, 14
	dbpixel 14, 14
	dbpixel  2, 16
	dbpixel  8, 16
	dbpixel 14, 16

.Coords_Four:
	dbpixel 16, 10
	dbpixel 16, 12

.Coords_Five:
	dbpixel  4, 10
	dbpixel  4, 12

.FramesetsIDs_Two:
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 00
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 01
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 02
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 03
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 04
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 05
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 06
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 07
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 08
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 09
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 0a
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 0b
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 0c
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 0d
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 0e
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 0f
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 10
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 11
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 12
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 13
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 14
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 15
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 16
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 17
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 18
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 19
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 1a
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 1b
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 1c
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 1d
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 1e
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 1f
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 20
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 21
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 22
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 23
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 24
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 25
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 26
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 27
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 28
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 29
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 2a
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_3 ; 2b
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_4 ; 2c
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_1 ; 2d
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_1 ; 2e
	db SPRITE_ANIM_FRAMESET_EZCHAT_CURSOR_1 ; 2f

.UpdateObjectFlags:
	ld hl, wcd24
	and [hl]
	jr nz, .update_y_offset
	ld a, e
	ld hl, wcd23
	and [hl]
	jr z, .reset_y_offset
	ld hl, SPRITEANIMSTRUCT_0E
	add hl, bc
	ld a, [hl]
	and a
	jr z, .flip_bit_0
	dec [hl]
	ret

.flip_bit_0
	ld a, $0
	ld [hld], a
	ld a, $1
	xor [hl]
	ld [hl], a
	and a
	jr nz, .update_y_offset
.reset_y_offset
	ld hl, SPRITEANIMSTRUCT_YOFFSET
	add hl, bc
	xor a
	ld [hl], a
	ret

.update_y_offset
	ld hl, SPRITEANIMSTRUCT_YCOORD
	add hl, bc
	ld a, $b0
	sub [hl]
	ld hl, SPRITEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ret
