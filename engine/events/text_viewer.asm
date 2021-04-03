TEXTFILEVIEWER_SCREEN_SIZE EQU 15
TEXTFILEVIEWER_TOP_MARGIN EQU 0

TextFileViewer::
	call RefreshScreen
	call FadeToMenu
	ldh a, [hInMenu]
	push af
	ld a, 1
	ldh [hInMenu], a
	call ClearTileMap
	call ClearBGPalettes

	call LoadStandardFont
	ld de, FontExtra + $1f tiles ; many choices for this one
	ld hl, vTiles2 tile " "
	lb bc, BANK(FontExtra), 1
	call Get2bpp_2
	ld de, TextViewerFontGFX
	ld hl, vTiles2 tile $70
	lb bc, BANK(TextViewerFontGFX), 5
	call Get1bpp_2
	ld a, [wScriptVar]
	add a, a
	add a, LOW(TextFileIndex - 2)
	ld l, a
	adc HIGH(TextFileIndex - 2)
	sub l
	ld h, a
	ld a, [hli]
	ld e, a
	ld d, [hl]
	ld hl, wTextViewerFileName
	call CopyName2
	ld hl, wTextViewerCurrentLine
	xor a
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, e
	ld [hli], a
	ld [hl], d
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	call SetPalettes

.loop
	call TextFileViewer_LoadFileData
.input_loop
	call DelayFrame
	call GetJoypad
	ldh a, [hJoyPressed]
	and D_UP | D_DOWN | D_LEFT | D_RIGHT | B_BUTTON
	jr z, .input_loop
	call TextFileViewer_InterpretJoypad
	jr nc, .loop

	pop af
	ldh [hInMenu], a
	jp ExitAllMenus

TextFileViewer_LoadFileData:
	xor a
	ldh [hBGMapMode], a

	hlcoord 0, 0
	lb bc, SCREEN_HEIGHT - 3, SCREEN_WIDTH - 2
	call Textbox
	hlcoord 0, 17
	lb bc, 1, SCREEN_WIDTH
	call ClearBox
	ld de, wTextViewerFileName
	hlcoord 1, 17
	call PlaceString
	ld hl, wTextViewerCurrentLine
	ld a, [hli]
	ld c, a
	and a
	jr z, .top_line
	ld a, $70 ; arrow up
	ldcoord_a 18, 0
.top_line
	ld a, [hl]
	sub c
	cp TEXTFILEVIEWER_SCREEN_SIZE + 1
	jr c, .bottom
	ld a, [hl]
	sub TEXTFILEVIEWER_SCREEN_SIZE
	ldh [hDivisor], a
	ld a, 100
	ld hl, 0
	ld b, h
	call AddNTimes
	ld a, h
	ldh [hDividend], a
	ld a, l
	ldh [hDividend + 1], a
	ld b, 2
	call Divide
	hlcoord 18, 16
	ld [hl], $ee ; arrow down
	hlcoord 18, 17
	ld a, $71 ; %
	ld [hld], a
	ldh a, [hQuotient + 3]
	ld c, 10
	call SimpleDivide
	add a, "0"
	ld [hld], a
	ld a, b
	and a
	jr z, .border_done
	add a, "0"
	ld [hl], a
	jr .border_done

.bottom
	ld de, .end_text
	hlcoord 16, 17
	call PlaceString
.border_done

	ld hl, wTextViewerCurrentLine
	ld a, [hli]
	ld c, a
	ld a, [hli]
	sub c
	cp TEXTFILEVIEWER_SCREEN_SIZE
	jr c, .short_screen
	ld a, TEXTFILEVIEWER_SCREEN_SIZE
.short_screen
	ld [wTempLoopCounter], a
	ld b, 0
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, bc
	add hl, bc
	bccoord 1, TEXTFILEVIEWER_TOP_MARGIN + 1
.loop
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	push hl
	push bc
	ld h, b
	ld l, c
	call PlaceString
	pop bc
	ld hl, SCREEN_WIDTH
	add hl, bc
	ld b, h
	ld c, l
	ld hl, wTempLoopCounter
	dec [hl]
	pop hl
	jr nz, .loop

	ld a, 1
	ldh [hBGMapMode], a
	ld c, 2
	jp DelayFrames

.end_text
	db "END@"

TextFileViewer_InterpretJoypad:
	ld hl, wTextViewerCurrentLine
	bit D_RIGHT_F, a
	jr nz, .right
	bit D_LEFT_F, a
	jr nz, .left
	bit D_DOWN_F, a
	jr nz, .down
	bit D_UP_F, a
	jr nz, .up
; B
	call PlayClickSFX
	scf
	ret

.up
	ld a, -1
.move_up
	add a, [hl]
	ccf
.set_line
	ld [hl], a
	ret nc
	xor a ; clear carry as well
	ld [hl], a
	ret

.left
	ld a, -TEXTFILEVIEWER_SCREEN_SIZE
	jr .move_up

.down
	ld a, 1
.move_down
	add a, [hl]
	jr c, .over
	ld [hli], a
	ld c, a
	ld a, [hld]
	sub TEXTFILEVIEWER_SCREEN_SIZE
	jr c, .over
	cp c
	ret nc
.over
	inc hl
	ld a, [hld]
	sub TEXTFILEVIEWER_SCREEN_SIZE
	jr .set_line

.right
	ld a, TEXTFILEVIEWER_SCREEN_SIZE
	jr .move_down
