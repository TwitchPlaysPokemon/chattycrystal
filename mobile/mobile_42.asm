SECTION "Mobile 42", ROMX

Function108026:
	ld a, $0
	jr asm_10802c

Function10802a:
	ld a, $1

asm_10802c:
	ld [wcf65], a
	ld de, .TradeAnimScript
	jp RunMobileTradeAnim_Frontpics

.TradeAnimScript: ; trade
	mobiletradeanim_showgivemon
	mobiletradeanim_12
	mobiletradeanim_02
	mobiletradeanim_sendmon
	mobiletradeanim_05
	mobiletradeanim_receivemon
	mobiletradeanim_showgetmon
	mobiletradeanim_end


Function10804d:
	ld a, $0
	ld [wcf65], a
	ld de, .TradeAnimScript
	jp RunMobileTradeAnim_NoFrontpics

.TradeAnimScript:
	mobiletradeanim_11
	mobiletradeanim_showgtsgetmon
	mobiletradeanim_end

RunMobileTradeAnim_Frontpics:
	ld hl, wTradeAnimAddress
	ld [hl], e
	inc hl
	ld [hl], d
	ldh a, [hMapAnims]
	push af
	xor a
	ldh [hMapAnims], a
	ld hl, wVramState
	ld a, [hl]
	push af
	res 0, [hl]
	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	call Function1080b7
.loop
	call MobileTradeAnim_JumptableLoop
	jr nc, .loop
	pop af
	ld [wOptions], a
	pop af
	ld [wVramState], a
	pop af
	ldh [hMapAnims], a
	ret

RunMobileTradeAnim_NoFrontpics:
	ld hl, wTradeAnimAddress
	ld [hl], e
	inc hl
	ld [hl], d
	ldh a, [hMapAnims]
	push af
	xor a
	ldh [hMapAnims], a
	ld hl, wVramState
	ld a, [hl]
	push af
	res 0, [hl]
	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	call Function108157
.loop
	call MobileTradeAnim_JumptableLoop
	jr nc, .loop
	pop af
	ld [wOptions], a
	pop af
	ld [wVramState], a
	pop af
	ldh [hMapAnims], a
	ret

Function1080b7:
	xor a
	ld [wJumptableIndex], a
	call ClearBGPalettes
	call ClearSprites
	call ClearTileMap
	call DisableLCD
	call MobileTradeAnim_ClearTiles
	call MobileTradeAnim_ClearBGMap
	call LoadStandardFont
	call LoadFontsBattleExtra

	ld a, $1
	ldh [rVBK], a
	ld hl, LZ_108da7
	ld de, vTiles2
	call Decompress

	ld a, $0
	ldh [rVBK], a
	ld hl, LZ_108d27
	ld de, vTiles0 tile $20
	call Decompress

	call EnableLCD

	xor a
	ldh [hSCX], a
	ldh [hSCY], a
	ld a, $7
	ldh [hWX], a
	ld a, $90
	ldh [hWY], a
	farcall ClearSpriteAnims

	call DelayFrame

	ld de, TradeBallGFX
	ld hl, vTiles0
	lb bc, BANK(TradeBallGFX), 6
	call Request2bpp

	ld de, TradePoofGFX
	ld hl, vTiles0 tile $06
	lb bc, BANK(TradePoofGFX), 12
	call Request2bpp

	xor a
	ld hl, wSpriteAnimDict
	ld [hli], a
	ld [hl], $0

	ld a, [wPlayerTrademonSpecies]
	ld hl, wPlayerTrademonDVs
	ld de, vTiles0 tile $30
	call MobileTradeAnim_GetFrontpic

	ld a, [wOTTrademonSpecies]
	ld hl, wOTTrademonDVs
	ld de, vTiles2 tile $31
	call MobileTradeAnim_GetFrontpic

	ld a, [wPlayerTrademonSpecies]
	ld de, wPlayerTrademonSpeciesName
	call MobileTradeAnim_InitSpeciesName

	ld a, [wOTTrademonSpecies]
	ld de, wOTTrademonSpeciesName
	call MobileTradeAnim_InitSpeciesName

	xor a
	call Function108b98
	jp Function108af4

Function108157:
	xor a
	ld [wJumptableIndex], a
	call ClearBGPalettes
	call ClearSprites
	call ClearTileMap
	call DisableLCD
	call MobileTradeAnim_ClearTiles
	call MobileTradeAnim_ClearBGMap
	call LoadStandardFont
	call LoadFontsBattleExtra
	call EnableLCD
	xor a
	ldh [hSCX], a
	ldh [hSCY], a
	ld a, $7
	ldh [hWX], a
	ld a, $90
	ldh [hWY], a
	farcall ClearSpriteAnims
	xor a
	ld hl, wSpriteAnimDict
	ld [hli], a
	ld [hl], $0
	call DelayFrame
	ld a, [wPlayerTrademonSpecies]
	ld de, wPlayerTrademonSpeciesName
	call MobileTradeAnim_InitSpeciesName
	ld a, [wOTTrademonSpecies]
	ld de, wOTTrademonSpeciesName
	call MobileTradeAnim_InitSpeciesName
	xor a
	call Function108b98
	jp Function108af4

