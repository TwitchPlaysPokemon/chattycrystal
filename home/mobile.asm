Function3f7c::
	call MenuBoxCoord2Tile
	call GetMenuBoxDims
	dec b
	dec c
Function3eea::
	push hl
	push bc
	ld de, wAttrMap - wTileMap
	add hl, de
	inc b
	inc b
	inc c
	inc c
	call Function3f35
	pop bc
	pop hl
	jp MobileHome_PlaceBox

Function3f20::
	hlcoord 0, 0, wAttrMap
	lb bc, 6, 20
	call Function3f35
	hlcoord 0, 0
	lb bc, 4, 18
	jp MobileHome_PlaceBox

Function3f35::
	ld a, 6
	ld de, SCREEN_WIDTH
.row
	push bc
	push hl
.col
	ld [hli], a
	dec c
	jr nz, .col
	pop hl
	add hl, de
	pop bc
	dec b
	jr nz, .row
	ret

MobileHome_PlaceBox:
	push bc
	call .FillTop
	pop bc
.RowLoop:
	push bc
	call .FillMiddle
	pop bc
	dec b
	jr nz, .RowLoop

.FillBottom:
	ld a, $68
	lb de, $67, $69
	jr .FillRow

.FillMiddle:
	ld a, $7f
	lb de, $65, $66
	jr .FillRow

.FillTop:
	ld a, $63
	lb de, $62, $64

.FillRow:
	push hl
	ld [hl], d
	inc hl
.FillLoop:
	ld [hli], a
	dec c
	jr nz, .FillLoop
	ld [hl], e
	pop hl
	ld de, SCREEN_WIDTH
	add hl, de
	ret

Function3f88::
	ld hl, wDecompressScratch
	ld b, 0
.row
	push bc
	ld c, 1 tiles / 2
.col
	ld a, [de]
	inc de
	cpl
	ld [hl], 0
	inc hl
	ld [hli], a
	dec c
	jr nz, .col
	pop bc
	dec c
	jr nz, .row
	ret

Function3f9f::
	ld hl, wDecompressScratch
.row
	push bc
	ld c, 1 tiles / 2
.col
	ld a, [de]
	inc de
	inc de
	cpl
	ld [hl], $0
	inc hl
	ld [hli], a
	dec c
	jr nz, .col
	pop bc
	dec c
	jr nz, .row
	ret
