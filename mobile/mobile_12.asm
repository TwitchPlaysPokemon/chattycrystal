Mobile12_Bin2Dec:
	push bc
	push af
	push de
	push hl
	ld hl, .DigitStrings
.loop
	and a
	jr z, .got_string
	inc hl
	inc hl
	dec a
	jr .loop
.got_string
	ld d, h
	ld e, l
	pop hl
	call PlaceString
	pop de
	pop af
	pop bc
	ret

.DigitStrings:
	db "0@"
	db "1@"
	db "2@"
	db "3@"
	db "4@"
	db "5@"
	db "6@"
	db "7@"
	db "8@"
	db "9@"

Function4895a:
	ldh a, [hJoyPressed]
	and a
	jr z, .asm_48965
	pop bc
	ld b, $1
	push bc
	jr asm_48972

.asm_48965
	ldh a, [hJoyLast]
	and a
	jr z, asm_48972

	pop bc
	ld b, $1
	push bc

Function4896e:
	pop bc
	ld b, $0
	push bc

asm_48972:
	call Function48ab5
	push af
	cp $f0
	jr z, .asm_48994
	cp $f
	jr nz, .asm_48988
	ld a, [wd002]
	set 7, a
	and $cf
	ld [wd002], a
.asm_48988
	hlcoord 11, 10
	ld b, $0
	ld c, d
	add hl, bc
	ld b, $3
	call Function48c11
.asm_48994
	call WaitBGMap
	pop af
	pop bc
	push bc
	call JoyTextDelay
	ldh a, [hJoyDown]
	and a
	jp z, Function4896e
	bit 0, a
	jp nz, Function4896e
	bit 1, a
	jp nz, Function4896e
	ld a, [wd002]
	and %11001111
	res 7, a
	ld [wd002], a
	pop bc
	inc b
	ld a, b
	cp $5
	push bc
	jr c, .asm_4894c
	pop bc
	ld b, $4
	push bc
.asm_4894c
	pop bc
	push bc
	ld a, b
	cp $4
	jr nz, asm_48972
	ld c, 10
	call DelayFrames
	jr asm_48972

Function489ea:
	push de
	ld a, [wd475]
	and $f
	call Mobile12_Bin2Dec
	ld a, [wd476]
	and $f0
	swap a
	inc hl
	call Mobile12_Bin2Dec
	ld a, [wd476]
	and $f
	inc hl
	call Mobile12_Bin2Dec
	inc hl
	ld de, String_48a38
	call PlaceString
	ld a, [wd477]
	and $f0
	swap a
	inc hl
	call Mobile12_Bin2Dec
	ld a, [wd477]
	and $f
	inc hl
	call Mobile12_Bin2Dec
	ld a, [wd478]
	and $f0
	swap a
	inc hl
	call Mobile12_Bin2Dec
	ld a, [wd478]
	and $f
	inc hl
	call Mobile12_Bin2Dec
	pop de
	ret

String_48a38:
	db "-@"

Function48ab5:
	ldh a, [hJoyPressed]
	and A_BUTTON
	jp nz, Function48c0f
	ldh a, [hJoyPressed]
	and B_BUTTON
	jp nz, Function48c0d
	ld a, d
	and a
	jr z, .asm_48adf
	cp $1
	jr z, .asm_48ae7
	cp $2
	jr z, .asm_48af1
	cp $3
	jr z, .asm_48af9
	cp $4
	jr z, .asm_48b03
	cp $5
	jr z, .asm_48b0b
	cp $6
	jr .asm_48b15
.asm_48adf
	ld hl, wd475
	ld a, [hl]
	and $f
	jr .asm_48b1d
.asm_48ae7
	ld hl, wd476
	ld a, [hl]
	swap a
	or $f0
	jr .asm_48b1d
.asm_48af1
	ld hl, wd476
	ld a, [hl]
	and $f
	jr .asm_48b1d
.asm_48af9
	ld hl, wd477
	ld a, [hl]
	swap a
	or $f0
	jr .asm_48b1d
.asm_48b03
	ld hl, wd477
	ld a, [hl]
	and $f
	jr .asm_48b1d
.asm_48b0b
	ld hl, wd478
	ld a, [hl]
	swap a
	or $f0
	jr .asm_48b1d
.asm_48b15
	ld hl, wd478
	ld a, [hl]
	and $f
	jr .asm_48b1d