MobileTradeAnim_ClearTiles:
	ld a, $1
	ldh [rVBK], a
	ld hl, vTiles0
	ld bc, 3 * $80 tiles
	xor a
	call ByteFill
	ld a, $0
	ldh [rVBK], a
	ld hl, vTiles0
	ld bc, 3 * $80 tiles
	xor a
	jp ByteFill

MobileTradeAnim_ClearBGMap:
	ld a, $1
	ldh [rVBK], a
	hlbgcoord 0, 0
	ld bc, 2 * BG_MAP_HEIGHT * BG_MAP_WIDTH
	ld a, $0
	call ByteFill
	ld a, $0
	ldh [rVBK], a
	hlbgcoord 0, 0
	ld bc, 2 * BG_MAP_HEIGHT * BG_MAP_WIDTH
	ld a, $7f
	jp ByteFill

MobileTradeAnim_GetFrontpic:
	push de
	push af
	predef GetCurrentForme
	pop af
	ld [wCurPartySpecies], a
	ld [wCurSpecies], a
	call GetBaseData
	pop de
	predef GetMonFrontpic
	ret

Function108201:
	push de
	push af
	predef GetCurrentForme
	pop af
	ld [wCurPartySpecies], a
	ld [wCurSpecies], a
	call GetBaseData
	pop de
	predef GetAnimatedFrontpic
	ret

Function108219:
	ld [wCurPartySpecies], a
	hlcoord 7, 2
	ld d, $0
	ld e, ANIM_MON_TRADE
	predef AnimateFrontpic
	ret

Function108229:
	ld [wCurPartySpecies], a
	hlcoord 7, 2
	ld d, $0
	ld e, ANIM_MON_TRADE
	predef LoadMonAnimation
	ret

MobileTradeAnim_InitSpeciesName:
	push de
	ld [wNamedObjectIndexBuffer], a
	call GetPokemonName
	ld hl, wStringBuffer1
	pop de
	ld bc, MON_NAME_LENGTH
	rst CopyBytes
	ret

MobileTradeAnim_JumptableLoop:
	ld a, [wJumptableIndex]
	bit 7, a
	jr nz, .StopAnim
	call .ExecuteMobileTradeAnimCommand
	call DelayFrame
	and a
	ret

.StopAnim:
	xor a
	ldh [hSCX], a
	ldh [hSCY], a
	ld a, $7
	ldh [hWX], a
	ld a, $90
	ldh [hWY], a
	call LoadStandardFont
	call LoadFontsBattleExtra
	farcall Function106464
	scf
	ret

.ExecuteMobileTradeAnimCommand:
	ld a, [wJumptableIndex]
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
	dw GetMobileTradeAnimByte ; 00
	dw MobileTradeAnim_ShowPlayerMonToBeSent ; 01
	dw MobileTradeAnim_02 ; 02
	dw MobileTradeAnim_GiveTrademon1 ; 03
	dw MobileTradeAnim_GiveTrademon2 ; 04
	dw MobileTradeAnim_05 ; 05
	dw MobileTradeAnim_06 ; 06
	dw MobileTradeAnim_07 ; 07
	dw MobileTradeAnim_GetTrademon1 ; 08
	dw MobileTradeAnim_GetTrademon2 ; 09
	dw MobileTradeAnim_GetTrademon3 ; 0a
	dw MobileTradeAnim_ShowOTMonFromTrade ; 0b
	dw EndMobileTradeAnim ; 0c
	dw MobileTradeAnim_ShowPlayerMonForGTS ; 0d
	dw MobileTradeAnim_ShowOTMonFromGTS ; 0e
	dw MobileTradeAnim_0f ; 0f
	dw MobileTradeAnim_10 ; 10
	dw MobileTradeAnim_11 ; 11
	dw MobileTradeAnim_FadeToBlack ; 12
	dw MobileTradeAnim_GetOddEgg ; 13 get odd egg

MobileTradeAnim_Next:
	ld hl, wJumptableIndex
	inc [hl]
	ret

GetMobileTradeAnimByte:
	ld hl, wTradeAnimAddress
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld a, [de]
	ld [wJumptableIndex], a
	inc de
	ld [hl], d
	dec hl
	ld [hl], e
	ret

EndMobileTradeAnim:
	ld hl, wJumptableIndex
	set 7, [hl]
	ret

WaitMobileTradeSpriteAnims:
.loop
	push bc
	farcall PlaySpriteAnimations
	pop bc
	call DelayFrame
	dec c
	jr nz, .loop
	ret

Function1082db:
.loop
	farcall PlaySpriteAnimations
	farcall SetUpPokeAnim
	farcall HDMATransferTileMapToWRAMBank3
	jr nc, .loop
	ret

