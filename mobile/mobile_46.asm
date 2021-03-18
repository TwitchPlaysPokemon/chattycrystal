SECTION "Mobile 46", ROMX

_BattleTowerRoomMenu:
	xor a
	ld [wcd38], a
	call BattleTowerRoomMenu_InitRAM
	ld a, $3
	ld [wcd33], a
	ld a, $d
	ld [wcd34], a
	ld a, $4
	ld [wc3f0], a
	ldh a, [rSVBK]
	push af
	ld a, $3
	ldh [rSVBK], a
.loop
	call JoyTextDelay
	call Function118473
	ld a, [wcf66]
	cp $f
	jr c, .skip
	ld a, [wcd34]
	ld [wcf66], a
.skip
	call BattleTowerRoomMenu_Jumptable
	call BattleTowerRoomMenu_WriteMessage
	farcall Function115dd3
	farcall Function11619d
	call DelayFrame
	ld a, [wcf66]
	ld hl, wcd33
	cp [hl]
	jr nz, .loop
	xor a
	ld [w3_d000], a
	pop af
	ldh [rSVBK], a
	call BattleTowerRoomMenu_Cleanup
	call Function118180
	call ReturnToMapFromSubmenu
	ret

Function118180:
	ld a, [wScriptVar]
	and a
	ret nz
	ld a, [wcd38]
	and a
	ret z
	ld a, $5
	call GetSRAMBank
	ld hl, wcd69
	ld de, $a89c
	ld bc, $0016
	rst CopyBytes

	ldh a, [rSVBK]
	push af
	ld a, $3
	ldh [rSVBK], a

	ld de, w3_d202
	ld c, $96
	farcall CheckStringForErrors_IgnoreTerminator
	jr c, .return_d3

	ld de, w3_d202
	lb bc, 1, $96
	farcall CheckStringContainsLessThanBNextCharacters
	jr c, .return_d3

	ld hl, w3_d202
	ld de, $a8b2
	ld bc, $0096
	rst CopyBytes
.reset_banks
	pop af
	ldh [rSVBK], a
	call CloseSRAM
	ret

.return_d3
	ld a, $d3
	ld [wc300], a
	ld [wScriptVar], a
	jr .reset_banks

Function1181da:
	call BattleTowerRoomMenu_InitRAM
	ld a, $2
	ld [wcd38], a
	ld a, $21
	ld [wcd33], a
	ld a, $22
	ld [wcd34], a
	ld a, $4
	ld [wc3f0], a
	ldh a, [rSVBK]
	push af
	ld a, $3
	ldh [rSVBK], a
.asm_1181f8
	call JoyTextDelay
	call Function118473
	ld a, [wcf66]
	cp $28
	jr c, .asm_11820b
	ld a, [wcd34]
	ld [wcf66], a

.asm_11820b
	call Function1185c3
	call BattleTowerRoomMenu_WriteMessage
	farcall Function115dd3
	farcall Function11619d
	call DelayFrame
	ld a, [wcf66]
	ld hl, wcd33
	cp [hl]
	jr nz, .asm_1181f8
	pop af
	ldh [rSVBK], a
	call BattleTowerRoomMenu_Cleanup
	call ReturnToMapFromSubmenu
	ret

Function118233:
	call BattleTowerRoomMenu_InitRAM
	ld a, $1b
	ld [wcd33], a
	ld a, $1c
	ld [wcd34], a
	ld a, $6
	ld [wc3f0], a
	ldh a, [rSVBK]
	push af
	ld a, $3
	ldh [rSVBK], a
.asm_11824c
	call JoyTextDelay
	call Function118473
	ld a, [wcf66]
	cp $1e
	jr c, .asm_11825f
	ld a, [wcd34]
	ld [wcf66], a

.asm_11825f
	call Function118624
	call BattleTowerRoomMenu_WriteMessage
	farcall Function115dd3
	farcall Function11619d
	call DelayFrame
	ld a, [wcf66]
	ld hl, wcd33
	cp [hl]
	jr nz, .asm_11824c
	pop af
	ldh [rSVBK], a
	call BattleTowerRoomMenu_Cleanup
	ret

Function118284:
	call BattleTowerRoomMenu_InitRAM
	ld a, $19
	ld [wcd33], a
	ld a, $1e
	ld [wcd34], a
	ld a, $5
	ld [wc3f0], a
	ldh a, [rSVBK]
	push af
	ld a, $3
	ldh [rSVBK], a
.asm_11829d
	call JoyTextDelay
	call Function118473
	ld a, [wcf66]
	cp $20
	jr c, .asm_1182b0
	ld a, [wcd34]
	ld [wcf66], a
.asm_1182b0
	call Function1186f5
	call BattleTowerRoomMenu_WriteMessage
	farcall Function115dd3
	farcall Function11619d
	call DelayFrame
	ld a, [wcf66]
	ld hl, wcd33
	cp [hl]
	jr nz, .asm_11829d
	pop af
	ldh [rSVBK], a
	call BattleTowerRoomMenu_Cleanup
	ret

Function1182d5:
	call BattleTowerRoomMenu_InitRAM
	ld a, $18
	ld [wcd33], a
	ld a, $19
	ld [wcd34], a
	ld a, $4
	ld [wc3f0], a
	ldh a, [rSVBK]
	push af
	ld a, $3
	ldh [rSVBK], a
.asm_1182ee
	call JoyTextDelay
	call Function118473
	ld a, [wcf66]
	cp $1b
	jr c, .asm_118301
	ld a, [wcd34]
	ld [wcf66], a

.asm_118301
	call Function118746
	call BattleTowerRoomMenu_WriteMessage
	farcall Function115dd3
	farcall Function11619d
	call DelayFrame
	ld a, [wcf66]
	ld hl, wcd33
	cp [hl]
	jr nz, .asm_1182ee
	pop af
	ldh [rSVBK], a
	call BattleTowerRoomMenu_Cleanup
	call ReturnToMapFromSubmenu
	ret

Function118329:
	call BattleTowerRoomMenu_InitRAM
	ld a, $15
	ld [wcd33], a
	ld a, $16
	ld [wcd34], a
	ld a, $6
	ld [wc3f0], a
	ldh a, [rSVBK]
	push af
	ld a, $3
	ldh [rSVBK], a
.asm_118342
	call JoyTextDelay
	call Function118473
	ld a, [wcf66]
	cp $18
	jr c, .asm_118355
	ld a, [wcd34]
	ld [wcf66], a

.asm_118355
	call Function118671
	call BattleTowerRoomMenu_WriteMessage
	farcall Function115dd3
	farcall Function11619d
	call DelayFrame
	ld a, [wcf66]
	ld hl, wcd33
	cp [hl]
	jr nz, .asm_118342
	pop af
	ldh [rSVBK], a
	call BattleTowerRoomMenu_Cleanup
	ret

Function11837a:
	call BattleTowerRoomMenu_InitRAM
	ld a, $16
	ld [wcd33], a
	ld a, $17
	ld [wcd34], a
	ld a, $6
	ld [wc3f0], a
	ldh a, [rSVBK]
	push af
	ld a, $3
	ldh [rSVBK], a
.asm_118393
	call JoyTextDelay
	call Function118473
	ld a, [wcf66]
	cp $19
	jr c, .asm_1183a6
	ld a, [wcd34]
	ld [wcf66], a

.asm_1183a6
	call Function1186b2
	call BattleTowerRoomMenu_WriteMessage
	farcall Function115dd3
	farcall Function11619d
	call DelayFrame
	ld a, [wcf66]
	ld hl, wcd33
	cp [hl]
	jr nz, .asm_118393
	pop af
	ldh [rSVBK], a
	call BattleTowerRoomMenu_Cleanup
	ret

BattleTowerRoomMenu_InitRAM:
	di
	ldh a, [rIE]
	ld [wcd32], a
	call DoubleSpeed
	xor a
	ldh [rIF], a
	ld [wc300], a
	ld [wc301], a
	ld [wc302], a
	ld [wcd80], a
	ld [wcd65], a
	ld [wcd66], a
	ld [wcd67], a
	ld [wcd68], a
	ld [$c31a], a
	ld [wcd89], a
	ld [wcd8a], a
	ld [wcd8b], a
	ld [wc3ec], a
	ld [wc3ed], a
	ld [wc3ee], a
	ld [wc3ef], a
	ld hl, wVramState
	ld a, [hl]
	ld [wcd7f], a
	set 1, [hl]
	ld a, (1 << SERIAL) | (1 << TIMER) | (1 << LCD_STAT) | (1 << VBLANK)
	ldh [rIE], a
	ld a, $1
	ldh [hMobileReceive], a
	ldh [hMobile], a
	ei
	farcall Function106464
	farcall Function115d99
	farcall Function11615a
	ld a, $5
	call GetSRAMBank
	xor a
	ld [$bfff], a
	call CloseSRAM
	ret

Function118440:
	push af
	ld a, $5
	call GetSRAMBank
	ld a, [$bfff]
	inc a
	ld [$bfff], a
	call CloseSRAM
	pop af
	ret

BattleTowerRoomMenu_Cleanup:
	di
	xor a
	ldh [hMobileReceive], a
	ldh [hMobile], a
	ldh [hVBlank], a
	call NormalSpeed
	xor a
	ldh [rIF], a
	ld a, [wcd32]
	ldh [rIE], a
	ei
	ld a, [wcd7f]
	ld [wVramState], a
	ld a, [wc300]
	ld [wScriptVar], a
	ret

