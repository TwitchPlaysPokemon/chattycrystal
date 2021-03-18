Function4a195:
	call ScrollingMenuJoypad
	ld hl, wMenuCursorY
	ld b, [hl]
	push bc
	bit 1, a
	jr z, .asm_4a1ba
	ld hl, wMenuCursorY
	ld a, $1
	call MenuClickSound
.asm_4a1ba
	pop bc
	ret

MenuHeader_0x4a346:
	db MENU_BACKUP_TILES ; flags
	menu_coords 12, 0, SCREEN_WIDTH - 1, 6

Function4a39a:
	call Function4a485
	call MG_Mobile_Layout00
	call Function4a3aa
	jp SetPalettes

Function4a3a7:
	call Function4a485
Function4a3aa:
	hlcoord 0, 0
	lb bc, 3, 1
	xor a
	call Function4a6d8
	lb bc, 1, 1
	ld a, $1
	call Function4a6d8
	lb bc, 1, 1
	xor a
	call Function4a6d8
	lb bc, 1, 1
	ld a, $1
	call Function4a6d8
	lb bc, 4, 1
	ld a, $2
	call Function4a6d8
	lb bc, 1, 1
	ld a, $3
	call Function4a6d8
	lb bc, 1, 1
	ld a, " "
	call Function4a6d8
	hlcoord 1, 0
	ld a, $1
	lb bc, 3, 18
	call Function4a6d8
	lb bc, 1, 18
	ld a, $0
	call Function4a6d8
	lb bc, 1, 18
	ld a, $1
	call Function4a6d8
	lb bc, 1, 18
	ld a, $2
	call Function4a6d8
	lb bc, 11, 18
	ld a, " "
	call Function4a6d8
	hlcoord 19, 0
	lb bc, 3, 1
	ld a, $0
	call Function4a6d8
	lb bc, 1, 1
	ld a, $1
	call Function4a6d8
	lb bc, 1, 1
	xor a
	call Function4a6d8
	lb bc, 1, 1
	ld a, $1
	call Function4a6d8
	lb bc, 4, 1
	ld a, $2
	call Function4a6d8
	lb bc, 1, 1
	ld a, $3
	call Function4a6d8
	lb bc, 1, 1
	ld a, " "
	call Function4a6d8
	ret

Function4a449:
	ld bc, 3 * SCREEN_WIDTH
	ld a, $0
	hlcoord 0, 0
	call ByteFill
	ld bc, 2 * SCREEN_WIDTH
	ld a, $1
	call ByteFill
	ld bc, 2 * SCREEN_WIDTH
	ld a, $0
	call ByteFill
	ld bc, 2 * SCREEN_WIDTH
	ld a, $1
	call ByteFill
	ld bc, SCREEN_WIDTH
	ld a, $2
	call ByteFill
	ld bc, SCREEN_WIDTH
	ld a, $3
	call ByteFill
	ld bc, SCREEN_WIDTH
	ld a, " "
	call ByteFill
	ret

Function4a485:
	ld de, GFX_49c0c
	ld hl, vTiles2 tile $00
	lb bc, BANK(GFX_49c0c), 13
	call Get2bpp
	ret

Function4a6d8:
	push bc
	push hl
.asm_4a6da
	ld [hli], a
	dec c
	jr nz, .asm_4a6da
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, Function4a6d8
	ret