Function1082f0:
.loop
	call Function108b78
	call DelayFrame
	dec c
	jr nz, .loop
	ret

Function1082fa:
.loop
	call Function108b78
	push hl
	push bc
	farcall PlaySpriteAnimations
	pop bc
	pop hl
	call DelayFrame
	dec c
	jr nz, .loop
	ret

MobileTradeAnim_ShowPlayerMonToBeSent:
	ld de, MUSIC_EVOLUTION
	call PlayMusic2
	ld a, $80
	ldh [hSCX], a
	xor a
	ldh [hSCY], a
	ld a, $87
	ldh [hWX], a
	ld a, $50
	ldh [hWY], a
	call MobileTradeAnim_DisplayMonToBeSent
	ld a, [wPlayerTrademonSpecies]
	ld [wCurPartySpecies], a
	call Function10895e
	ld a, [wPlayerTrademonDVs]
	ld [wTempMonDVs], a
	ld a, [wPlayerTrademonDVs + 1]
	ld [wTempMonDVs + 1], a
	ld b, SCGB_PLAYER_OR_MON_FRONTPIC_PALS
	call GetSGBLayout
	ld a, %11100100 ; 3,2,1,0
	call DmgToCgbBGPals
	call WaitBGMap
.loop
	ldh a, [hWX]
	cp $7
	jr z, .okay
	sub $4
	ldh [hWX], a
	ldh a, [hSCX]
	sub $4
	ldh [hSCX], a
	call DelayFrame
	jr .loop

.okay
	ld a, $7
	ldh [hWX], a
	xor a
	ldh [hSCX], a
	ld a, [wPlayerTrademonSpecies]
	call GetCryIndex
	jr c, .skip_cry
	ld e, c
	ld d, b
	call PlayCry

.skip_cry
	ld c, 80
	call DelayFrames
	call Function108bec
	depixel 10, 11, 4, 0
	ld a, SPRITE_ANIM_INDEX_MOBILE_TRADE_SENT_BALL
	call _InitSpriteAnimStruct
	ld de, SFX_BALL_POOF
	call PlaySFX
	hlcoord 0, 0
	ld bc, 12 * SCREEN_WIDTH
	ld a, " "
	call ByteFill
	ld c, 80
	call WaitMobileTradeSpriteAnims
	jp GetMobileTradeAnimByte

MobileTradeAnim_ShowOTMonFromTrade:
	call ClearBGPalettes
	call ClearSprites
	call ClearTileMap
	call DisableLCD
	call MobileTradeAnim_ClearBGMap
	ld a, [wOTTrademonSpecies]
	ld [wCurPartySpecies], a
	ld hl, wOTTrademonDVs
	ld de, vTiles2
	call Function108201
	call EnableLCD
	farcall DeinitializeAllSprites
	xor a
	ldh [hSCX], a
	ldh [hSCY], a
	ld a, $7
	ldh [hWX], a
	ld a, $90
	ldh [hWY], a
	depixel 10, 11, 4, 0
	ld a, SPRITE_ANIM_INDEX_MOBILE_TRADE_OT_BALL
	call _InitSpriteAnimStruct
	call Function108b45
	ld a, $1
	call Function108b98
	call Function108af4
	ld c, 48
	call WaitMobileTradeSpriteAnims
	ld de, SFX_BALL_POOF
	call PlaySFX
	call MobileTradeAnim_DisplayReceivedMon
	xor a
	ldh [hSCX], a
	ldh [hSCY], a
	ld a, $7
	ldh [hWX], a
	ld a, $50
	ldh [hWY], a
	ld a, [wOTTrademonSpecies]
	ld [wCurPartySpecies], a
	ld a, [wOTTrademonDVs]
	ld [wTempMonDVs], a
	ld a, [wOTTrademonDVs + 1]
	ld [wTempMonDVs + 1], a
	ld b, SCGB_PLAYER_OR_MON_FRONTPIC_PALS
	call GetSGBLayout
	ld a, %11100100 ; 3,2,1,0
	call DmgToCgbBGPals
	call Function108963
	ld a, [wOTTrademonSpecies]
	call Function108229
	call Function1082db
	call Function108c16
	jp GetMobileTradeAnimByte

MobileTradeAnim_ShowPlayerMonForGTS:
	ld de, MUSIC_EVOLUTION
	call PlayMusic2
	ld a, $80
	ldh [hSCX], a
	xor a
	ldh [hSCY], a
	ld a, $87
	ldh [hWX], a
	ld a, $50
	ldh [hWY], a
	call MobileTradeAnim_DisplayMonToBeSent
	ld a, [wPlayerTrademonSpecies]
	ld [wCurPartySpecies], a
	ld hl, wPlayerTrademonDVs
	call Function10898a
	call DelayFrame
	ld de, TradeBallGFX
	ld hl, vTiles0
	lb bc, BANK(TradeBallGFX), 6
	call Request2bpp
	ld de, TradePoofGFX
	ld hl, vTiles0 tile $06
	lb bc, BANK(TradePoofGFX), 12
	call Request2bpp
	ld a, [wPlayerTrademonDVs]
	ld [wTempMonDVs], a
	ld a, [wPlayerTrademonDVs + 1]
	ld [wTempMonDVs + 1], a
	ld b, SCGB_PLAYER_OR_MON_FRONTPIC_PALS
	call GetSGBLayout
	ld a, %11100100 ; 3,2,1,0
	call DmgToCgbBGPals
	call WaitBGMap
