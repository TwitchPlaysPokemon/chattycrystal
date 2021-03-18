SECTION "Mobile 5C", ROMX

Function170000:
	ld a, [$c62b]
	ld [wPlayerTrademonSpecies], a
	ld hl, $c62e
	ld de, wPlayerTrademonSenderName
	ld bc, $0005
	rst CopyBytes
	ld a, $50
	ld [de], a
	ld hl, $c663
	ld de, wPlayerTrademonOTName
	ld bc, $0005
	rst CopyBytes
	ld a, $50
	ld [de], a
	ld hl, $c648
	ld a, [hli]
	ld [wPlayerTrademonDVs], a
	ld a, [hl]
	ld [wPlayerTrademonDVs + 1], a
	ld hl, $c639
	ld a, [hli]
	ld [wPlayerTrademonID], a
	ld a, [hl]
	ld [wPlayerTrademonID + 1], a
	ld bc, $c633
	farcall GetCaughtGender
	ld a, c
	ld [wPlayerTrademonCaughtData], a
	ld a, [wcd81]
	ld [wc74e], a
	ld hl, $c608
	ld de, $d800
	ld bc, $008f
	rst CopyBytes
	ret

Function17005a:
	ld a, $5
	call GetSRAMBank
	ld a, [$a824]
	ld [wOTTrademonSpecies], a
	ld hl, $a827
	ld de, wOTTrademonSenderName
	ld bc, NAME_LENGTH_JAPANESE - 1
	rst CopyBytes
	ld a, "@"
	ld [de], a
	ld hl, $a85c
	ld de, wOTTrademonOTName
	ld bc, NAME_LENGTH_JAPANESE - 1
	rst CopyBytes
	ld a, "@"
	ld [de], a
	ld hl, $a841
	ld a, [hli]
	ld [wOTTrademonDVs], a
	ld a, [hl]
	ld [wOTTrademonDVs + 1], a
	ld hl, $a832
	ld a, [hli]
	ld [wOTTrademonID], a
	ld a, [hl]
	ld [wOTTrademonID + 1], a
	ld bc, $a82c
	farcall GetCaughtGender
	ld a, c
	ld [wOTTrademonCaughtData], a
	ld a, [wcd81]
	ld [wc74e], a
	call CloseSRAM
	ret

INCLUDE "engine/events/battle_tower/battle_tower.asm"

CheckBTMonMovesForErrors:
	ld c, BATTLETOWER_PARTY_LENGTH
	ld hl, wBT_OTTempMon1Moves
.loop
	push hl
	ld a, [hl]
	cp MOVE_TABLE_ENTRIES + 1
	jr c, .okay
	push hl
	ld hl, POUND
	call GetMoveIDFromIndex
	pop hl
	ld [hl], a

.okay
	inc hl
	ld b, NUM_MOVES - 1
.loop2
	ld a, [hl]
	and a
	jr z, .loop3
	cp MOVE_TABLE_ENTRIES + 1
	jr c, .next

.loop3
	xor a
	ld [hl], a
	inc hl
	dec b
	jr nz, .loop3
	jr .done

.next
	inc hl
	dec b
	jr nz, .loop2

.done
	pop hl
	ld de, NICKNAMED_MON_STRUCT_LENGTH
	add hl, de
	dec c
	jr nz, .loop
	ret

Function170cc6:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a
	ld hl, PichuAnimatedMobileGFX
	ld de, wDecompressScratch
	call Decompress
	ld a, 1
	ldh [rVBK], a
	ld de, wDecompressScratch
	ld hl, vTiles0
	lb bc, BANK(wDecompressScratch), 193
	call Get2bpp
	xor a
	ldh [rVBK], a
	ld hl, ElectroBallMobileGFX
	ld de, wDecompressScratch
	call Decompress
	ld de, wBGPals1
	ld hl, vTiles0
	lb bc, BANK(wDecompressScratch), 83
	call Get2bpp
	pop af
	ldh [rSVBK], a
	ret