.asm_48b1d
	push hl
	push af
	ld e, $0
	hlcoord 11, 10
	ld a, d
.asm_48b25
	and a
	jr z, .asm_48b2c
	inc e
	dec a
	jr .asm_48b25
.asm_48b2c
	ld hl, hJoyLast
	ld a, [hl]
	and D_UP
	jr nz, .asm_48b8d
	ld a, [hl]
	and D_DOWN
	jr nz, .asm_48b55
	ld a, [hl]
	and D_LEFT
	jp nz, Function48bd7
	ld a, [hl]
	and D_RIGHT
	jr nz, .asm_48b9d
	hlcoord 11, 10
	call Function489ea
	ld a, [wd002]
	bit 7, a
	jr nz, .asm_48b51
.asm_48b51
	pop bc
	pop bc
	and a
	ret
.asm_48b55
	pop af
	ld b, a
	and $f
	and a
	ld a, b
	jr nz, .asm_48b61
	and $f0
	add $a
.asm_48b61
	dec a
.asm_48b62
	push de
	push af
	hlcoord 10, 9
	ld b, $1
	ld c, $8
	call Function48cdc
	pop af
	pop de
	hlcoord 11, 10
	ld b, a
	ld a, d
	cp $3
	jr c, .asm_48b7a
	inc hl
.asm_48b7a
	ld a, b
	pop hl
	bit 7, a
	jr z, .asm_48b85
	call Function48c4d
	jr .asm_48b88
.asm_48b85
	call Function48c5a
.asm_48b88
	ld a, $f0
	jp Function48c00
.asm_48b8d
	pop af
	ld b, a
	and $f
	cp $9
	ld a, b
	jr c, .asm_48b9a
	and $f0
	add $ff
.asm_48b9a
	inc a
	jr .asm_48b62
.asm_48b9d
	push de
	hlcoord 10, 9
	ld b, $1
	ld c, $8
	call Function48cdc
	pop de
	ld a, d
	cp $6
	jr nc, .asm_48baf
	inc d
.asm_48baf
	pop af
	pop hl
	ld b, a
	ld a, d
	cp $6
	ld a, b
	jr z, .asm_48bc4
	bit 7, a
	jr nz, .asm_48bc4
	inc hl
	ld a, [hl]
	swap a
	and $f
	jr asm_48bc7
.asm_48bc4
	ld a, [hl]
	and $f

asm_48bc7:
	hlcoord 11, 10
	push af
	ld a, d
	cp $3
	pop bc
	ld a, b
	jr c, .asm_48bd3
	inc hl
.asm_48bd3
	ld a, $f
	jr Function48c00

Function48bd7:
	push de
	hlcoord 10, 9
	ld b, $1
	ld c, $8
	call Function48cdc
	pop de
	ld a, d
	and a
	pop af
	pop hl
	ld b, a
	ld a, d
	and a
	ld a, b
	jr z, .asm_48bf3
	bit 7, a
	jr z, .asm_48bf8
	dec d
	dec hl
.asm_48bf3
	ld a, [hl]
	and $f
	jr asm_48bc7
.asm_48bf8
	dec d
	ld a, [hl]
	swap a
	and $f
	jr asm_48bc7

Function48c00:
	push af
	hlcoord 11, 10
	call Function489ea
	ld a, $1
	and a
	pop bc
	ld a, b
	ret

Function48c0d:
	xor a
	and a

Function48c0f:
	scf
	ret

Function48c11:
	ld a, [wd002]
	bit 7, a
	jr z, .asm_48c20
	ld a, d
	cp $3
	jr c, .asm_48c1e
	inc hl
.asm_48c1e
	ld [hl], $7f
.asm_48c20
	ld a, [wd002]
	swap a
	and $3
	inc a
	cp b
	jr nz, .asm_48c40
	ld a, [wd002]
	bit 7, a
	jr z, .asm_48c3a
	res 7, a
	ld [wd002], a
	xor a
	jr .asm_48c40
.asm_48c3a
	set 7, a
	ld [wd002], a
	xor a
.asm_48c40
	swap a
	ld b, a
	ld a, [wd002]
	and $cf
	or b
	ld [wd002], a
	ret

Function48c4d:
	swap a
	and $f0
	push af
	ld a, [hl]
	and $f
	ld [hl], a
	pop af
	or [hl]
	ld [hl], a
	ret