.loop
	ldh a, [hWX]
	cp $7
	jr z, .done
	sub $4
	ldh [hWX], a
	ldh a, [hSCX]
	sub $4
	ldh [hSCX], a
	call DelayFrame
	jr .loop

.done
	ld a, $7
	ldh [hWX], a
	xor a
	ldh [hSCX], a
	ld a, [wPlayerTrademonSpecies]
	call GetCryIndex
	jr c, .skip_cry
	ld e, c
	ld d, b
	call PlayCry

.skip_cry
	ld c, 80
	call DelayFrames
	call Function108c2b
	depixel 10, 11, 4, 0
	ld a, SPRITE_ANIM_INDEX_MOBILE_TRADE_SENT_BALL
	call _InitSpriteAnimStruct
	ld de, SFX_BALL_POOF
	call PlaySFX
	hlcoord 0, 0
	ld bc, 12 * SCREEN_WIDTH
	ld a, " "
	call ByteFill
	ld c, 80
	call WaitMobileTradeSpriteAnims
	jp GetMobileTradeAnimByte

MobileTradeAnim_ShowOTMonFromGTS:
	call ClearBGPalettes
	call ClearSprites
	call ClearTileMap
	call DisableLCD
	call MobileTradeAnim_ClearBGMap
	ld a, [wOTTrademonSpecies]
	ld [wCurPartySpecies], a
	ld hl, wOTTrademonDVs
	ld de, vTiles2
	call Function108201
	call EnableLCD
	farcall DeinitializeAllSprites
	call DelayFrame
	ld de, TradeBallGFX
	ld hl, vTiles0
	lb bc, BANK(TradeBallGFX), 6
	call Request2bpp
	ld de, TradePoofGFX
	ld hl, vTiles0 tile $06
	lb bc, BANK(TradePoofGFX), 12
	call Request2bpp
	xor a
	ldh [hSCX], a
	ldh [hSCY], a
	ld a, $7
	ldh [hWX], a
	ld a, $90
	ldh [hWY], a
	depixel 10, 11, 4, 0
	ld a, SPRITE_ANIM_INDEX_MOBILE_TRADE_OT_BALL
	call _InitSpriteAnimStruct
	call Function108b45
	ld a, $1
	call Function108b98
	call Function108af4
	ld c, 48
	call WaitMobileTradeSpriteAnims
	ld de, SFX_BALL_POOF
	call PlaySFX
	call MobileTradeAnim_DisplayReceivedMon
	xor a
	ldh [hSCX], a
	ldh [hSCY], a
	ld a, $7
	ldh [hWX], a
	ld a, $50
	ldh [hWY], a
	ld a, [wOTTrademonSpecies]
	ld [wCurPartySpecies], a
	ld a, [wOTTrademonDVs]
	ld [wTempMonDVs], a
	ld a, [wOTTrademonDVs + 1]
	ld [wTempMonDVs + 1], a
	ld b, SCGB_PLAYER_OR_MON_FRONTPIC_PALS
	call GetSGBLayout
	ld a, %11100100 ; 3,2,1,0
	call DmgToCgbBGPals
	ld a, [wOTTrademonSpecies]
	ld hl, wOTTrademonDVs
	call Function10898a
	ld a, [wOTTrademonSpecies]
	call Function108229
	call Function1082db
	call Function108c40
	jp GetMobileTradeAnimByte

MobileTradeAnim_GetOddEgg:
	; unreachable

MobileTradeAnim_02:
	farcall DeinitializeAllSprites
	call ClearBGPalettes
	call ClearSprites
	call ClearTileMap
	xor a
	ldh [hBGMapMode], a
	call DisableLCD
	call MobileTradeAnim_ClearBGMap
	call Function108c80
	call Function108c6d
	call EnableLCD
	ld a, $c
	ldh [hSCX], a
	ld a, $78
	ldh [hSCY], a
	ld a, $7
	ldh [hWX], a
	ld a, $90
	ldh [hWY], a
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld hl, Palette_109107
	ld de, wBGPals1
	ld bc, 8 palettes
	rst CopyBytes
	pop af
	ldh [rSVBK], a
	call Function108d07
	call Function108af4
	jp GetMobileTradeAnimByte