Function170d02:
	ld a, $1
	ldh [rVBK], a
	ld de, GFX_171848
	ld hl, vTiles0 tile $c1
	lb bc, BANK(GFX_171848), 24
	call Get2bpp
	xor a
	ldh [rVBK], a
	ret

PichuAnimatedMobileGFX:
INCBIN "gfx/mobile/pichu_animated.2bpp.lz"

ElectroBallMobileGFX:
INCBIN "gfx/mobile/electro_ball.2bpp.lz"

GFX_171848:
INCBIN "gfx/unknown/171848.2bpp"

Function171ccd:
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld hl, Palette_171d71
	ld de, wBGPals1
	ld bc, 8 palettes
	rst CopyBytes
	ld hl, wOBPals1 palette 0 color 1
	ld a, LOW(PALRGB_WHITE)
	ld [hli], a
	ld a, HIGH(PALRGB_WHITE)
	ld [hl], a
	call SetPalettes
	pop af
	ldh [rSVBK], a
	ret

Palette_171d71:
	RGB  0,  0,  0
	RGB  3,  0,  0
	RGB  5,  0,  0
	RGB 31, 31, 29
	RGB  0,  2, 10
	RGB  2, 10, 21
	RGB  0,  0,  0
	RGB 10, 26, 31
	RGB  0,  0,  0
	RGB  0,  7,  8
	RGB 31,  8,  0
	RGB  1, 17, 15
	RGB 31, 16,  0
	RGB 31, 22,  0
	RGB 31, 27,  0
	RGB 31, 31,  0
	RGB 31, 18,  6
	RGB  0,  3,  0
	RGB  0,  9,  0
	RGB  0, 12,  0
	RGB  0, 16,  0
	RGB  0, 22,  0
	RGB  0, 25,  0
	RGB  0, 27,  0
	RGB  5,  5, 16
	RGB  8, 19, 28
	RGB  0,  0,  0
	RGB 31, 31, 31
	RGB 31, 31, 29
	RGB 21, 21, 20
	RGB 11, 11, 10
	RGB  0,  0,  0

Function172e78:
	ld a, $7f
	hlcoord 0, 0
	ld bc, $168
	call ByteFill
	ld a, $7
	hlcoord 0, 0, wAttrMap
	ld bc, $168
	call ByteFill
	call DisableLCD
	ld hl, GameBoyN64GFX
	ld de, vTiles2 tile $00
	ld bc, $610
	rst CopyBytes
	call EnableLCD
	ld hl, Tilemap_1733af
	decoord 0, 0
	ld bc, $168
	rst CopyBytes
	ld hl, Attrmap_173517
	decoord 0, 0, wAttrMap
	ld bc, $168
	rst CopyBytes
	ret

Function172eb9:
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld hl, Palette_172edf
	ld de, wBGPals1
	ld bc, 8 palettes
	rst CopyBytes
	ld hl, Palette_172edf
	ld de, wBGPals2
	ld bc, 8 palettes
	rst CopyBytes
	call SetPalettes
	pop af
	ldh [rSVBK], a
	ret

Palette_172edf:
	RGB  5, 12, 17
	RGB 31, 31, 31
	RGB 18, 25, 28
	RGB 10, 17, 21
	RGB  6, 13, 18
	RGB 31, 31, 31
	RGB 20, 26, 28
	RGB 12, 19, 23
	RGB  3, 10, 16
	RGB 31, 31, 31
	RGB  6, 13, 18
	RGB 20, 26, 28
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  5,  5, 16
	RGB  8, 19, 28
	RGB  0,  0,  0
	RGB 31, 31, 31
	RGB 31, 31, 31
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0

GameBoyN64GFX:
INCBIN "gfx/trade/game_boy_n64.2bpp"

Tilemap_1733af:
INCBIN "gfx/unknown/1733af.tilemap"

Attrmap_173517:
INCBIN "gfx/unknown/173517.attrmap"