Function48c5a:
	push af
	ld a, [hl]
	and $f0
	ld [hl], a
	pop af
	or [hl]
	ld [hl], a
	ret

Function48ca3:
	push af
	push bc
	push de
	push hl
	ld b, 0
	ld c, 0
	ld d, 0
.asm_48cad
	cp 100
	jr c, .asm_48cb6
	sub 100
	inc b
	jr .asm_48cad

.asm_48cb6
	cp 10
	jr c, .asm_48cbf
	sub 10
	inc c
	jr .asm_48cb6

.asm_48cbf
	cp 1
	jr c, .asm_48cc7
	dec a
	inc d
	jr .asm_48cbf

.asm_48cc7
	ld a, b
	call Mobile12_Bin2Dec
	inc hl
	ld a, c
	call Mobile12_Bin2Dec
	inc hl
	ld a, d
	call Mobile12_Bin2Dec
	pop hl
	pop de
	pop bc
	pop af
	ret

Function48cda:
	ld h, d
	ld l, e

Function48cdc:
	push bc
	push hl
	call Function48cfd
	pop hl
	pop bc
	ld de, wAttrMap - wTileMap
	add hl, de
	inc b
	inc b
	inc c
	inc c
	ld a, $0
.asm_48ced
	push bc
	push hl
.asm_48cef
	ld [hli], a
	dec c
	jr nz, .asm_48cef
	pop hl
	ld de, $14
	add hl, de
	pop bc
	dec b
	jr nz, .asm_48ced
	ret

Function48cfd:
	push hl
	ld a, $4
	ld [hli], a
	inc a
	call Function48d2a
	inc a
	ld [hl], a
	pop hl
	ld de, $14
	add hl, de
.asm_48d0c
	push hl
	ld a, $7
	ld [hli], a
	ld a, $7f
	call Function48d2a
	ld [hl], $8
	pop hl
	ld de, $14
	add hl, de
	dec b
	jr nz, .asm_48d0c
	ld a, $9
	ld [hli], a
	ld a, $a
	call Function48d2a
	ld [hl], $b
	ret

Function48d2a:
	ld d, c
.asm_48d2b
	ld [hli], a
	dec d
	jr nz, .asm_48d2b
	ret

Function48d30:
	ld hl, wd475
	call Function48d4a
	ld hl, wd477
	call Function48d4a
	ret

Function48d4a:
	inc hl
	ld a, [hl]
	ld b, a
	and $f
	ld c, a
	srl b
	srl b
	srl b
	srl b
	push bc
	ld c, 10
	ld a, b
	call SimpleMultiply
	pop bc
	add c
	ld [hld], a
	xor a
	ldh [hMultiplicand + 0], a
	ldh [hMultiplicand + 1], a
	ld a, [hl]
	srl a
	srl a
	srl a
	srl a
	ld c, 10
	call SimpleMultiply
	ld b, a
	ld a, [hli]
	and $f
	add b
	ldh [hMultiplicand + 2], a
	ld a, 100
	ldh [hMultiplier], a
	call Multiply
	ldh a, [hProduct + 2]
	ld b, a
	ldh a, [hProduct + 3]
	ld c, a
	ld e, [hl]
	add e
	ld c, a
	ld a, b
	adc 0
	ld b, a
	ld a, c
	ld [hld], a
	ld [hl], b
	ret

MobilePhoneTilesGFX:
INCBIN "gfx/mobile/phone_tiles.2bpp"

MobileCheckOwnMonAnywhere:
; Like CheckOwnMonAnywhere, but only check for species.
; OT/ID don't matter.

	ld a, [wPartyCount]
	and a
	ret z

	ld d, a
	ld e, 0
	ld hl, wPartyMon1Species
	ld bc, wPartyMonOT
.asm_4a851
	call .CheckMatch
	ret c
	push bc
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	call .CopyName
	dec d
	jr nz, .asm_4a851
	ld a, BANK(sBoxCount)
	call GetSRAMBank
	ld a, [sBoxCount]
	and a
	jr z, .asm_4a888
	ld d, a
	ld hl, sBoxMon1Species
	ld bc, sBoxMonOT
.asm_4a873
	call .CheckMatch
	jr nc, .asm_4a87c
	call CloseSRAM
	ret