Function118473:
	ld a, [wcd65]
	and a
	ret z
	ld a, [wcd66]
	inc a
	ld [wcd66], a
	cp 60
	ret nz
	xor a
	ld [wcd66], a
	ld a, [wcd67]
	inc a
	ld [wcd67], a
	cp 60
	ret nz
	ld a, [wcd68]
	inc a
	ld [wcd68], a
	cp 99
	jr z, .ninety_nine
	xor a
	ld [wcd67], a
	ret

.ninety_nine
	xor a
	ld [wcd65], a
	ret

BattleTowerRoomMenu_Jumptable:
	jumptable .Jumptable, wcf66

.Jumptable:
	dw BattleTowerRoomMenu_PickLevelMessage
	dw BattleTowerRoomMenu_PlacePickLevelMenu
	dw BattleTowerRoomMenu_UpdatePickLevelMenu
	dw GenericDummyFunction
	dw BattleTowerRoomMenu_PartyMonTopsThisLevelMessage
	dw BattleTowerRoomMenu_WaitForMessage
	dw BattleTowerRoomMenu_DelayRestartMenu
	dw BattleTowerRoomMenu_QuitMessage
	dw BattleTowerRoomMenu_PlaceYesNoMenu
	dw BattleTowerRoomMenu_UpdateYesNoMenu
	dw BattleTowerRoomMenu_UberRestrictionMessage
	dw BattleTowerRoomMenu_WaitForMessage
	dw BattleTowerRoomMenu_DelayRestartMenu
	dw Function118e76 ; mobile
	dw BattleTowerRoomMenu_CallRoomMenu2 ; mobile
	dw Function118e76 ; mobile

Function1185c3:
	jumptable .Jumptable, wcf66

.Jumptable:
	dw Function11886e
	dw Function118880
	dw Function11878d
	dw Function1188b0
	dw Function11878d
	dw Function1188b8
	dw Function11878d
	dw Function1188c0
	dw Function11878d
	dw GenericDummyFunction ; unreachable
	dw Function11878d
	dw Function118903
	dw GenericDummyFunction ; unreachable
	dw Function11878d
	dw Function118e92
	dw Function11878d
	dw Function118eb0
	dw Function118ec6
	dw Function118f0d
	dw Function118f14
	dw Function118f5e
	dw Function11878d
	dw GenericDummyFunction ; unreachable
	dw Function11878d
	dw Function119054
	dw Function1190d0
	dw Function11878d
	dw Function1190ec
	dw Function118e6d
	dw Function11878d
	dw Function118e76
	dw Function118e7e
	dw Function11878d
	dw GenericDummyFunction
	dw Function118e76
	dw BattleTowerRoomMenu_CallRoomMenu2
	dw BattleTowerRoomMenu_QuitMessage
	dw BattleTowerRoomMenu_PlaceYesNoMenu
	dw BattleTowerRoomMenu_UpdateYesNoMenu
	dw Function11914e
	dw Function118e76

Function118624:
	jumptable .Jumptable, wcf66

.Jumptable:
	dw Function118866
	dw Function118880
	dw Function11878d
	dw Function1188b0
	dw Function11878d
	dw Function1188b8
	dw Function11878d
	dw Function1188c0
	dw Function11878d
	dw GenericDummyFunction ; unreachable
	dw Function11878d
	dw Function118903
	dw GenericDummyFunction ; unreachable
	dw Function11878d
	dw Function118e92
	dw Function11878d
	dw Function11915d
	dw GenericDummyFunction ; unreachable
	dw Function11878d
	dw GenericDummyFunction ; unreachable
	dw Function11878d
	dw Function119054
	dw Function118e6d
	dw Function11878d
	dw Function118e76
	dw Function118e7e
	dw Function11878d
	dw GenericDummyFunction
	dw Function118e76
	dw BattleTowerRoomMenu_CallRoomMenu2
	dw Function118e76

Function118671:
	jumptable .Jumptable, wcf66

.Jumptable:
	dw Function118866
	dw Function118880
	dw Function11878d
	dw Function1188b0
	dw Function11878d
	dw Function1188b8
	dw Function11878d
	dw Function1188c0
	dw Function11878d
	dw GenericDummyFunction ; unreachable
	dw Function11878d
	dw Function118903
	dw Function119380
	dw Function119388
	dw GenericDummyFunction ; unreachable
	dw Function11878d
	dw Function118e6d
	dw Function11878d
	dw Function118e76
	dw Function118e7e
	dw Function11878d
	dw GenericDummyFunction
	dw Function118e76
	dw BattleTowerRoomMenu_CallRoomMenu2
	dw Function118e76

Function1186b2:
	jumptable .Jumptable, wcf66

.Jumptable:
	dw Function118866
	dw Function118880
	dw Function11878d
	dw Function1188b0
	dw Function11878d
	dw Function1188b8
	dw Function11878d
	dw Function1188c0
	dw Function11878d
	dw GenericDummyFunction ; unreachable
	dw Function11878d
	dw Function118903
	dw Function119380
	dw Function1193e3
	dw Function1193fb
	dw Function11878d
	dw Function119413
	dw Function118e6d
	dw Function11878d
	dw Function118e76
	dw Function118e7e
	dw Function11878d
	dw GenericDummyFunction
	dw Function118e76
	dw BattleTowerRoomMenu_CallRoomMenu2
	dw Function118e76

Function1186f5:
	jumptable .Jumptable, wcf66

.Jumptable:
	dw Function11886a
	dw Function118880
	dw Function11878d
	dw Function1188b0
	dw Function11878d
	dw Function1188b8
	dw Function11878d
	dw Function1188c0
	dw Function11878d
	dw GenericDummyFunction ; unreachable
	dw Function11878d
	dw Function118903
	dw GenericDummyFunction ; unreachable
	dw Function11878d
	dw Function119451
	dw Function1195f8
	dw Function119612
	dw Function119629
	dw Function119648
	dw Function11878d
	dw Function118e6d
	dw Function11878d
	dw Function118e76
	dw Function118e7e
	dw Function11878d
	dw GenericDummyFunction
	dw Function11967d
	dw Function119685
	dw Function119665
	dw Function11966d
	dw Function118e76
	dw BattleTowerRoomMenu_CallRoomMenu2
	dw Function118e76

Function118746:
	jumptable .Jumptable, wcf66

.Jumptable:
	dw Function11886e
	dw Function118880
	dw Function11878d
	dw Function1188b0
	dw Function11878d
	dw Function1188b8
	dw Function11878d
	dw Function1188c0
	dw Function11878d
	dw GenericDummyFunction ; unreachable
	dw Function11878d
	dw Function118903
	dw GenericDummyFunction ; unreachable
	dw Function11878d
	dw Function1196f2
	dw Function1197c9
	dw Function1197dc
	dw Function11878d
	dw Function118e6d
	dw Function11878d
	dw Function119800
	dw Function118e76
	dw Function118e7e
	dw Function11878d
	dw GenericDummyFunction
	dw Function118e76
	dw BattleTowerRoomMenu_CallRoomMenu2
	dw Function118e76

Function11878d:
	ld a, [wc821]
	bit 0, a
	jr nz, Function118821
	ld a, [wcd89]
	and $1
	jr z, .asm_1187a7
	ld a, $3
	ldh [rSVBK], a
.asm_1187a7
	jp BattleTowerRoomMenu_IncrementJumptable

Function118805:
	; unreachable

Function118821:
	and a
	ret

Function118866:
	ld a, 2
	jr asm_11886f

Function11886a:
	ld a, 1
	jr asm_11886f

Function11886e:
	xor a

asm_11886f:
	ld [wBGMapPalBuffer], a
	ld a, $0
	ld [wcd3c], a
	call BattleTowerRoomMenu_IncrementJumptable
	ld a, [wcd33]
	ld [wMobileInactivityTimerSeconds], a

Function118880:
	call BattleTowerRoomMenu2
	ret c
	xor a
	ld [wcf64], a
	ld [wc807], a
	ld de, wcd81
	ld hl, $46
	ld a, $2
	jp Function119e2b

Function118896:
	ld a, [wc821]
	bit 1, a
	jr nz, .asm_1188a5
	bit 2, a
	jr nz, .asm_1188a5
	bit 0, a
	jr z, .asm_1188aa

.asm_1188a5
	ld a, $34
	jp Function119e2b

.asm_1188aa
	call BattleTowerRoomMenu_IncrementJumptable
	jp BattleTowerRoomMenu_IncrementJumptable

Function1188b0:
	ld de, $c346
	ld a, $c
	jp Function119e2b

Function1188b8:
	ld de, wc3ac
	ld a, $e
	jp Function119e2b

Function1188c0:
	ld de, wc3cd
	ld a, $10
	jp Function119e2b

Function118903:
	ld a, [wc3f0]
	ld [$c319], a
	ld c, $1
	farcall Function115e18
	ld a, $8
	ld [wcd3c], a
	call BattleTowerRoomMenu2
	jp BattleTowerRoomMenu_IncrementJumptable

BattleTowerRoomMenu_PickLevelMessage:
	ld a, [wcd38]
	and a
	jr nz, .asm_11892d
	ld hl, Text_WhatLevelDoYouWantToChallenge
	jr .asm_118930

.asm_11892d
	ld hl, Text_CheckBattleRoomListByMaxLevel

.asm_118930
	call BattleTowerRoomMenu_SetMessage
	call BattleTowerRoomMenu_IncrementJumptable

BattleTowerRoomMenu_PlacePickLevelMenu:
	ld a, [$c31a]
	and a
	ret nz
	ld hl, MenuHeader_119cf7
	call LoadMenuHeader
	call MenuBox
	call MenuBoxCoord2Tile
	call ApplyTilemap
	hlcoord 16, 8, wAttrMap
	ld a, $40
	or [hl]
	ld [hl], a
	call WaitBGMap2
	ld a, $1
	ld [wcd4f], a
	ld a, $1
	ldh [rSVBK], a
	ld hl, Strings_L10ToL100 ; Address to list of strings with the choosable levels
	ld a, 11                 ; 10 levels to choose from, including 'Cancel'-option
	ld [wcd4a], a
	ld a, l
	ld [wcd4b], a
	ld a, h
	ld [wcd4c], a
	ld a, $3
	ldh [rSVBK], a
	call BattleTowerRoomMenu_IncrementJumptable