MobileTradeAnim_10:
	farcall DeinitializeAllSprites
	call ClearBGPalettes
	call ClearSprites
	call ClearTileMap
	xor a
	ldh [hBGMapMode], a
	call DisableLCD
	call MobileTradeAnim_ClearBGMap
	ld a, $1
	ldh [rVBK], a
	ld hl, LZ_108da7
	ld de, vTiles2
	call Decompress
	ld a, $0
	ldh [rVBK], a
	ld hl, LZ_108d27
	ld de, vTiles0 tile $20
	call Decompress
	call Function108c80
	call Function108c6d
	call EnableLCD
	ld a, $c
	ldh [hSCX], a
	ld a, $78
	ldh [hSCY], a
	ld a, $7
	ldh [hWX], a
	ld a, $90
	ldh [hWY], a
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld hl, Palette_109107
	ld de, wBGPals1
	ld bc, 8 palettes
	rst CopyBytes
	pop af
	ldh [rSVBK], a
	call Function108d07
	call Function108af4
	jp GetMobileTradeAnimByte

MobileTradeAnim_11:
	call ClearBGPalettes
	call ClearSprites
	call ClearTileMap
	xor a
	ldh [hBGMapMode], a
	call DisableLCD
	ld a, $1
	ldh [rVBK], a
	ld hl, LZ_108da7
	ld de, vTiles2
	call Decompress
	ld a, $0
	ldh [rVBK], a
	ld hl, LZ_108d27
	ld de, vTiles0 tile $20
	call Decompress
	call Function108c80
	call Function108c6d
	call EnableLCD
	ld a, $80
	ldh [hSCX], a
	ld a, $90
	ldh [hSCY], a
	ld a, $7
	ldh [hWX], a
	ld a, $90
	ldh [hWY], a
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld hl, Palette_109107
	ld de, wBGPals1
	ld bc, 8 palettes
	rst CopyBytes
	pop af
	ldh [rSVBK], a
	call Function108d07
	call Function108af4
	call Function108b5a
	ld a, $e0
	ldh [hSCX], a
	ld de, MUSIC_EVOLUTION
	call PlayMusic2
	jp GetMobileTradeAnimByte

MobileTradeAnim_GiveTrademon1:
	ld de, SFX_GIVE_TRADEMON
	call PlaySFX
	ld c, 40
	ld hl, wBGPals2 palette 6
	call Function1082f0
	call Function108af4
.loop
	ldh a, [hSCX]
	cp $e0
	jr z, .loop2
	dec a
	dec a
	ldh [hSCX], a
	cp $f8
	jr nz, .next
	depixel 10, 11, 4, 0
	ld a, SPRITE_ANIM_INDEX_MOBILE_TRADE_CABLE_BULGE
	call _InitSpriteAnimStruct

.next
	ld c, 1
	call WaitMobileTradeSpriteAnims
	jr .loop

.loop2
	ldh a, [hSCY]
	cp $f8
	jr z, .done
	dec a
	dec a
	ldh [hSCY], a
	cp $40
	jr z, .init
	cp $30
	jr z, .delete
	cp $68
	jr z, .replace
	jr .next2

.init
	depixel 10, 11, 4, 0
	ld a, SPRITE_ANIM_INDEX_MOBILE_TRADE_CABLE_BULGE
	call _InitSpriteAnimStruct
	xor a
	call Function108ad4
	jr .next2

.delete
	call MobileTradeAnim_DeleteSprites
	jr .next2

.replace
	call MobileTradeAnim_DeleteSprites
	ld a, $1
	call Function108ad4
.next2
	ld c, 1
	call WaitMobileTradeSpriteAnims
	jr .loop2

.done
	jp MobileTradeAnim_Next

MobileTradeAnim_GiveTrademon2:
	ld c, 40
	ld hl, wBGPals2 + 1 palettes
	call Function1082f0
	call Function108af4
	call Function108b5a
	depixel 9, 10, 2, 0
	ld a, SPRITE_ANIM_INDEX_MOBILE_TRADE_PING
	call _InitSpriteAnimStruct
	ld de, SFX_FORESIGHT
	call PlaySFX
	ld c, 10
	call WaitMobileTradeSpriteAnims
	xor a
	ld [wcf64], a
	depixel 9, 10, 2, 0
	ld a, SPRITE_ANIM_INDEX_MOBILE_TRADE_SENT_PULSE
	call _InitSpriteAnimStruct
.loop
	ldh a, [hSCY]
	cp $90
	jr z, .done
	sub $8
	ldh [hSCY], a
	ld c, 1
	call WaitMobileTradeSpriteAnims
	jr .loop

.done
	jp GetMobileTradeAnimByte

MobileTradeAnim_05:
	ld c, 40
	call WaitMobileTradeSpriteAnims
	ld a, $1
	ld [wcf64], a
	ld de, SFX_SHARPEN
	call PlaySFX
	ld c, 60
	call WaitMobileTradeSpriteAnims
	depixel 30, 10, 2, 0
	ld a, SPRITE_ANIM_INDEX_MOBILE_TRADE_OT_PULSE
	call _InitSpriteAnimStruct
	call GetMobileTradeAnimByte
	ld de, SFX_THROW_BALL
	jp PlaySFX