.asm_4a87c
	push bc
	ld bc, BOXMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	call .CopyName
	dec d
	jr nz, .asm_4a873

.asm_4a888
	call CloseSRAM
	ld c, 0
	ld a, [wScriptVar]
	call GetPokemonIndexFromID
	ld d, h
	ld e, l
.asm_4a88d
	ld a, [wCurBox]
	cp c
	jr z, .asm_4a8d1
	ld hl, .BoxAddrs
	ld b, 0
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	call GetSRAMBank
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld b, MONS_PER_BOX
.box_search_loop
	ld a, [hli]
	cp e
	ld a, [hli]
	jr nz, .next_box_mon
	cp d
	jr z, .found_in_box
.next_box_mon
	dec b
	jr nz, .box_search_loop
.asm_4a8d1
	inc c
	ld a, c
	cp NUM_BOXES
	jr c, .asm_4a88d
	call CloseSRAM
	and a
	ret

.found_in_box
	call CloseSRAM
	scf
	ret

.CheckMatch:
	push bc
	push hl
	push de
	ld d, b
	ld e, c
	ld a, [wScriptVar]
	ld b, [hl]
	cp b
	jr nz, .no_match
	jr .match

.no_match
	pop de
	pop hl
	pop bc
	and a
	ret

.match
	pop de
	pop hl
	pop bc
	scf
	ret

.BoxAddrs:
	dba sBox1PokemonIndexes
	dba sBox2PokemonIndexes
	dba sBox3PokemonIndexes
	dba sBox4PokemonIndexes
	dba sBox5PokemonIndexes
	dba sBox6PokemonIndexes
	dba sBox7PokemonIndexes
	dba sBox8PokemonIndexes
	dba sBox9PokemonIndexes
	dba sBox10PokemonIndexes
	dba sBox11PokemonIndexes
	dba sBox12PokemonIndexes
	dba sBox13PokemonIndexes
	dba sBox14PokemonIndexes
	dba sBox15PokemonIndexes
	dba sBox16PokemonIndexes
	dba sBox17PokemonIndexes
	dba sBox18PokemonIndexes
	dba sBox19PokemonIndexes
	dba sBox20PokemonIndexes

.CopyName:
	push hl
	ld hl, NAME_LENGTH
	add hl, bc
	ld b, h
	ld c, l
	pop hl
	ret

Function4a94e:
	call FadeToMenu
	ld a, -1
	ld hl, wd002
	ld bc, 3
	call ByteFill
	xor a
	ld [wd018], a
	ld [wd019], a
	ld b, SCGB_PACKPALS
	call GetSGBLayout
	call SetPalettes
	call Function4aa22
	jr c, .asm_4a985
	jr .asm_4a9a1

.asm_4a974
	call Function4aa25
	jr c, .asm_4a985
	jr .asm_4a9a1

.asm_4a985
	ld a, [wd018]
	and a
	jr nz, .asm_4a990
	call Function4aba8
	jr c, .asm_4a974

.asm_4a990
	call CloseSubmenu
	ld hl, wd002
	ld a, -1
	ld bc, 3
	call ByteFill
	scf
	jr .asm_4a9af

.asm_4a9a1
	call Function4a9c3
	jr c, .asm_4a9b0
	call Function4a9d7
	jr c, .asm_4a974
	call CloseSubmenu
	and a

.asm_4a9af
	ret

.asm_4a9b0
	ld de, SFX_WRONG
	call PlaySFX
	ld hl, UnknownText_0x4a9be
	call PrintText
	jr .asm_4a974

UnknownText_0x4a9be:
	; Pick three #MON for battle.
	text_far UnknownText_0x1c51d7
	text_end

Function4a9c3:
	ld hl, wd002
	ld a, $ff
	cp [hl]
	jr z, .asm_4a9d5
	inc hl
	cp [hl]
	jr z, .asm_4a9d5
	inc hl
	cp [hl]
	jr z, .asm_4a9d5
	and a
	ret

.asm_4a9d5
	scf
	ret

Function4a9d7:
	ld a, [wd002]
	ld hl, wPartyMonNicknames
	call GetNick
	ld h, d
	ld l, e
	ld de, wd006
	ld bc, 6
	rst CopyBytes
	ld a, [wd003]
	ld hl, wPartyMonNicknames
	call GetNick
	ld h, d
	ld l, e
	ld de, wd00c
	ld bc, 6
	rst CopyBytes
	ld a, [wd004]
	ld hl, wPartyMonNicknames
	call GetNick
	ld h, d
	ld l, e
	ld de, wd012
	ld bc, 6
	rst CopyBytes
	ld hl, UnknownText_0x4aa1d
	call PrintText
	call YesNoBox
	ret