BattleTowerRoomMenu_UpdatePickLevelMenu:
	hlcoord 13, 8
	ld de, String_119d07
	call PlaceString
	hlcoord 13, 10
	ld de, String_119d07
	call PlaceString
	ld a, [wcd4b]
	ld l, a
	ld a, [wcd4c]
	ld h, a
	ld d, $0
	ld a, [wcd4f]
	dec a
	rlca
	rlca
	rlca
	ld e, a
	add hl, de
	ld a, l
	ld e, a
	ld a, h
	ld d, a
	ldh a, [rSVBK]
	push af
	ld a, $1
	ldh [rSVBK], a
	ld bc, wStringBuffer3
.asm_1189b5
	ld a, [hli]
	cp $50
	jr z, .asm_1189c4
	cp $7f
	jr z, .asm_1189c2
	ld [bc], a
	inc bc
	jr .asm_1189b5

.asm_1189c2
	ld a, $50

.asm_1189c4
	ld [bc], a
	pop af
	ldh [rSVBK], a
	hlcoord 13, 9
	call PlaceString
	ld hl, hJoyPressed
	ld a, [hl]
	and B_BUTTON
	jr nz, .b_button
	ld a, [hl]
	and A_BUTTON
	jr nz, .a_button
	ld a, [hl]
	and D_DOWN
	jr nz, .d_down
	ld a, [hl]
	and D_UP
	jr nz, .d_up
.asm_1189e5
	ret

.d_down
	ld hl, wcd4f
	dec [hl]
	jr nz, .asm_1189e5
	ld a, [wcd4a]
	ld [hl], a
	jr .asm_1189e5

.d_up
	ld a, [wcd4a]
	ld hl, wcd4f
	inc [hl]
	cp [hl]
	jr nc, .asm_1189e5
	ld a, $1
	ld [hl], a
	jr .asm_1189e5

.a_button
	call PlayClickSFX
	ld a, [wcd4f]
	ld hl, wcd4a
	cp [hl]
	jr z, .asm_118a3c
	dec a
	and $fe
	srl a
	ld [wcf65], a
	ldh a, [rSVBK]
	push af
	ld a, $1
	ldh [rSVBK], a
	call CloseWindow
	pop af
	ldh [rSVBK], a
	ld a, [wcd38]
	and a
	jr nz, .asm_118a30
	call BattleTower_UbersCheck
	ret c

.asm_118a30
	ld a, [wcd4f]
	ld [w3_d800], a
	jp BattleTowerRoomMenu_IncrementJumptable

.b_button
	call PlayClickSFX

.asm_118a3c
	ldh a, [rSVBK]
	push af
	ld a, $1
	ldh [rSVBK], a
	call CloseWindow
	pop af
	ldh [rSVBK], a
	ld a, $7
	ld [wcf66], a
	ld a, $0
	ld [wMobileInactivityTimerFrames], a
	ret

Function118a54:
	ld a, [wcd55]
	ld l, a
	ld a, [wcd56]
	ld h, a
	ld de, wc3ec
	ld bc, $0004
	jp Function118ae4

Function118ae4:
	push bc
	push de
	push hl
	ld a, $8
	ld [wcd3c], a
	call BattleTowerRoomMenu2
	pop hl
	ld c, $0
	ld de, wcc60
.asm_118af5
	ld a, [hli]
	ld [de], a
	inc de
	inc c
	ld a, c
	cp $a6
	jr c, .asm_118af5
	ld a, $da
	jp Function118805

Function118b10:
	; unreachable

Function118b9a:
	ld a, h
	cp $e0
	ret c
	ld a, $d3
	call Function118805
	and a
	ret

Function118e39:
	ld a, [hli]
	and a
	jr nz, Function118e39
	dec hl
.asm_118e3e
	ld a, [hld]
	cp $2f
	jr nz, .asm_118e3e
	inc hl
	inc hl
	ld de, wcd85
	ld c, $4
.asm_118e4a
	ld a, [hli]
	cp $2e
	jr z, .asm_118e63
	cp $30
	jr c, .asm_118e67
	cp $3a
	jr nc, .asm_118e67
	sub $30
	add $f6
	ld [de], a
	inc de
	dec c
	jr nz, .asm_118e4a
	ld de, wcd85
.asm_118e63
	ld a, $50
	ld [de], a
	ret
.asm_118e67
	ld a, $f3
	ld [de], a
	inc de
	jr .asm_118e63

Function118e6d:
	xor a
	ld [wcd65], a
	ld a, $a
	jp Function119e2b

Function118e76:
	; Call $c in BattleTowerRoomMenu2
	ld a, $c
	ld [wcd3c], a
	jp BattleTowerRoomMenu_IncrementJumptable

Function118e7e:
	call BattleTowerRoomMenu2
	ret c
	ld a, $36
	jp Function119e2b

BattleTowerRoomMenu_CallRoomMenu2:
	call BattleTowerRoomMenu2
	ret c
	ld a, [wcd33]
	ld [wcf66], a
	ret

Function118e92:
	call Function118440
	call Function1191d3
	ld a, [wcd53]
	ld l, a
	ld a, [wcd54]
	ld h, a
	ld de, wcc60
	call Function1191ad
	ret c
	ld de, w3_d800
	ld bc, $0800
	jp Function118b10

Function118eb0:
	call Function118440
	ld hl, $d802
	ld de, wBGMapBuffer
	ld bc, $000c
	rst CopyBytes
	call Function1192cc
	ret c
	jp BattleTowerRoomMenu_IncrementJumptable

Function118ec6:
	call Function118440
	call SpeechTextbox
	ld hl, $d80e
	ld de, $c320
	ld bc, $0026
	rst CopyBytes
	xor a
	ld [$c31f], a
	ld a, $20
	ld [$c31b], a
	ld a, $c3
	ld [$c31c], a
	hlcoord 1, 14
	ld a, l
	ld [$c31d], a
	ld a, h
	ld [$c31e], a
	ld a, $2
	ld [$c31a], a
	ld a, $1d
	ld [wcd3c], a
	ld a, $24
	ld [wMobileInactivityTimerSeconds], a
	ld a, $11
	ld [wMobileInactivityTimerFrames], a
	ld a, $1c
	ld [wcd47], a
	jp BattleTowerRoomMenu_IncrementJumptable

Function118f0d:
	call BattleTowerRoomMenu2
	ret c
	call Function118440

Function118f14:
	call Function118440
	ld a, [wcd51]
	ld l, a
	ld a, [wcd52]
	ld h, a
	ld de, wcc60
	call Function1191ad
	ret c
	ld a, [wcc60]
	and a
	jr z, .DontSendSaveFile
	ld hl, Text_SaveFileWillBeSent
	call BattleTowerRoomMenu_SetMessage

.DontSendSaveFile:
	ld a, [wcd57]
	ld l, a
	ld a, [wcd58]
	ld h, a
	ld de, wcc60
	call Function1191ad
	ret c
	ld hl, wcc60
	call Function118e39
	ld a, $9
	ld [wcd3c], a
	ld a, $24
	ld [wMobileInactivityTimerSeconds], a
	ld a, $13
	ld [wMobileInactivityTimerFrames], a
	ld a, $1c
	ld [wcd47], a
	jp BattleTowerRoomMenu_IncrementJumptable

Function118f5e:
	call BattleTowerRoomMenu2
	ret c
	call Function118440
	call DelayFrame

Function119054:
	ld a, $6
	call GetSRAMBank
	ld hl, wd002
	ld a, [wcd4f]
	ld e, a
	ld a, [wcd50]
	ld d, a
	ld a, [w3_d000]
	ld c, a
	ld a, [w3_d000 + 1]
	ld b, a
	call Function119192
	ret c
	ld a, [wcd89]
	and $1
	jr z, .asm_11908a
	ld a, $6
	ldh [rSVBK], a
	ld hl, wd002
	ld a, [w3_d000]
	ld c, a
	ld a, [w3_d000 + 1]
	ld b, a
	call Function119192
	ret c

.asm_11908a
	call CloseSRAM
	ld a, $3
	ldh [rSVBK], a
	ld a, $5
	call GetSRAMBank
	ld a, [wcd4f]
	ld [$b1b3], a
	ld a, [wcd50]
	ld [$b1b4], a
	ld hl, wBGMapBuffer
	ld de, $aa7f
	ld bc, $000c
	rst CopyBytes
	ldh a, [rSVBK]
	push af
	ld a, $1
	ldh [rSVBK], a
	ld a, [wd474]
	ld [$b2f3], a
	ld hl, wd475
	ld de, $b2f4
	ld bc, $0004
	rst CopyBytes
	pop af
	ldh [rSVBK], a
	call CloseSRAM
	jp BattleTowerRoomMenu_IncrementJumptable

Function1190d0:
	ld a, $3
	ldh [rSVBK], a
	ld a, [wcd57]
	ld l, a
	ld a, [wcd58]
	ld h, a
	ld de, wcc60
	call Function1191ad
	ret c
	ld de, w3_d000
	ld bc, $1000
	jp Function118b10