MobileTradeAnim_06:
	ld c, 40
	call WaitMobileTradeSpriteAnims
	ld a, $1
	ld [wcf64], a
	ld de, SFX_SHARPEN
	call PlaySFX
	jp GetMobileTradeAnimByte

MobileTradeAnim_07:
	ld c, 80
	call DelayFrames
	depixel 30, 10, 2, 0
	ld a, SPRITE_ANIM_INDEX_MOBILE_TRADE_OT_PULSE
	call _InitSpriteAnimStruct
	call GetMobileTradeAnimByte
	ld de, SFX_THROW_BALL
	jp PlaySFX

MobileTradeAnim_GetTrademon1:
	ld c, 40
	call WaitMobileTradeSpriteAnims
.loop
	ldh a, [hSCY]
	cp $f8
	jr z, .done
	add $8
	ldh [hSCY], a
	ld c, 1
	call WaitMobileTradeSpriteAnims
	jr .loop

.done
	farcall DeinitializeAllSprites
	depixel 9, 10, 2, 0
	ld a, SPRITE_ANIM_INDEX_MOBILE_TRADE_PING
	call _InitSpriteAnimStruct
	ld de, SFX_GLASS_TING_2
	call PlaySFX
	call Function108af4
	jp MobileTradeAnim_Next

MobileTradeAnim_GetTrademon2:
	ld c, 20
	ld hl, wBGPals2 + 1 palettes
	call Function1082fa
	ld de, SFX_GIVE_TRADEMON
	call PlaySFX
	ld c, 20
	ld hl, wBGPals2 + 1 palettes
	call Function1082fa
	call Function108af4
.asm_1088ad
	ldh a, [hSCY]
	cp $78
	jr z, .asm_1088ee
	inc a
	inc a
	ldh [hSCY], a
	cp $30
	jr z, .asm_1088c5
	cp $40
	jr z, .asm_1088dd
	cp $68
	jr z, .asm_1088cf
	jr .asm_1088e7

.asm_1088c5
	depixel 10, 11, 4, 0
	ld a, SPRITE_ANIM_INDEX_MOBILE_TRADE_CABLE_BULGE
	call _InitSpriteAnimStruct
	jr .asm_1088e7

.asm_1088cf
	depixel 10, 11, 4, 0
	ld a, SPRITE_ANIM_INDEX_MOBILE_TRADE_CABLE_BULGE
	call _InitSpriteAnimStruct
	xor a
	call Function108ad4
	jr .asm_1088e7

.asm_1088dd
	call MobileTradeAnim_DeleteSprites
	ld a, $1
	call Function108ad4
	jr .asm_1088e7

.asm_1088e7
	ld c, 1
	call WaitMobileTradeSpriteAnims
	jr .asm_1088ad

.asm_1088ee
	ldh a, [hSCX]
	cp $c
	jr z, .asm_108906
	inc a
	inc a
	ldh [hSCX], a
	cp -8
	jr nz, .asm_1088e7
	call MobileTradeAnim_DeleteSprites
	ld c, 1
	call WaitMobileTradeSpriteAnims
	jr .asm_1088ee

.asm_108906
	jp MobileTradeAnim_Next

MobileTradeAnim_GetTrademon3:
	ld c, 40
	ld hl, wBGPals2 palette 6
	call Function1082f0
	call Function108af4
	jp GetMobileTradeAnimByte

MobileTradeAnim_0f:
	ld c, 40
	call WaitMobileTradeSpriteAnims
	farcall DeinitializeAllSprites
	call ClearBGPalettes
	call ClearSprites
	call ClearTileMap
	call DisableLCD
	call MobileTradeAnim_ClearTiles
	call MobileTradeAnim_ClearBGMap
	call EnableLCD
	jp GetMobileTradeAnimByte

MobileTradeAnim_FadeToBlack:
.loop
	ldh a, [rBGP]
	and a
	jr z, .blank
	sla a
	sla a
	call DmgToCgbBGPals
	call DmgToCgbObjPal0
	ld c, 4
	call DelayFrames
	jr .loop

.blank
	xor a
	call DmgToCgbBGPals
	call DmgToCgbObjPal0
	jp GetMobileTradeAnimByte

Function10895e:
	ld de, vTiles0 tile $30
	jr asm_108966

Function108963:
	ld de, vTiles2 tile $31
asm_108966:
	call DelayFrame
	ld hl, vTiles2
	lb bc, $a, $31 ; $a is the bank of ?????
	call Request2bpp
	call WaitTop
	call MobileTradeAnim_ClearTilemap
	hlcoord 7, 2
	xor a
	ldh [hGraphicStartTile], a
	lb bc, 7, 7
	predef PlaceGraphic
	jp WaitBGMap

Function10898a:
	ld de, vTiles2
	call MobileTradeAnim_GetFrontpic
	call WaitTop
	call MobileTradeAnim_ClearTilemap
	hlcoord 7, 2
	xor a
	ldh [hGraphicStartTile], a
	lb bc, 7, 7
	predef PlaceGraphic
	jp WaitBGMap