UnknownText_0x4aa1d:
	; , @  and @ . Use these three?
	text_far UnknownText_0x1c51f4
	text_end

Function4aa22:
	call ClearBGPalettes

Function4aa25:
	farcall LoadPartyMenuGFX
	farcall InitPartyMenuWithCancel
	call Function4aad3

Function4aa34:
	ld a, PARTYMENUACTION_MOBILE
	ld [wPartyMenuActionText], a
	farcall WritePartyMenuTilemap
	xor a
	ld [wPartyMenuActionText], a
	farcall PrintPartyMenuText
	call Function4aab6
	call WaitBGMap
	call SetPalettes
	call DelayFrame
	call Function4ab1a
	jr z, .asm_4aa66
	push af
	call Function4aafb
	jr c, .asm_4aa67
	call Function4ab06
	jr c, .asm_4aa67
	pop af

.asm_4aa66
	ret

.asm_4aa67
	ld hl, wd019
	set 1, [hl]
	pop af
	ret

Function4aa6e:
	pop af
	ld de, SFX_WRONG
	call PlaySFX
	call WaitSFX
	jr Function4aa34

Function4aa7a:
	ld hl, wd002
	ld d, $3
.loop
	ld e, PARTY_LENGTH
	ld a, [hli]
	push de
	push hl
	cp -1
	jr z, .done
	ld hl, wSpriteAnimationStructs
	inc a
	ld d, a
.inner_loop
	ld a, [hl]
	and a
	jr z, .next
	cp d
	jr z, .same_as_d
	jr .next

	ld a, $3
	jr .proceed

.same_as_d
	ld a, $2

.proceed
	push hl
	ld c, l
	ld b, h
	ld hl, $2
	add hl, bc
	ld [hl], a
	pop hl

.next
	ld bc, $10
	add hl, bc
	dec e
	jr nz, .inner_loop
	pop hl
	pop de
	dec d
	jr nz, .loop
	jr .finished

.done
	pop hl
	pop de

.finished
	ret

Function4aab6:
	ld hl, wd002
	ld d, $3
.loop
	ld a, [hli]
	cp -1
	jr z, .done
	push de
	push hl
	hlcoord 0, 1
	ld bc, $28
	call AddNTimes
	ld [hl], $ec
	pop hl
	pop de
	dec d
	jr nz, .loop

.done
	ret

Function4aad3:
	ld hl, wPartyCount
	ld a, [hli]
	and a
	ret z ; Nothing in your party

	ld c, a
	xor a
	ldh [hObjectStructIndexBuffer], a
.loop
	push bc
	push hl
	ld e, MONICON_PARTYMENU
	farcall LoadMenuMonIcon
	ldh a, [hObjectStructIndexBuffer]
	inc a
	ldh [hObjectStructIndexBuffer], a
	pop hl
	pop bc
	dec c
	jr nz, .loop

	call Function4aa7a
	farcall PlaySpriteAnimations
	ret

Function4aafb:
	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .egg
	and a
	ret

.egg
	scf
	ret

Function4ab06:
	ld a, [wCurPartyMon]
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1HP
	call AddNTimes
	ld a, [hli]
	ld b, a
	ld a, [hl]
	or b
	jr nz, .NotFainted
	scf

.NotFainted:
	ret

Function4ab1a:
.asm_4ab1a
	ld a, $fb
	ld [wMenuJoypadFilter], a
	ld a, $26
	ld [w2DMenuCursorOffsets], a
	ld a, $2
	ld [w2DMenuNumCols], a
	call Function4adf7
	call StaticMenuJoypad
	call Function4abc3
	jr c, .asm_4ab1a
	push af
	call Function4ab99
	call nc, PlaceHollowCursor
	pop af
	bit 1, a
	jr nz, .asm_4ab6d
	ld a, [wPartyCount]
	inc a
	ld b, a
	ld a, [wMenuCursorY]
	ld [wPartyMenuCursor], a
	cp b
	jr z, .asm_4ab7e
	ld a, [wMenuCursorY]
	dec a
	ld [wCurPartyMon], a
	ld c, a
	ld b, $0
	ld hl, wPartySpecies
	add hl, bc
	ld a, [hl]
	ld [wCurPartySpecies], a
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	call WaitSFX
	ld a, $1
	and a
	ret