Function1190ec:
	ld a, $5
	call GetSRAMBank
	ld hl, wBGMapBuffer
	ld de, $aa73
	ld bc, $000c
	rst CopyBytes
	call CloseSRAM
	ld a, $5
	call GetSRAMBank
	ld a, $1
	ld [$aa72], a
	call CloseSRAM
	ld a, $6
	call GetSRAMBank
	ld a, [w3_d000]
	ld c, a
	ld a, [w3_d000 + 1]
	ld b, a
	ld hl, wd002
	ld de, $a000
	call Function119192
	ret c
	ld a, [wcd89]
	and $1
	jr z, .asm_11913e
	ld a, $6
	ldh [rSVBK], a
	ld a, [w3_d000]
	ld c, a
	ld a, [w3_d000 + 1]
	ld b, a
	ld hl, wd002
	call Function119192
	ret c

.asm_11913e
	ld a, $3
	ldh [rSVBK], a
	call CloseSRAM
	ld hl, Text_ReceivedNews
	call BattleTowerRoomMenu_SetMessage
	jp BattleTowerRoomMenu_IncrementJumptable

Function11914e:
	call BattleTowerRoomMenu2
	ret c
	ld a, $1c
	ld [wcf66], a
	ld a, $a
	ld [wc300], a
	ret

Function11915d:
	ld hl, $d802
	ld de, wBGMapBuffer
	ld bc, $000c
	rst CopyBytes
	ld a, $5
	call GetSRAMBank
	ld hl, wBGMapBuffer
	ld de, $aa7f
	ld c, $c
.asm_119176
	ld a, [de]
	inc de
	cp [hl]
	jr nz, .asm_119184
	inc hl
	dec c
	jr nz, .asm_119176
	call BattleTowerRoomMenu_IncrementJumptable
	jr .asm_11918e

.asm_119184
	ld a, $16
	ld [wcf66], a
	ld a, $b
	ld [wc300], a

.asm_11918e
	call CloseSRAM
	ret

Function119192:
	inc b
	inc c
	jr .asm_11919e

.asm_119196
	ld a, [hli]
	ld [de], a
	inc de
	ld a, $bf
	cp d
	jr c, .asm_1191a6

.asm_11919e
	dec c
	jr nz, .asm_119196
	dec b
	jr nz, .asm_119196
	and a
	ret

.asm_1191a6
	ld a, $d3
	call Function118805
	scf
	ret

Function1191ad:
	push bc
	ld c, $0
	ld a, $5
	ldh [rSVBK], a
.asm_1191b4
	ld a, [hli]
	ld [de], a
	inc de
	and a
	jr z, .asm_1191cc
	inc c
	ld a, c
	cp $a6
	jr c, .asm_1191b4
	ld a, $da
	call Function118805
	ld a, $3
	ldh [rSVBK], a
	pop bc
	scf
	ret

.asm_1191cc
	ld a, $3
	ldh [rSVBK], a
	pop bc
	and a
	ret

Function1191d3:
	ld hl, w3_d100 + 2
	ld a, l
	ld [wcd53], a
	ld a, h
	ld [wcd54], a
	call Function11920f
	ld a, l
	ld [wcd51], a
	ld a, [wcd4a]
	ld a, h
	ld [wcd52], a
	call Function11920f
	ld a, l
	ld [wcd55], a
	ld a, [wcd4a]
	ld a, h
	ld [wcd56], a
	call Function11920f
	ld a, [wcd49]
	ld a, l
	ld [wcd57], a
	ld a, [wcd4a]
	ld a, h
	ld [wcd58], a
	call Function11920f
	ret

Function11920f:
.asm_11920f
	call Function118b9a
	ret nc
	ld a, [hli]
	cp $d
	jr nz, .asm_11920f
	ld a, [hli]
	cp $a
	jr nz, .asm_11920f
	dec hl
	xor a
	ld [hld], a
	ld [hli], a
	inc hl
	ret

Function1192cc:
	ld a, $5
	call GetSRAMBank
	ld hl, $aa73
	ld de, $c608
	ld bc, $000c
	rst CopyBytes
	call CloseSRAM
	ld hl, $c608
	ld de, wBGMapBuffer
	ld c, $c
.asm_1192e8
	ld a, [de]
	inc de
	ld b, a
	ld a, [hli]
	cp b
	jr nz, .asm_1192fe
	dec c
	jr nz, .asm_1192e8
	ld a, $1f
	ld [wcd3c], a
	ld a, $27
	ld [wcf66], a
	scf
	ret

.asm_1192fe
	and a
	ret

Function119300:
	; unreachable
	xor a
	ld [wcd4b], a
	ld [wcd4c], a
	ld a, [wcd4d]
	ld e, a
	ld a, [wcd4e]
	ld d, a
	ld hl, $c608
	ld a, [wcd4b]
	ld c, a
	ld a, [wcd4c]
	ld b, a
.asm_11931a
	ld a, [de]
	inc de
	cp $50
	jr z, .asm_119324
	ld [hli], a
	inc bc
	jr .asm_11931a

.asm_119324
	ld a, $3d
	ld [hli], a
	inc bc
	ld a, c
	ld [wcd4b], a
	ld a, b
	ld [wcd4c], a
	ld a, [de]
	inc de
	call GetSRAMBank
	ld a, [de]
	inc de
	ld c, a
	ld a, [de]
	inc de
	ld b, a
	ld a, [de]
	inc de
	push de
	push af
	ld a, [wcd4b]
	ld e, a
	ld a, [wcd4c]
	ld d, a
	pop af
.asm_119348
	push af
	ld a, [bc]
	and $f0
	swap a
	call Function1197bf
	ld [hli], a
	inc de
	ld a, [bc]
	inc bc
	and $f
	call Function1197bf
	ld [hli], a
	inc de
	pop af
	dec a
	jr nz, .asm_119348
	call CloseSRAM
	ld a, e
	ld [wcd4b], a
	ld a, d
	ld [wcd4c], a
	pop de
	ld a, [de]
	cp $50
	jr z, .asm_11937f
	ld a, [wcd4b]
	ld c, a
	ld a, [wcd4c]
	ld b, a
	ld a, $26
	ld [hli], a
	inc bc
	jr .asm_11931a

.asm_11937f
	ret

Function119380:
	ld a, $80
	ld [wcd49], a
	jp BattleTowerRoomMenu_IncrementJumptable

Function119388:
	ld hl, wcd49
	dec [hl]
	ret nz
	ld hl, wcc60
	call Function118e39
	ld a, $9
	ld [wcd3c], a
	ld a, $10
	ld [wMobileInactivityTimerSeconds], a
	call BattleTowerRoomMenu_IncrementJumptable

Function1193e3:
	ld hl, wcd49
	dec [hl]
	ret nz
	ld hl, wcc60
	call Function118e39
	ld a, $9
	ld [wcd3c], a
	ld a, $11
	ld [wMobileInactivityTimerSeconds], a
	call BattleTowerRoomMenu_IncrementJumptable

Function1193fb:
	call BattleTowerRoomMenu2
	ret c
	call DelayFrame
	ld a, $8
	ld [wcd3c], a
	call BattleTowerRoomMenu2
	ld de, w3_d000
	ld bc, $1000
	jp Function118b10

Function119413:
	ld a, $6
	call GetSRAMBank
	ld a, [w3_d000]
	ld c, a
	ld a, [w3_d000 + 1]
	ld b, a
	dec bc
	dec bc
	ld hl, wd002
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	call Function119192
	ret c
	ld a, [wcd89]
	and $1
	jr z, .asm_119447
	ld a, $6
	ldh [rSVBK], a
	ld a, [w3_d000]
	ld c, a
	ld a, [w3_d000 + 1]
	ld b, a
	ld hl, wd002
	call Function119192
	ret c

.asm_119447
	ld a, $3
	ldh [rSVBK], a
	call CloseSRAM
	jp BattleTowerRoomMenu_IncrementJumptable

Function119451:
	ld a, [wcd89]
	and $1
	jr z, .asm_11945d
	ld a, $d3
	jp Function118805
.asm_11945d
	xor a
	ld [wcd50], a
	call Function119694
	ld a, b
	ld [wcd49], a
	call Function1196cd
	ld a, [wd002]
	ld hl, wd003

Function119471:
	push af
	ld a, [hli]
	ld [$c608], a
	ld a, [hli]
	ld [$c608 + 3], a
	ld a, [hli]
	ld [$c608 + 1], a
	ld a, [hli]
	ld [$c608 + 2], a
	ld a, [hli]
	ld [$c608 + 4], a
	ld a, [hli]
	ld [$c608 + 5], a ; $c608 + 5
	push hl
	ld a, [$c608]
	cp $ff
	jr z, .asm_1194a7
	ld a, [$c608 + 2]
	cp $ff
	jr z, .asm_1194a7
	ld a, [$c608 + 1]
	cp $ff
	jr nz, .asm_1194a7
	call Function119584
	jr c, .asm_11950c
	jr .asm_1194f0
.asm_1194a7
	ld hl, $c608
	ld de, $c608 + 3
	ld c, $3
.asm_1194af
	ld a, [de]
	inc de
	cp [hl]
	inc hl
	jr c, .asm_1194f3
	jr z, .asm_1194b9
	jr nc, .asm_1194bc
.asm_1194b9
	dec c
	jr nz, .asm_1194af
.asm_1194bc
	ld c, $3
	ld hl, wcd49
	ld de, $c608
.asm_1194c4
	ld a, [de]
	inc de
	cp $ff
	jr z, .asm_1194d1
	cp [hl]
	jr z, .asm_1194d1
	jr c, .asm_1194d5
	jr nc, .asm_1194f0
.asm_1194d1
	inc hl
	dec c
	jr nz, .asm_1194c4
.asm_1194d5
	ld c, $3
	ld hl, wcd49
	ld de, $c608 + 3