MobileTradeAnim_DisplayMonToBeSent:
	; unreachable

MobileTradeAnim_DisplayReceivedMon:
	; unreachable

MobileTradeAnim_ClearTilemap:
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, " "
	jp ByteFill

Function108ad4:
	and a
	jr z, .asm_108adc
	ld de, GFX_1092c7
	jr .asm_108adf

.asm_108adc
	ld de, GFX_1091c7
.asm_108adf
	ld a, $1
	ldh [rVBK], a
	ld hl, vTiles2 tile $4a
	lb bc, BANK(GFX_1092c7), 16
	call Get2bpp_2
	call DelayFrame
	ld a, $0
	ldh [rVBK], a
	ret

Function108af4:
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld a, [wcf65]
	and $1
	jr z, .copy_palette_109147
	ld hl, Palette_109187
	ld de, wOBPals1
	ld bc, 8 palettes
	rst CopyBytes
	ld hl, Palette_109187
	ld de, wOBPals2
	ld bc, 8 palettes
	rst CopyBytes
	jr .done_copy

.copy_palette_109147
	ld hl, Palette_109147
	ld de, wOBPals1
	ld bc, 8 palettes
	rst CopyBytes
	ld hl, Palette_109147
	ld de, wOBPals2
	ld bc, 8 palettes
	rst CopyBytes

.done_copy
	pop af
	ldh [rSVBK], a
	ld a, %11100100 ; 3,2,1,0
	call DmgToCgbObjPal0
	ld a, %11100100 ; 3,2,1,0
	call DmgToCgbBGPals
	jp DelayFrame

Function108b45:
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld de, PALRGB_WHITE
	ld hl, wBGPals1
	ld a, e
	ld [hli], a
	ld d, a
	ld [hli], a
	pop af
	ldh [rSVBK], a
	ret

Function108b5a:
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld de, palred 18 + palgreen 31 + palblue 15
	ld hl, wBGPals2 + 4 palettes
	ld c, $10
.loop
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	dec c
	jr nz, .loop
	pop af
	ldh [rSVBK], a
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

Function108b78:
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld a, c
	and $2
	jr z, .Orange
	ld de, PALRGB_WHITE
	jr .load_pal

.Orange:
	ld de, palred 31 + palgreen 15 + palblue 1
.load_pal
	ld a, e
	ld [hli], a
	ld a, d
	ld [hld], a
	pop af
	ldh [rSVBK], a
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

Palette_108b98:
; removed

Function108b98:
	ld d, a
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld a, [wcf65]
	and $1
	xor d
	jr z, .asm_108bad
	ld hl, Palette_108b98 + 1 palettes
	jr .asm_108bb0

.asm_108bad
	ld hl, Palette_108b98
.asm_108bb0
	ld de, wBGPals1 + 7 palettes
	ld bc, 8 palettes
	rst CopyBytes
	pop af
	ldh [rSVBK], a
	ret

MobileTradeAnim_DeleteSprites:
	farcall DeinitializeAllSprites
	jp ClearSprites

Function108bc7:
	ld a, [wcf64]
	and a
	ret z
	ld hl, SPRITEANIMSTRUCT_YCOORD
	add hl, bc
	ld a, [hl]
	cp -1 * 8 - 6
	jr z, .delete
	sub 1 * 8
	ld [hl], a
	ret

.delete
	farcall DeinitializeSprite
	ret

Function108be0:
	ld hl, SPRITEANIMSTRUCT_YCOORD
	add hl, bc
	ld a, [hl]
	cp 9 * 8 + 2
	ret z
	add 1 * 8
	ld [hl], a
	ret

Function108bec:
	ld a, $90
	ldh [hWY], a
	ld hl, .PlayerWillTradeMon
	call PrintText
	ld c, 80
	call DelayFrames
	ld hl, .ForPartnersMon
	call PrintText
	ld c, 80
	jp DelayFrames

.PlayerWillTradeMon:
	text_far _TradingText10
	text_end

.ForPartnersMon:
	text_far _TradingText11
	text_end

.UnusedTextPlayersMonTrade:
	text_far _TradingText12
	text_end

Function108c16:
	ld a, $90
	ldh [hWY], a
	ld hl, .TakeGoodCareOfMon
	call PrintText
	ld c, 80
	jp DelayFrames

.TakeGoodCareOfMon:
	text_far _TradingText13
	text_end

Function108c2b:
	ld a, $90
	ldh [hWY], a
	ld hl, .PlayersMonTrade
	call PrintText
	ld c, 80
	jp DelayFrames

.PlayersMonTrade:
	text_far _TradingText14
	text_end

Function108c40:
	ld a, $90
	ldh [hWY], a
	ld a, [wcf65]
	and %10000000
	jr z, .Getmon
	ld hl, .CameBack
	call PrintText
	ld c, 80
	jp DelayFrames