.asm_4ab6d
	ld a, [wMenuCursorY]
	ld [wPartyMenuCursor], a
.asm_4ab73
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	call WaitSFX
	scf
	ret

.asm_4ab7e
	ld a, $1
	ld [wd018], a
	ld a, [wMenuCursorX]
	cp $2
	jr z, .asm_4ab73
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	call WaitSFX
	xor a
	ld [wd018], a
	and a
	ret

Function4ab99:
	bit 1, a
	jr z, .asm_4aba6
	ld a, [wd002]
	cp $ff
	jr z, .asm_4aba6
	scf
	ret

.asm_4aba6
	and a
	ret

Function4aba8:
	ld hl, wd004
	ld a, [hl]
	cp $ff
	jr nz, .asm_4abbe
	dec hl
	ld a, [hl]
	cp $ff
	jr nz, .asm_4abbe
	dec hl
	ld a, [hl]
	cp $ff
	jr nz, .asm_4abbe
	and a
	ret

.asm_4abbe
	ld a, $ff
	ld [hl], a
	scf
	ret

Function4abc3:
	bit 3, a
	jr z, .asm_4abd5
	ld a, [wPartyCount]
	inc a
	ld [wMenuCursorY], a
	ld a, $1
	ld [wMenuCursorX], a
	jr .asm_4ac29

.asm_4abd5
	bit 6, a
	jr z, .asm_4abeb
	ld a, [wMenuCursorY]
	ld [wMenuCursorY], a
	and a
	jr nz, .asm_4ac29
	ld a, [wPartyCount]
	inc a
	ld [wMenuCursorY], a
	jr .asm_4ac29

.asm_4abeb
	bit 7, a
	jr z, .asm_4ac08
	ld a, [wMenuCursorY]
	ld [wMenuCursorY], a
	ld a, [wPartyCount]
	inc a
	inc a
	ld b, a
	ld a, [wMenuCursorY]
	cp b
	jr nz, .asm_4ac29
	ld a, $1
	ld [wMenuCursorY], a
	jr .asm_4ac29

.asm_4ac08
	bit 4, a
	jr nz, .asm_4ac10
	bit 5, a
	jr z, .asm_4ac56

.asm_4ac10
	ld a, [wMenuCursorY]
	ld b, a
	ld a, [wPartyCount]
	inc a
	cp b
	jr nz, .asm_4ac29
	ld a, [wMenuCursorX]
	cp $1
	jr z, .asm_4ac26
	ld a, $1
	jr .asm_4ac29

.asm_4ac26
	ld [wMenuCursorX], a

.asm_4ac29
	hlcoord 0, 1
	lb bc, 13, 1
	call ClearBox
	call Function4aab6
	ld a, [wPartyCount]
	hlcoord 6, 1
.asm_4ac3b
	ld bc, $28
	add hl, bc
	dec a
	jr nz, .asm_4ac3b
	ld [hl], $7f
	ld a, [wMenuCursorY]
	ld b, a
	ld a, [wPartyCount]
	inc a
	cp b
	jr z, .asm_4ac54
	ld a, $1
	ld [wMenuCursorX], a

.asm_4ac54
	scf
	ret

.asm_4ac56
	and a
	ret

Function4adc2:
	ld a, [wd002]
	cp $ff
	jr nz, .skip
	ld a, [wd003]
	cp $ff
	jr nz, .skip2
	ld a, [wd004]
	ld [wd002], a
	ld a, $ff
	ld [wd004], a
	jr .skip

.skip2
	ld [wd002], a
	ld a, $ff
	ld [wd003], a

.skip
	ld a, [wd003]
	cp $ff
	ret nz
	ld b, a
	ld a, [wd004]
	ld [wd003], a
	ld a, b
	ld [wd004], a
	ret

Function4adf7:
	ld a, [wd019]
	bit 0, a
	ret z
	ld a, [wPartyCount]
	inc a
	ld [wMenuCursorY], a
	ld a, $1
	ld [wMenuCursorX], a
	ld a, [wd019]
	res 0, a
	ld [wd019], a
	ret