.asm_1194dd
	ld a, [de]
	inc de
	cp $ff
	jr z, .asm_1194ea
	cp [hl]
	jr c, .asm_1194f0
	jr z, .asm_1194ea
	jr nc, .asm_11950c
.asm_1194ea
	inc hl
	dec c
	jr nz, .asm_1194dd
	jr .asm_11950c
.asm_1194f0
	pop hl
	jr .asm_119557
.asm_1194f3
	ld c, $3
	ld hl, wcd49
	ld de, $c608
.asm_1194fb
	ld a, [de]
	inc de
	cp $ff
	jr z, .asm_119508
	cp [hl]
	jr c, .asm_11950c
	jr z, .asm_119508
	jr nc, .asm_1194d5
.asm_119508
	inc hl
	dec c
	jr nz, .asm_1194fb
.asm_11950c
	pop hl
	ld a, $1
	ld [wcd50], a
	ld a, l
	ld [$c608], a
	ld a, h
	ld [$c608 + 1], a
	ld de, wcd69
	ld c, $10
	ld b, $0
.asm_119521
	ld a, [de]
	inc de
	cp [hl]
	inc hl
	jr nz, .asm_119528
	inc b
.asm_119528
	dec c
	jr nz, .asm_119521
	ld a, $10
	cp b
	jr z, .asm_119536
rept 4
	inc hl
endr
	jr .asm_11957a
.asm_119536
	ld a, [hli]
	cp $50
	jr nz, .asm_119552
	ld a, [hli]
	cp $33
	jr nz, .asm_119553
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [wcd83]
	cp c
	jr nz, .asm_119576
	ld a, [wcd84]
	cp b
	jr nz, .asm_119576
	jr .asm_11955b
.asm_119552
	inc hl
.asm_119553
	inc hl
	inc hl
	jr .asm_11955b
.asm_119557
	ld de, $14
	add hl, de
.asm_11955b
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	add hl, de
	pop af
	dec a
	jp nz, Function119471
	ld a, [wcd50]
	and a
	jr z, .asm_119571
	ld a, $1a
	ld [wcf66], a
	ret
.asm_119571
	ld a, $d8
	jp Function118805
.asm_119576
	ld a, $10
	jr .asm_11957c
.asm_11957a
	ld a, $f
.asm_11957c
	ld [wcf66], a
	pop af
	call Function1195c4
	ret

Function119584:
	ld a, [$c608]
	ld b, a
	ld a, [$c608 + 3]
	ld c, a
	cp b
	jr c, .asm_11959c
	ld a, [wcd49]
	cp b
	jr c, .asm_1195c2
.asm_119595
	cp c
	jr c, .asm_1195a2
	jr z, .asm_1195a2
	jr .asm_1195c2
.asm_11959c
	ld a, [wcd49]
	cp b
	jr c, .asm_119595
.asm_1195a2
	ld a, [$c608 + 2]
	ld b, a
	ld a, [$c608 + 5] ; $c608 + 5
	ld c, a
	cp b
	jr c, .asm_1195ba
	ld a, [wcd4b]
	cp b
	jr c, .asm_1195c2
.asm_1195b3
	cp c
	jr c, .asm_1195c0
	jr z, .asm_1195c0
	jr .asm_1195c2
.asm_1195ba
	ld a, [wcd4b]
	cp b
	jr c, .asm_1195b3
.asm_1195c0
	scf
	ret
.asm_1195c2
	and a
	ret

Function1195c4:
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld de, $a5
	ld a, b
	cp d
	jr c, .asm_1195d9
	jr z, .asm_1195d3
	jr nc, .asm_1195f3
.asm_1195d3
	ld a, c
	cp e
	jr z, .asm_1195d9
	jr nc, .asm_1195f3
.asm_1195d9
	ld de, wcc60
	rst CopyBytes
	xor a
	ld [de], a
	ld a, [$c608]
	ld l, a
	ld a, [$c608 + 1]
	ld h, a
	ld de, wcd69
	ld bc, $10
	rst CopyBytes
	ret
.asm_1195f3
	ld a, $d8
	jp Function118805

Function1195f8:
	ld a, $11
	ld [wcd3c], a
	ld a, $1c
	ld [wMobileInactivityTimerSeconds], a
	ld a, $f
	ld [wMobileInactivityTimerFrames], a
	ld a, $14
	ld [wcd47], a
	call BattleTowerRoomMenu_IncrementJumptable
	jp BattleTowerRoomMenu_IncrementJumptable

Function119612:
	ld a, $14
	ld [wcd3c], a
	ld a, $1c
	ld [wMobileInactivityTimerSeconds], a
	ld a, $10
	ld [wMobileInactivityTimerFrames], a
	ld a, $14
	ld [wcd47], a
	jp BattleTowerRoomMenu_IncrementJumptable

Function119629:
	call BattleTowerRoomMenu2
	ret c
	ld a, $60
	ld l, a
	ld a, $cc
	ld h, a
	call Function118e39
	ld a, $9
	ld [wcd3c], a
	ld a, $1c
	ld [wMobileInactivityTimerSeconds], a
	ld a, $14
	ld [wcd47], a
	call BattleTowerRoomMenu_IncrementJumptable

Function119648:
	; unreachable

Function119665:
	ld a, $1a
	ld [wcd3c], a
	call BattleTowerRoomMenu_IncrementJumptable

Function11966d:
	call BattleTowerRoomMenu2
	ret c
	ld a, [wcd47]
	ld [wcf66], a
	ld a, $a
	ld [wc300], a
	ret

Function11967d:
	ld a, $18
	ld [wcd3c], a
	call BattleTowerRoomMenu_IncrementJumptable

Function119685:
	call BattleTowerRoomMenu2
	ret c
	ld a, $14
	ld [wcf66], a
	ld a, $a
	ld [wc300], a
	ret

Function119694:
	; unreachable


SECTION "Mobile 46 ASCII", ROMX
; A hack to use ascii above.

Function1196cd:
	ld de, $c719
	call Function1196de
	ld [wcd4a], a
	inc de
	call Function1196de
	ld [wcd4b], a
	ret

Function1196de:
	ld a, [de]
	inc de
	; b = ([de] - 48) * 2
	; c = ([de] - 48) * 10
	sub $30
	sla a
	ld b, a
	sla a
	sla a
	add b
	ld c, a
	add hl, bc
	ld a, [de]
	inc de
	sub $30
	add c
	ret

Function1196f2:
	ld hl, wd002
.asm_1196f5
	call Function118b9a
	ret nc
	ld a, [hli]
	cp $d
	jr nz, .asm_1196f5
	ld a, [hl]
	cp $a
	jr nz, .asm_1196f5
	xor a
	ld [hld], a
	ld [hli], a
	ld a, l
	ld [wcd5b], a
	ld a, h
	ld [wcd5c], a
	inc hl
	ld e, l
	ld d, h
	ld a, [de]
	inc de
	cp $d
	jr nz, .asm_119722
	ld a, [de]
	inc de
	cp $a
	jr nz, .asm_119722
	ld a, $b
	jp Function118805

.asm_119722
	call Random
	ld c, $0
	ld b, c
.asm_119728
	call Function119798
	ld a, d
	cp $ff
	jr nz, .asm_119735
	ld a, e
	cp $ff
	jr z, .asm_11974c

.asm_119735
	ldh a, [hRandomSub]
	cp d
	jr c, .asm_11974c
	jr z, .asm_11973e
	jr .asm_119745

.asm_11973e
	ldh a, [hRandomAdd]
	cp e
	jr c, .asm_11974c
	jr z, .asm_11974c

.asm_119745
	inc bc
	ld a, c
	or b
	jr z, .asm_119770
	jr .asm_119728

.asm_11974c
	ld a, [wcd5b]
	ld l, a
	ld a, [wcd5c]
	ld h, a
.asm_119754
	ld a, [hld]
	cp $58
	jr nz, .asm_119754
	ld d, $0
.asm_11975b
	inc d
	ld a, [hld]
	cp $58
	jr z, .asm_11975b
	inc hl
	inc hl
	ld a, d
	dec a
	jr z, .asm_11978e
	dec a
	jr z, .asm_119785
	dec a
	jr z, .asm_11977e
	dec a
	jr z, .asm_119775

.asm_119770
	ld a, $d3
	jp Function118805

.asm_119775
	ld a, b
	and $f0
	swap a
	call Function1197bf
	ld [hli], a

.asm_11977e
	ld a, b
	and $f
	call Function1197bf
	ld [hli], a

.asm_119785
	ld a, c
	and $f0
	swap a
	call Function1197bf
	ld [hli], a

.asm_11978e
	ld a, c
	and $f
	call Function1197bf
	ld [hli], a
	jp BattleTowerRoomMenu_IncrementJumptable

Function119798:
	ld d, $0
	ld e, d
	call Function1197b4
	swap a
	or d
	ld d, a
	call Function1197b4
	or d
	ld d, a
	call Function1197b4
	swap a
	or e
	ld e, a
	call Function1197b4
	or e
	ld e, a
	ret

Function1197b4:
	ld a, [hli]
	cp $61
	jr nc, .asm_1197bc
	sub $30
	ret

.asm_1197bc
	sub $57
	ret

Function1197bf:
	cp $a
	jr nc, .asm_1197c6
	add $30
	ret

.asm_1197c6
	add $57
	ret

Function1197c9:
	ld hl, wd002
	call Function118e39
	ld a, $9
	ld [wcd3c], a
	ld a, $12
	ld [wMobileInactivityTimerSeconds], a
	call BattleTowerRoomMenu_IncrementJumptable

Function1197dc:
	; unreachable

