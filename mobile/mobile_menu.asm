Function4a195:
	call ScrollingMenuJoypad
	ld hl, wMenuCursorY
	ld b, [hl]
	push bc
	bit 0, a
	jr nz, .asm_4a1a7
	bit 1, a
	jr nz, .asm_4a1ba
	jr .asm_4a1bc
.asm_4a1a7
	ld hl, wMenuCursorY
	ld a, [hl]
	cp $1
	jp z, Function4a20e
	ld a, $1
	call MenuClickSound
.asm_4a1ba
	pop bc
	ret

.asm_4a1bc
	; unreachable
	ld hl, wMenuCursorY
	ld a, [hl]
	dec a
	call GetNthString
	ld d, h
	ld e, l
	hlcoord 1, 13
	ld b, $4
	ld c, $12
	call ClearBox
	hlcoord 1, 14
	call PlaceString
	jr .asm_4a1db
.asm_4a1db
	call Function4a373
	pop bc
	ld hl, wMenuCursorY
	ld [hl], b
	lb bc, 6, 1
	hlcoord 2, 3
	call ClearBox
	jp Function4a195

Function4a20e:
	; unreachable

Function4a28a:
	; unreferenced
	hlcoord 2, 3
	lb bc, 6, 1
	ld a, " "
	call Function4a6d8
	call PlaceHollowCursor
	call WaitBGMap
	call LoadStandardMenuHeader
	ld a, $5
	call GetSRAMBank
	ld a, [$aa4b]
	call CloseSRAM
	and a
	farcall Function11765d
	call ClearBGPalettes
	call ExitMenu
	call LoadFontsExtra
	scf
	ret

.DeleteLoginPassword:
	call PlaceHollowCursor
	ld hl, UnknownText_0x4a358
	call PrintText
	hlcoord 14, 7
	ld b, 3
	ld c, 4
	call Textbox
	farcall Mobile_OpenAndCloseMenu_HDMATransferTileMapAndAttrMap
	; unreachable
	call LoadMenuHeader
	call VerticalMenu
	bit B_BUTTON_F, a
	jr nz, .dont_delete_password
	ld a, [wMenuCursorY]
	cp $2
	jr z, .dont_delete_password
	ld a, BANK(sMobileLoginPassword)
	call GetSRAMBank
	ld hl, sMobileLoginPassword
	xor a
	ld bc, MOBILE_LOGIN_PASSWORD_LENGTH
	call ByteFill
	call CloseSRAM
	ld hl, UnknownText_0x4a35d
	call PrintText
	call JoyWaitAorB
.dont_delete_password
	call ExitMenu
.quit
	call ExitMenu
	farcall Mobile_OpenAndCloseMenu_HDMATransferTileMapAndAttrMap
	xor a
	ret

MenuHeader_0x4a346:
	db MENU_BACKUP_TILES ; flags
	menu_coords 12, 0, SCREEN_WIDTH - 1, 6

UnknownText_0x4a358:
	; Delete the saved LOG-IN PASSWORD?
	text_far UnknownText_0x1c5196
	text_end

UnknownText_0x4a35d:
	; Deleted the LOG-IN PASSWORD.
	text_far UnknownText_0x1c51b9
	text_end

Function4a373:
	ld hl, w2DMenuCursorInitY
	ld a, $4
	ld [hli], a
	ld a, $2
	ld [hli], a
	ld a, $3
	ld [hli], a
	ld a, $1
	ld [hli], a
	ld [hl], $0
	set 5, [hl]
	inc hl
	xor a
	ld [hli], a
	ld a, $20
	ld [hli], a
	ld a, $1
	add $40
	add $80
	add $2
	ld [hli], a
	ld a, $1
	ld [hli], a
	ld [hli], a
	ret

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