.Getmon:
	ld hl, .TakeGoodCareOf
	call PrintText
	ld c, 80
	jp DelayFrames

.TakeGoodCareOf:
	text_far _TradingText15
	text_end

.CameBack:
	text_far _TradingText16
	text_end

Function108c6d:
	ld hl, LZ_108fe7
	debgcoord 0, 0
	call Decompress
	ld hl, LZ_108fe7
	debgcoord 0, 0, vBGMap1
	jp Decompress

Function108c80:
	ld a, $1
	ldh [rVBK], a
	ld hl, LZ_1090a7
	debgcoord 0, 0
	call Decompress
	ld hl, LZ_1090a7
	debgcoord 0, 0, vBGMap1
	call Decompress
	ld a, $0
	ldh [rVBK], a
	ret

Function108d07:
	ld a, [wc74e]
	and $7f
	cp $8
	jr c, .asm_108d12
	ld a, $7

.asm_108d12
	ld bc, 1 palettes
	ld hl, Palette_1093c7
	call AddNTimes
	ld a, $5
	ld de, wBGPals1 + 4 palettes
	ld bc, 1 palettes
	jp FarCopyWRAM

LZ_108d27:
INCBIN "gfx/unknown/108d27.2bpp.lz"

LZ_108da7:
INCBIN "gfx/unknown/108da7.2bpp.lz"

LZ_108fe7:
INCBIN "gfx/unknown/108fe7.tilemap.lz"

LZ_1090a7:
INCBIN "gfx/unknown/1090a7.tilemap.lz"

Palette_1090f7:
; unused
	RGB 31, 31, 31
	RGB 00, 00, 00

	RGB 31, 00, 25
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00

	RGB 09, 19, 31
	RGB 00, 00, 00

Palette_109107:
	RGB 18, 31, 15
	RGB 20, 20, 20
	RGB 11, 11, 11
	RGB 00, 00, 00

	RGB 31, 15,  1
	RGB 14, 14, 31
	RGB 12, 09, 31
	RGB 00, 00, 00

	RGB 18, 31, 15
	RGB 14, 14, 31
	RGB 12, 09, 31
	RGB 00, 00, 00

	RGB 18, 31, 15
	RGB 20, 20, 20
	RGB 11, 11, 11
	RGB 00, 00, 00

	RGB 18, 31, 15
	RGB 31, 07, 09
	RGB 18, 00, 01
	RGB 00, 00, 00

	RGB 18, 31, 15
	RGB 20, 20, 20
	RGB 11, 11, 11
	RGB 00, 00, 00

	RGB 31, 15,  1
	RGB 18, 00, 30
	RGB 09, 00, 17
	RGB 00, 00, 00

	RGB 18, 31, 15
	RGB 18, 00, 30
	RGB 09, 00, 17
	RGB 00, 00, 00

Palette_109147:
	RGB 31, 31, 31
	RGB 31, 31, 12
	RGB 31, 13, 12
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 31, 23, 15
	RGB 31, 18, 07
	RGB 31, 15, 00

	RGB 31, 31, 31
	RGB 20, 20, 20
	RGB 11, 11, 11
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 31, 00, 25
	RGB 31, 00, 25
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 09, 19, 31
	RGB 09, 19, 31
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

Palette_109187:
	RGB 31, 31, 31
	RGB 31, 31, 12
	RGB 31, 13, 12
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 31, 23, 15
	RGB 31, 18, 07
	RGB 31, 15, 00

	RGB 31, 31, 31
	RGB 20, 20, 20
	RGB 11, 11, 11
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 09, 19, 31
	RGB 09, 19, 31
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 31, 00, 25
	RGB 31, 00, 25
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

GFX_1091c7:
INCBIN "gfx/unknown/1091c7.2bpp"
GFX_1092c7:
INCBIN "gfx/unknown/1092c7.2bpp"

Palette_1093c7:
	RGB 18, 31, 15
	RGB 04, 13, 31
	RGB 00, 00, 31
	RGB 00, 00, 00

	RGB 18, 31, 15
	RGB 31, 31, 00
	RGB 31, 15, 00
	RGB 00, 00, 00

	RGB 18, 31, 15
	RGB 09, 24, 00
	RGB 02, 16, 00
	RGB 00, 00, 00

	RGB 18, 31, 15
	RGB 31, 07, 09
	RGB 18, 00, 01
	RGB 00, 00, 00

	RGB 18, 31, 15
	RGB 28, 05, 31
	RGB 17, 00, 17
	RGB 00, 00, 00

	RGB 18, 31, 15
	RGB 09, 09, 09
	RGB 04, 04, 04
	RGB 00, 00, 00

	RGB 18, 31, 15
	RGB 31, 13, 21
	RGB 27, 07, 12
	RGB 00, 00, 00

	RGB 18, 31, 15
	RGB 21, 20, 20
	RGB 14, 14, 31
	RGB 00, 00, 00