Function119800:
	ld a, $fd
	ld [$c6d0], a
	ld [wOTTrademonSpecies], a
	ld a, [wcd81]
	ld [wc74e], a
	ld a, [wJumptableIndex]
	push af
	ld a, [wcf64]
	push af
	ld a, [wcf65]
	push af
	ld a, [wcf66]
	push af
	ld a, $1
	ldh [rSVBK], a
	call FadeToMenu
	farcall Function10803d
	call Function11a9ce
	call RestartMapMusic
	ld a, $3
	ldh [rSVBK], a
	pop af
	ld [wcf66], a
	pop af
	ld [wcf65], a
	pop af
	ld [wcf64], a
	pop af
	ld [wJumptableIndex], a
	farcall Function115dc3
	jp BattleTowerRoomMenu_IncrementJumptable

BattleTowerRoomMenu_UberRestrictionMessage:
	ld hl, Text_UberRestriction
	call BattleTowerRoomMenu_SetMessage
	call BattleTowerRoomMenu_IncrementJumptable
	jr BattleTowerRoomMenu_WaitForMessage

BattleTowerRoomMenu_PartyMonTopsThisLevelMessage:
	ld hl, Text_PartyMonTopsThisLevel
	call BattleTowerRoomMenu_SetMessage
	call BattleTowerRoomMenu_IncrementJumptable

BattleTowerRoomMenu_WaitForMessage:
	ld a, [$c31a]
	and a
	ret nz
	ld a, $80
	ld [wcd50], a
	call BattleTowerRoomMenu_IncrementJumptable

BattleTowerRoomMenu_DelayRestartMenu:
	; Loops while (--[wcd50] != 0),
	;   to create some sort of "delay" after the message is written on the screen,
	;   before starting the menu again.
	ld hl, wcd50
	dec [hl]
	ret nz
	ld a, $0
	ld [wcf66], a
	ret

BattleTowerRoomMenu_QuitMessage:
	ld a, [wcd38]
	and a
	jr z, .asm_119cd1
	dec a
	jr z, .asm_119cd6
	ld hl, Text_QuitReadingNews
	jr .asm_119cd9

.asm_119cd1
	ld hl, Text_CancelBattleRoomChallenge
	jr .asm_119cd9

.asm_119cd6
	ld hl, Text_ExitGymLeaderHonorRoll

.asm_119cd9
	call BattleTowerRoomMenu_SetMessage
	call BattleTowerRoomMenu_IncrementJumptable

BattleTowerRoomMenu_PlaceYesNoMenu:
	ld a, [$c31a]
	and a
	ret nz
	ld a, $f
	ld [wcd3c], a
	call BattleTowerRoomMenu_IncrementJumptable

BattleTowerRoomMenu_UpdateYesNoMenu:
	; Only ever called when [wcd3c] is $10
	call BattleTowerRoomMenu2
	ret c
	ld a, [wMobileInactivityTimerFrames]
	ld [wcf66], a
	ret

MenuHeader_119cf7:
	db MENU_BACKUP_TILES ; flags
	menu_coords 12, 7, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw NULL
	db 0 ; default option

MenuData_119cff:
	db MENU_BACKUP_TILES ; flags
	menu_coords 15, 7, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw NULL
	db 0 ; default option

String_119d07:
	db "   ▼@"

Strings_L10ToL100:
	db " L:10 @@"
	db " L:20 @@"
	db " L:30 @@"
	db " L:40 @@"
	db " L:50 @@"
	db " L:60 @@"
	db " L:70 @@"
	db " L:80 @@"
	db " L:90 @@"
	db " L:100@@"
	db "CANCEL@@"

Strings_Ll0ToL40:
	db " L:10 @@"
	db " L:20 @@"
	db " L:30 @@"
	db " L:40 @@"
	db "CANCEL@@"

String_119d8c:
	db "CANCEL@"

BattleTower_UbersCheck:
	ldh a, [rSVBK]
	push af
	ld a, [wcd4f]
	cp 70 / 10
	jr nc, .level_70_or_more
	ld a, $1
	ldh [rSVBK], a
	ld hl, wPartyMon1Level
	ld bc, PARTYMON_STRUCT_LENGTH
	ld de, wPartySpecies
	ld a, [wPartyCount]
.loop
	push af
	ld a, [de]
	push de
	push bc
	push hl
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld hl, .ubers
	ld de, 2
	call IsInHalfwordArray
	pop hl
	pop bc
	pop de
	jr nc, .next
.uber
	ld a, [hl]
	cp 70
	jr c, .uber_under_70
.next
	add hl, bc
	inc de
	pop af
	dec a
	jr nz, .loop
.level_70_or_more
	pop af
	ldh [rSVBK], a
	and a
	ret

.ubers
	dw MEWTWO
	dw MEW
	dw LUGIA
	dw HO_OH
	dw CELEBI
	dw -1

.uber_under_70
	pop af
	ld a, [de]
	ld [wNamedObjectIndexBuffer], a
	call GetPokemonName
	ld hl, wStringBuffer1
	ld de, wcd49
	ld bc, MON_NAME_LENGTH
	rst CopyBytes
	ld a, $a
	ld [wcf66], a
	pop af
	ldh [rSVBK], a
	scf
	ret

Function119e2b:
	; unreachable

BattleTowerRoomMenu_IncrementJumptable:
	ld hl, wcf66
	inc [hl]
	ret

BattleTowerRoomMenu2:
	ldh a, [rSVBK]
	ld [wcd8c], a
	ld a, $1
	ldh [rSVBK], a

	call .RunJumptable

	ld a, [wcd8c]
	ldh [rSVBK], a
	ld a, $1
	ldh [hBGMapMode], a
	ret

.RunJumptable:
	jumptable .Jumptable, wcd3c

.Jumptable:
	dw Function119f3f
	dw Function119f45
	dw Function119f56
	dw Function119f76
	dw Function119f98
	dw Function11a113
	dw Function11a129
	dw Function11a131
	dw Function11a13d
	dw Function11a14b
	dw Function11a16d
	dw Function11a192
	dw Function11a2e6
	dw Function11a302
	dw Function11a33a
	dw BattleTowerRoomMenu2_PlaceYesNoMenu
	dw BattleTowerRoomMenu2_UpdateYesNoMenu
	dw Function11a357
	dw Function11a36b
	dw Function11a38d
	dw Function11a3c5
	dw Function11a3d9
	dw Function11a3f9
	dw Function11a41b
	dw Function11a452
	dw Function11a47a
	dw Function11a488
	dw Function11a49e
	dw Function11a4db
	dw Function11a4e8
	dw Function11a4fe
	dw Function11a466
	dw Function11a47a

Function119f3f:
	call Function11a5b9
	jp BattleTowerRoomMenu2_IncrementJumptable

Function119f45:
	hlcoord 4, 2
	ld de, String_11a661
	call PlaceString
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function119f56:
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_119f62
	dec a
	ld [wMobileInactivityTimerMinutes], a
	scf
	ret

.asm_119f62
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a6aa
	call PlaceString
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function119f76:
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_119f82
	dec a
	ld [wMobileInactivityTimerMinutes], a
	scf
	ret

.asm_119f82
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a679
	call PlaceString
	call Function11a5f5
	xor a
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function119f98:
	call Function11a536
	ret c
	call PlayClickSFX
	call ExitMenu
	call ExitMenu
	farcall ReloadMapPart
	ld a, [wMobileInactivityTimerSeconds]
	ld [wcf66], a
	farcall Function115dc3
	ld a, $a
	ld [wc300], a
	scf
	ret

Function11a0ca:
	; unreferenced
	xor a
	ld [wMenuBorderLeftCoord], a
	ld [wMenuBorderTopCoord], a
	ld a, $13
	ld [wMenuBorderRightCoord], a
	ld a, $11
	ld [wMenuBorderBottomCoord], a
	call PushWindow
	farcall Function11765d
	farcall Function17d3f6
	farcall Function106464
	call ExitMenu
	farcall ReloadMapPart
	farcall Function115d99
	ld c, $0
	farcall Function115e18
	ld a, $1
	ld [wc305], a
	ret

Function11a113:
	call Function11a63c
	ld c, $1
	farcall Function115e18
	hlcoord 4, 2
	ld de, String_11a6c8
	call PlaceString
	and a
	ret

Function11a129:
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a131:
	ld hl, wMobileInactivityTimerMinutes
	dec [hl]
	ret nz
	ld a, [wcd3c]
	inc a
	ld [wcd3c], a

Function11a13d:
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a6d2
	call PlaceString
	and a
	ret

Function11a14b:
	ld hl, wcd85
	ld a, [hl]
	cp $f3
	jr nz, .asm_11a155
	and a
	ret

.asm_11a155
	call Function11a1d6
	ret c
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a6f1
	call PlaceString
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a16d:
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_11a179
	dec a
	ld [wMobileInactivityTimerMinutes], a
	scf
	ret

.asm_11a179
	call Function11a63c
	call Function11a1e6
	hlcoord 4, 2
	ld de, $c346
	call PlaceString
	call Function11a5f5
	xor a
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a192:
	call Function11a536
	ret c
	call PlayClickSFX
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr nz, .asm_11a1b6
	call ExitMenu
	farcall ReloadMapPart
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a6d2
	call PlaceString
	and a
	ret

.asm_11a1b6
	call ExitMenu
	farcall ReloadMapPart
	ld a, [wMobileInactivityTimerSeconds]
	ld [wcf66], a
	ld [wcd80], a
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a6d2
	call PlaceString
	scf
	ret

Function11a1d6:
	ld a, [wcd85]
	cp $50
	jr nz, .asm_11a1e4
	ld a, $d3
	call Function118805
	scf
	ret

.asm_11a1e4
	and a
	ret

Function11a1e6:
	ld hl, String_11a706
	ld de, $c346
	call Function11a1ff
	ld hl, wcd85
	call Function11a1ff
	ld hl, String_11a70b
	call Function11a1ff
	ld a, $50
	ld [de], a
	ret

Function11a1ff:
.asm_11a1ff
	ld a, [hli]
	cp $50
	ret z
	ld [de], a
	inc de
	jr .asm_11a1ff

BattleTowerRoomMenu2_PlaceYesNoMenu:
	ld hl, MenuHeader_11a2de
	call LoadMenuHeader
	call MenuBox
	call MenuBoxCoord2Tile
	call ApplyTilemap
	hlcoord 16, 8
	ld de, String_11a2cf
	call PlaceString
	hlcoord 16, 10
	ld de, String_11a2d3
	call PlaceString
	hlcoord 15, 8
	ld a, $ed
	ld [hl], a
	xor a
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

BattleTowerRoomMenu2_UpdateYesNoMenu:
	ld hl, hJoyPressed
	ld a, [hl]
	and A_BUTTON
	jr nz, .a_button
	ld a, [hl]
	and B_BUTTON
	jr nz, .b_button
	ld a, [hl]
	and D_UP
	jr nz, .d_up
	ld a, [hl]
	and D_DOWN
	jr nz, .d_down
.asm_11a24c
	call Function11a9f0
	scf
	ret

.d_up
	xor a
	ld [wcd8a], a
	ld [wcd8b], a
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_11a24c
	xor a
	ld [wMobileInactivityTimerMinutes], a
	hlcoord 15, 8
	ld a, $ed
	ld [hl], a
	hlcoord 15, 10
	ld a, $7f
	ld [hl], a
	jr .asm_11a24c

.d_down
	xor a
	ld [wcd8a], a
	ld [wcd8b], a
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr nz, .asm_11a24c
	inc a
	ld [wMobileInactivityTimerMinutes], a
	hlcoord 15, 8
	ld a, $7f
	ld [hl], a
	hlcoord 15, 10
	ld a, $ed
	ld [hl], a
	jr .asm_11a24c

.a_button
	xor a
	ld [wcd8a], a
	ld [wcd8b], a
	call PlayClickSFX
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr nz, .exit_no_carry
	call ExitMenu
	farcall ReloadMapPart
	ld a, [wMobileInactivityTimerFrames]
	cp $0
	jr z, .asm_11a2b4
	ld a, [wcd47]
	jr .exit_carry

.asm_11a2b4
	ld a, [wcd33]

.exit_carry
	ld [wcf66], a
	ld a, $a
	ld [wc300], a
	scf
	ret

.b_button
	call PlayClickSFX

.exit_no_carry
	call ExitMenu
	farcall ReloadMapPart
	and a
	ret

String_11a2cf:
	db "YES@"

String_11a2d3:
	db "NO@"

MenuHeader_11a2d6:
	db MENU_BACKUP_TILES ; flags
	menu_coords 14, 6, SCREEN_WIDTH - 1, 10
	dw NULL
	db 0 ; default option

MenuHeader_11a2de:
	db MENU_BACKUP_TILES ; flags
	menu_coords 14, 7, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw NULL
	db 0 ; default option

Function11a2e6:
	call Function11a63c
	ld c, $2
	farcall Function115e18
	hlcoord 4, 2
	ld de, String_11a71e
	call PlaceString
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a302:
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_11a30e
	dec a
	ld [wMobileInactivityTimerMinutes], a
	scf
	ret

.asm_11a30e
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a72a
	call PlaceString
	hlcoord 9, 4
	ld de, wcd68
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	hlcoord 14, 4
	ld de, wcd67
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a33a:
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_11a346
	dec a
	ld [wMobileInactivityTimerMinutes], a
	scf
	ret

.asm_11a346
	call ExitMenu
	farcall ReloadMapPart
	farcall Function115dc3
	and a
	ret

Function11a357:
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a743
	call PlaceString
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a36b:
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_11a377
	dec a
	ld [wMobileInactivityTimerMinutes], a
	scf
	ret

.asm_11a377
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a755
	call PlaceString
	call Function11a5f5
	xor a
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a38d:
	call Function11a536
	ret c
	call PlayClickSFX
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr nz, .asm_11a3b1
	call ExitMenu
	farcall ReloadMapPart
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a6d2
	call PlaceString
	and a
	ret

.asm_11a3b1
	call ExitMenu
	farcall ReloadMapPart
	ld a, [wMobileInactivityTimerSeconds]
	ld [wcf66], a
	ld [wcd80], a
	scf
	ret

Function11a3c5:
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a762
	call PlaceString
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a3d9:
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_11a3e5
	dec a
	ld [wMobileInactivityTimerMinutes], a
	scf
	ret

.asm_11a3e5
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a779
	call PlaceString
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a3f9:
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_11a405
	dec a
	ld [wMobileInactivityTimerMinutes], a
	scf
	ret

.asm_11a405
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a755
	call PlaceString
	call Function11a5f5
	xor a
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a41b:
	call Function11a536
	ret c
	call PlayClickSFX
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr nz, .asm_11a43f
	call ExitMenu
	farcall ReloadMapPart
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a6d2
	call PlaceString
	and a
	ret

.asm_11a43f
	call ExitMenu
	farcall ReloadMapPart
	ld a, $1c
	ld [wcf66], a
	ld [wcd80], a
	scf
	ret

Function11a452:
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a791
	call PlaceString
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a466:
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a7c1
	call PlaceString
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a47a:
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_11a486
	dec a
	ld [wMobileInactivityTimerMinutes], a
	scf
	ret

.asm_11a486
	and a
	ret

Function11a488:
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a7ac
	call PlaceString
	call Function11a5f5
	xor a
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a49e:
	call Function11a536
	ret c
	call PlayClickSFX
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr nz, .asm_11a4c7
	call ExitMenu
	farcall ReloadMapPart
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a6d2
	call PlaceString
	ld a, $14
	ld [wcf66], a
	and a
	ret

.asm_11a4c7
	call ExitMenu
	farcall ReloadMapPart
	ld a, [wMobileInactivityTimerFrames]
	ld [wcf66], a
	ld [wcd80], a
	scf
	ret

Function11a4db:
	call Function11a63c
	ld de, String_11a6db
	hlcoord 4, 2
	call PlaceString
	ret

Function11a4e8:
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a7d7
	call PlaceString
	call Function11a5f5
	xor a
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a4fe:
	call Function11a536
	ret c
	call PlayClickSFX
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr nz, .asm_11a522
	call ExitMenu
	farcall ReloadMapPart
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a6d2
	call PlaceString
	and a
	ret

.asm_11a522
	call ExitMenu
	farcall ReloadMapPart
	ld a, [wMobileInactivityTimerSeconds]
	ld [wcf66], a
	ld [wcd80], a
	scf
	ret

Function11a536:
	ld hl, hJoyPressed
	ld a, [hl]
	and $1
	jr nz, .asm_11a5a7
	ld a, [hl]
	and $2
	jr nz, .asm_11a5a2
	ld a, [hl]
	and $40
	jr nz, .asm_11a564
	ld a, [hl]
	and $80
	jr nz, .asm_11a583
.asm_11a54d
	ld a, [wcd3c]
	cp $4
	jr z, .asm_11a562
	call Function11a9f0
	jr nz, .asm_11a562
	call ExitMenu
	farcall ReloadMapPart

.asm_11a562
	scf
	ret

.asm_11a564
	xor a
	ld [wcd8a], a
	ld [wcd8b], a
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_11a54d
	xor a
	ld [wMobileInactivityTimerMinutes], a
	hlcoord 15, 7
	ld a, $ed
	ld [hl], a
	hlcoord 15, 9
	ld a, $7f
	ld [hl], a
	jr .asm_11a54d

.asm_11a583
	xor a
	ld [wcd8a], a
	ld [wcd8b], a
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr nz, .asm_11a54d
	inc a
	ld [wMobileInactivityTimerMinutes], a
	hlcoord 15, 7
	ld a, $7f
	ld [hl], a
	hlcoord 15, 9
	ld a, $ed
	ld [hl], a
	jr .asm_11a54d

.asm_11a5a2
	ld a, $1
	ld [wMobileInactivityTimerMinutes], a

.asm_11a5a7
	xor a
	ld [wcd8a], a
	ld [wcd8b], a
	and a
	ret

BattleTowerRoomMenu2_IncrementJumptable:
	ld a, [wcd3c]
	inc a
	ld [wcd3c], a
	scf
	ret

Function11a5b9:
	xor a
	ld [wMenuBorderLeftCoord], a
	ld [wMenuBorderTopCoord], a
	ld a, $13
	ld [wMenuBorderRightCoord], a
	ld a, $5
	ld [wMenuBorderBottomCoord], a
	call PushWindow
	hlcoord 0, 0, wAttrMap
	ld b, $6
	ld c, $14
	hlcoord 0, 0
	ld b, $4
	ld c, $12
	call Function3eea
	farcall ReloadMapPart
	call UpdateSprites
	ld c, $0
	farcall Function115e18
	ld a, $1
	ld [wc305], a
	ret

Function11a5f5:
	ld a, $e
	ld [wMenuBorderLeftCoord], a
	ld a, $13
	ld [wMenuBorderRightCoord], a
	ld a, $6
	ld [wMenuBorderTopCoord], a
	ld a, $a
	ld [wMenuBorderBottomCoord], a
	call PushWindow
	hlcoord 14, 6, wAttrMap
	ld b, $5
	ld c, $6
	hlcoord 14, 6
	ld b, $3
	ld c, $4
	call Function3eea
	hlcoord 16, 7
	ld de, String_11a2cf
	call PlaceString
	hlcoord 16, 9
	ld de, String_11a2d3
	call PlaceString
	hlcoord 15, 7
	ld a, $ed
	ld [hl], a
	farcall ReloadMapPart
	ret

Function11a63c:
	hlcoord 4, 1
	ld de, String_11a7f4
	call PlaceString
	hlcoord 4, 2
	ld de, String_11a7f4
	call PlaceString
	hlcoord 4, 3
	ld de, String_11a7f4
	call PlaceString
	hlcoord 4, 4
	ld de, String_11a7f4
	call PlaceString
	ret

String_11a661:
	db   "これから　モバイルセンターに"
	next "でんわ<WO>かけます@"

String_11a679:
	db   "モバイルアダプタ<NO>じゅんびは"
	next "できて　いますか？@"

String_11a6aa:
	db   "でんわをかけると　つうわりょう"
	next "せつぞくりょう<GA>かかります@"

String_11a6c8:
	db   "せつぞく　しました@"

String_11a6d2:
	db   "つうしん　ちゅう@"

String_11a6db:
	db   "つうしん　ちゅう"
	next "セレクト　エーでちゅうし@"

String_11a6f1:
	db   "この　サービスには"
	next "つうわりょう<NO>ほかに@"

String_11a706:
	db   "おかね<GA>@"

String_11a70b:
	db   "えん"
	next "かかります　よろしい　ですか？@"

String_11a71e:
	db   "つうしん　しゅうりょう@"

String_11a72a:
	db   "つないだ　じかん"
	next "　　やく　　　ふん　　　びょう@"

String_11a743:
	db   "もっていない　データが"
	next "あります！@"

String_11a755:
	db   "データ<WO>よみこみますか？@"

String_11a762:
	db   "おなじ　データ<WO>よみこんだ"
	next "こと<GA>ありますが@"

String_11a779:
	db   "そのデータ<WA>なくなっているか"
	next "こわれて　います@"

String_11a791:
	db   "もっている　データと"
	next "おなじデータしか　ありません！@"

String_11a7ac:
	db   "データ<NO>よみこみを"
	next "ちゅうし　しますか？@"

String_11a7c1:
	db   "あたらしい　ニュースは"
	next "ありません　でした@"

String_11a7d7:
	db   "あたらしいニュース<GA>あります"
	next "ニュース<WO>よみこみますか？@"

String_11a7f4:
	db   "　　　　　　　　　　　　　　　@"

MenuHeader_11a804:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, SCREEN_WIDTH - 1, 5
	dw NULL
	db 0 ; default option

Function11a80c:
	ld de, hDivisor
	ld bc, hDividend
	ld hl, Unknown_11a89a
	call Function11a88c
	ld bc, hQuotient + 1
	ld hl, Unknown_11a8ba
	call Function11a88c
	ld bc, hPrintNumBuffer + 2
	ld hl, Unknown_11a8da
	call Function11a88c
	xor a
	ld b, a
	ldh a, [hDivisor]
	and $f
	ld e, a
	ldh a, [hPrintNumBuffer + 6]
	and $f
	call Function11a884
	ld e, a
	ldh a, [hPrintNumBuffer + 8]
	and $f
	call Function11a884
	ld [wcd62], a
	ld e, b
	xor a
	ld b, a
	ldh a, [hDivisor]
	and $f0
	swap a
	call Function11a884
	ld e, a
	ldh a, [hPrintNumBuffer + 6]
	and $f0
	swap a
	call Function11a884
	ld e, a
	ldh a, [hPrintNumBuffer + 8]
	and $f0
	swap a
	call Function11a884
	ld [wcd63], a
	ld e, b
	xor a
	ld b, a
	ldh a, [hMathBuffer]
	and $f
	call Function11a884
	ld e, a
	ldh a, [hPrintNumBuffer + 7]
	and $f
	call Function11a884
	ld e, a
	ldh a, [hPrintNumBuffer + 9]
	and $f
	call Function11a884
	ld [wcd64], a
	ret

Function11a884:
	add e
	cp $a
	ret c
	sub $a
	inc b
	ret

Function11a88c:
	ld a, [bc]
	sla a
	ld c, a
	xor a
	ld b, a
	add hl, bc
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	inc de
	ret

Unknown_11a89a:
for x, 0, 16**1, 16**0
	bcd x % 100, x / 100
endr

Unknown_11a8ba:
for x, 0, 16**2, 16**1
	bcd x % 100, x / 100
endr

Unknown_11a8da:
for x, 0, 16**3, 16**2
	bcd x % 100, x / 100
endr

BattleTowerRoomMenu_WriteMessage:
	jumptable .Jumptable, $c31a

.Jumptable:
	dw BattleTowerRoomMenu_WriteMessage_DoNothing
	dw Function11a90f
	dw Function11a971

Function11a90f:
	ld a, $1
	ldh [rSVBK], a
	call SpeechTextbox
	ld a, $50
	ld hl, $c320
	ld bc, $008c
	call ByteFill
	ld a, [$c31b]
	ld l, a
	ld a, [$c31c]
	ld h, a
	ld de, $c320
.asm_11a92c
	ld a, [hli]
	cp $57
	jr z, .asm_11a94f
	cp $0
	jr z, .asm_11a92c
	cp $50
	jr z, .asm_11a92c
	cp $1
	jr z, .asm_11a941
	ld [de], a
	inc de
	jr .asm_11a92c

.asm_11a941
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
.asm_11a945
	ld a, [bc]
	inc bc
	cp $50
	jr z, .asm_11a92c
	ld [de], a
	inc de
	jr .asm_11a945

.asm_11a94f
	xor a
	ld [$c31f], a
	ld a, LOW($c320)
	ld [$c31b], a
	ld a, HIGH($c320)
	ld [$c31c], a
	hlcoord 1, 14
	ld a, l
	ld [$c31d], a
	ld a, h
	ld [$c31e], a
	ld hl, $c31a
	inc [hl]
	ld a, $3
	ldh [rSVBK], a

BattleTowerRoomMenu_WriteMessage_DoNothing:
	ret

Function11a971:
	ld hl, $c31f
	ldh a, [hJoyDown]
	and a
	jr nz, .asm_11a97f
	ld a, [hl]
	and a
	jr z, .asm_11a97f
	dec [hl]
	ret

.asm_11a97f
	ld a, [wOptions]
	and $7
	ld [hl], a
	ld hl, wcd8d
	ld a, [$c31b]
	ld e, a
	ld a, [$c31c]
	ld d, a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, e
	ld [$c31b], a
	ld a, d
	ld [$c31c], a
	ld a, $50
	ld [hl], a
	ld a, [$c31d]
	ld l, a
	ld a, [$c31e]
	ld h, a
	ld de, wcd8d
	call PlaceString
	ld a, c
	ld [$c31d], a
	ld a, b
	ld [$c31e], a
	ld a, [wcd8d]
	cp $50
	jr nz, .asm_11a9bf
	xor a
	ld [$c31a], a

.asm_11a9bf
	ret

BattleTowerRoomMenu_SetMessage:
	ld a, l
	ld [$c31b], a
	ld a, h
	ld [$c31c], a
	ld a, $1
	ld [$c31a], a
	ret

Function11a9ce:
	call ClearBGPalettes
	call ReloadTilesetAndPalettes
	call ExitMenu
	farcall Function106464
	farcall FinishExitMenu
	jp UpdateSprites

Function11a9f0:
	ld a, $1
	and a
	ret

Function11a9f4:
	ld a, [wcd8a]
	ld l, a
	ld a, [wcd8b]
	ld h, a
	inc hl
	ld a, l
	ld [wcd8a], a
	ld a, h
	ld [wcd8b], a
	ld de, $d5d0
	add hl, de
	bit 7, h
	ret nz
	ld a, $d6
	call Function118805
	and a
	ret

Text_SaveFileWillBeSent:
	text "SAVE FILE will be"
	line "sent."
	done

Text_SentSaveFileReadingNews:
	text "Sent SAVE FILE."
	line "Reading NEWS…"
	done

Text_ReadingNews:
	text "Reading NEWS…"
	done

Text_ReceivedNews:
	text "Received NEWS!"
	done

Text_QuitReadingNews:
	text "Quit reading NEWS?"
	done

Text_CanceledSendingSaveFile:
	text "Canceled sending"
	line "SAVE FILE."
	done

Text_ReceivedOddEgg:
	text "ODD EGG"
	line "was received!"
	done

Text_BattleRoomVisitLimit:
	text "One visit per day"
	line "per BATTLE ROOM!"
	done

Text_PartyMonTopsThisLevel:
	text "A party #MON"
	line "tops this level."
	done

Text_UberRestriction:
	text_ram wcd49
	text " may go"
	line "only to BATTLE"

	para "ROOMS that are"
	line "Lv.70 or higher."
	done

Text_CancelBattleRoomChallenge:
	text "Cancel your BATTLE"
	line "ROOM challenge?"
	done

Text_ExitGymLeaderHonorRoll:
	text "Exit GYM LEADER"
	line "HONOR ROLL?"
	done

Text_LinkingWithCenter:
	text "Linking with the"
	line "CENTER…"
	done

Text_WhatLevelDoYouWantToChallenge:
	text "What level do you"
	line "want to challenge?"
	done

Text_CheckBattleRoomListByMaxLevel:
	text "Check BATTLE ROOM"
	line "list by max level?"
	done

Text_EnterWhichBattleRoom:
	text "Enter which"
	line "BATTLE ROOM?"
	done

Text_WhichBattleRoom:
	text "Which BATTLE ROOM?"
	done

Text_ThisBattleRoomPleaseWait:
	text_ram wStringBuffer3
	text "'s ROOM"
	line "@"
	text_ram wStringBuffer4
	text "?"
	cont "Please wait…"
	done
