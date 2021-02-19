SelectMonFromParty:
	call DisableSpriteUpdates
	xor a
	ld [wPartyMenuActionText], a
	call ClearBGPalettes
	call InitPartyMenuLayout
	call WaitBGMap
	call SetPalettes
	call DelayFrame
	call PartyMenuSelect
	jp ReturnToMapWithSpeechTextbox

SelectTradeOrDayCareMon:
	ld a, b
	ld [wPartyMenuActionText], a
	call DisableSpriteUpdates
	call ClearBGPalettes
	call InitPartyMenuLayout
	call WaitBGMap
	ld b, SCGB_PARTY_MENU
	call GetSGBLayout
	call SetPalettes
	call DelayFrame
	call PartyMenuSelect
	jp ReturnToMapWithSpeechTextbox

BT_PartySelect:
	ld a, PARTYMENUACTION_BATTLE_TOWER
	ld [wPartyMenuActionText], a
	call DisableSpriteUpdates
	call ClearBGPalettes

.loop
	call InitPartyMenuLayout
	call WaitBGMap
	ld b, SCGB_PARTY_MENU
	call GetSGBLayout
	call SetPalettes
	call DelayFrame
	call PartyMenuSelect
	jr c, .return
	farcall FreezeMonIcons

	; Check if we're entering something. In that case, remove the entry.
	ld a, [wCurPartyMon]
	call BT_CheckEnterState
	jr z, .open_menu ; not entered or banned

	call BT_RemoveCurSelection
	jr .loop
.open_menu
	call .Menu
	jr c, .loop
	; Banned mons don't get the "Enter" option
	ld a, [wCurPartyMon]
	call BT_CheckEnterState
	ld a, [wMenuCursorY]
	adc 0
	dec a ; Enter
	jr z, .Enter
	dec a ; Stats
	jp z, .Stats
	jr .loop ; Cancel

.return
	jp ReturnToMapWithSpeechTextbox

.Menu:
	; 3 menu headers; eggs (implicitly banned), banned, regular
	; Check if mon is banned.
	ld a, [wCurPartyMon]
	call BT_CheckEnterState
	ld hl, .MenuHeader
	jr nc, .DisplayMenu
	ld hl, .BannedMenuHeader
	; fallthrough
.DisplayMenu:
	call CopyMenuHeader
	xor a
	ldh [hBGMapMode], a
	call MenuBox
	call UpdateSprites
	call PlaceVerticalMenuItems
	call WaitBGMap
	call CopyMenuData
	ld a, [wMenuDataFlags]
	bit 7, a
	scf
	ret z
	call InitVerticalMenuCursor
	ld hl, w2DMenuFlags1
	set 6, [hl]
	call StaticMenuJoypad
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	ldh a, [hJoyPressed]
	and a ; clear carry
	bit B_BUTTON_F, a
	ret z
	scf
	ret

.Enter:
	call BT_AddCurSelection
	ld hl, .too_many_mons_text
	jp c, .print_error
	ld a, [wBT_PartySelectCounter]
	cp 3
	jp nz, .loop

	; Entered 3 mons. Check legality, and if OK, prompt to enter those 3.
	farcall BT_SetPlayerOT
	farcall BT_LegalityCheck
	dec e
	ld hl, .same_species
	jr z, .reset_and_print_error
	dec e
	ld hl, .same_item
	jr z, .reset_and_print_error

	call InitPartyMenuLayout
	farcall FreezeMonIcons
	hlcoord 1, 16
	ld de, .selection_ok_text
	call PlaceString
	ld hl, .YesNoMenuHeader
	call .DisplayMenu
	ld a, [wMenuCursorY]
	jp c, .loop
	dec a
	jp nz, .loop
	jp .return

.selection_ok_text
	db "Enter battle?@"

.reset_and_print_error
	push hl
	call InitPartyMenuLayout
	farcall FreezeMonIcons
	pop hl
	call PrintText
	xor a
	ld [wBT_PartySelectCounter], a
	jp .loop

.print_error
	call PrintText
	jp .loop

.too_many_mons_text
	text "You may only enter"
	line "with 3 #MON!"
	prompt

.same_species
	text "The #MON must"
	line "be of different"
	cont "species!"
	prompt

.same_item
	text "The #MON's held"
	line "items must differ!"
	prompt

.Stats:
	call LoadStandardMenuHeader
	call ClearSprites
	xor a ; PARTYMON
	ld [wMonType], a
	call LowVolume
	predef StatsScreenInit
	call MaxVolume
	call ExitMenu
	jp .loop

.Cancel:
	jp .loop

.BannedMenuHeader:
	db $00 ; flags
	db 13, 11 ; start coords
	db 17, 19 ; end coords
	dw .BannedMenuData
	db 1 ; default option

.BannedMenuData:
	db $c0 ; flags
	db 2 ; items
	db "STATS@"
	db "CANCEL@"

.MenuHeader:
	db $00 ; flags
	db 11, 11 ; start coords
	db 17, 19 ; end coords
	dw .MenuData
	db 1 ; default option

.MenuData:
	db $c0 ; flags
	db 3 ; items
	db "ENTER@"
	db "STATS@"
	db "CANCEL@"

.YesNoMenuHeader:
; the regular yes/no prompt position is unsuitable, so make our own here
	db $00 ; flags
	db 13, 14 ; start coords
	db 17, 19 ; end coords
	dw .YesNoMenuData
	db 1 ; default option

.YesNoMenuData:
	db $c0 ; flags
	db 2 ; items
	db "YES@"
	db "NO@"

BT_CheckEnterState:
; Check enter state of party mon in a. Returns:
; z|c: Banned
; z|nc: Allowed, not entered
; nz|nc: Allowed and entered, a contains entry number (1-3)
	push hl
	push de
	push bc

	; Check if the mon is banned
	push af
	ld hl, wPartySpecies
	add l
	ld l, a
	jr nc, .no_overflow
	inc h
.no_overflow
	ld a, [hl]
	cp EGG
	jr z, .banned
	pop af

	; Check entry number, if any
	ld b, a
	ld hl, wBT_PartySelectCounter
	ld c, [hl]
	inc c
	ld d, 0
	ld hl, wBT_PartySelections
.loop
	dec c
	ld a, c
	and a
	jr z, .return ; Not entered
	inc d
	ld a, [hli]
	cp b
	jr nz, .loop

	; Entry number is stored in d
	ld a, d
	and a
	jr .return

.banned
	pop af
	xor a
	scf
.return
	pop bc
	pop de
	pop hl
	ret

BT_AddCurSelection:
; Adds wCurPartyMon to BT selection. Doesn't verify that the mon already
; is entered, but will reject the selection if the player attempts to
; select a 4th+ mon by returning c.
	push hl
	ld hl, wBT_PartySelectCounter
	ld a, [hl]
	cp 3
	ccf
	jr c, .return
	inc [hl]

	add LOW(wBT_PartySelections)
	ld l, a
	adc HIGH(wBT_PartySelections)
	sub l
	ld h, a

	ld a, [wCurPartyMon]
	ld [hl], a
	and a

.return
	pop hl
	ret

BT_RemoveCurSelection:
; Removes wCurPartyMon from BT selection and shifts other entries.
; Assumes the selection entry is valid and will break otherwise.
	push hl
	push de
	push bc
	ld hl, wBT_PartySelectCounter
	ld e, [hl]
	dec [hl]
	ld a, [wCurPartyMon]
	ld c, a
	ld hl, wBT_PartySelections
	ld d, 0
.loop
	inc d
	ld a, [hli]
	cp c
	jr nz, .loop

	; Found entry. Shift entries after this one.
	ld b, h
	ld c, l
	dec hl

.shift_loop
	ld a, d
	cp e
	jp z, .return
	ld a, [bc]
	inc bc
	ld [hli], a
	inc d
	jr .shift_loop
.return
	pop bc
	pop de
	pop hl
	ret


InitPartyMenuLayout:
	call LoadPartyMenuGFX
	call InitPartyMenuWithCancel
	call InitPartyMenuGFX
	call WritePartyMenuTilemap
	jp PrintPartyMenuText

LoadPartyMenuGFX:
	call LoadFontsBattleExtra
	callfar InitPartyMenuPalettes ; engine/color.asm
	callfar ClearSpriteAnims2
	ret

WritePartyMenuTilemap:
	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	xor a
	ldh [hBGMapMode], a
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, " "
	call ByteFill ; blank the tilemap
	call GetPartyMenuQualityIndexes
.loop
	ld a, [hli]
	cp -1
	jr z, .end
	push hl
	ld hl, .Jumptable
	rst JumpTable
	pop hl
	jr .loop
.end
	pop af
	ld [wOptions], a
	ret

.Jumptable:
; entries correspond to PARTYMENUQUALITY_* constants
	dw PlacePartyNicknames
	dw PlacePartyHPBar
	dw PlacePartyMenuHPDigits
	dw PlacePartyMonLevel
	dw PlacePartyMonStatus
	dw PlacePartyMonTMHMCompatibility
	dw PlacePartyMonEvoStoneCompatibility
	dw PlacePartyMonGender
	dw PlacePartyMonMobileBattleSelection
	dw PlacePartyMonBattleTower

PlacePartyNicknames:
	hlcoord 3, 1
	ld a, [wPartyCount]
	and a
	jr z, .end
	ld c, a
	ld b, 0
.loop
	push bc
	push hl
	push hl
	ld hl, wPartyMonNicknames
	ld a, b
	call GetNick
	pop hl
	call PlaceString
	pop hl
	ld de, 2 * SCREEN_WIDTH
	add hl, de
	pop bc
	inc b
	dec c
	jr nz, .loop

.end
	dec hl
	dec hl
	ld de, .CANCEL
	jp PlaceString

.CANCEL:
	db "CANCEL@"

PlacePartyHPBar:
	xor a
	ld [wSGBPals], a
	ld a, [wPartyCount]
	and a
	ret z
	ld c, a
	ld b, 0
	hlcoord 11, 2
.loop
	push bc
	push hl
	call PartyMenuCheckEgg
	jr z, .skip
	push hl
	call PlacePartymonHPBar
	pop hl
	ld d, $6
	ld b, $0
	call DrawBattleHPBar
	ld hl, wHPPals
	ld a, [wSGBPals]
	ld c, a
	ld b, $0
	add hl, bc
	call SetHPPal
	ld b, SCGB_PARTY_MENU_HP_PALS
	call GetSGBLayout
.skip
	ld hl, wSGBPals
	inc [hl]
	pop hl
	ld de, 2 * SCREEN_WIDTH
	add hl, de
	pop bc
	inc b
	dec c
	jr nz, .loop
	ld b, SCGB_PARTY_MENU
	call GetSGBLayout
	ret

PlacePartymonHPBar:
	ld a, b
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1HP
	call AddNTimes
	ld a, [hli]
	or [hl]
	jr nz, .not_fainted
	xor a
	ld e, a
	ld c, a
	ret

.not_fainted
	dec hl
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld e, a
	predef ComputeHPBarPixels
	ret

PlacePartyMenuHPDigits:
	ld a, [wPartyCount]
	and a
	ret z
	ld c, a
	ld b, 0
	hlcoord 13, 1
.loop
	push bc
	push hl
	call PartyMenuCheckEgg
	jr z, .next
	push hl
	ld a, b
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1HP
	call AddNTimes
	ld e, l
	ld d, h
	pop hl
	push de
	lb bc, 2, 3
	call PrintNum
	pop de
	ld a, "/"
	ld [hli], a
	inc de
	inc de
	lb bc, 2, 3
	call PrintNum

.next
	pop hl
	ld de, 2 * SCREEN_WIDTH
	add hl, de
	pop bc
	inc b
	dec c
	jr nz, .loop
	ret

PlacePartyMonLevel:
	ld a, [wPartyCount]
	and a
	ret z
	ld c, a
	ld b, 0
	hlcoord 8, 2
.loop
	push bc
	push hl
	call PartyMenuCheckEgg
	jr z, .next
	push hl
	ld a, b
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1Level
	call AddNTimes
	ld e, l
	ld d, h
	pop hl
	ld a, [de]
	cp 100 ; This is distinct from MAX_LEVEL.
	jr nc, .ThreeDigits
	ld a, "<LV>"
	ld [hli], a
	lb bc, PRINTNUM_RIGHTALIGN | 1, 2
	; jr .okay
.ThreeDigits:
	lb bc, PRINTNUM_RIGHTALIGN | 1, 3
; .okay
	call PrintNum

.next
	pop hl
	ld de, SCREEN_WIDTH * 2
	add hl, de
	pop bc
	inc b
	dec c
	jr nz, .loop
	ret

PlacePartyMonStatus:
	ld a, [wPartyCount]
	and a
	ret z
	ld c, a
	ld b, 0
	hlcoord 5, 2
.loop
	push bc
	push hl
	call PartyMenuCheckEgg
	jr z, .next
	push hl
	ld a, b
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1Status
	call AddNTimes
	ld e, l
	ld d, h
	pop hl
	call PlaceStatusString

.next
	pop hl
	ld de, SCREEN_WIDTH * 2
	add hl, de
	pop bc
	inc b
	dec c
	jr nz, .loop
	ret

PlacePartyMonTMHMCompatibility:
	ld a, [wPartyCount]
	and a
	ret z
	ld c, a
	ld b, 0
	hlcoord 12, 2
.loop
	push bc
	push hl
	call PartyMenuCheckEgg
	jr z, .next
	push hl
	ld hl, wPartySpecies
	ld e, b
	ld d, 0
	add hl, de
	ld a, [hl]
	ld [wCurPartySpecies], a
	predef CanLearnTMHMMove
	pop hl
	call .PlaceAbleNotAble
	call PlaceString

.next
	pop hl
	ld de, SCREEN_WIDTH * 2
	add hl, de
	pop bc
	inc b
	dec c
	jr nz, .loop
	ret

.PlaceAbleNotAble:
	ld a, c
	and a
	jr nz, .able
	ld de, .string_not_able
	ret

.able
	ld de, .string_able
	ret

.string_able
	db "ABLE@"

.string_not_able
	db "NOT ABLE@"

PlacePartyMonEvoStoneCompatibility:
	ld a, [wPartyCount]
	and a
	ret z
	ld c, a
	ld b, 0
	hlcoord 12, 2
.loop
	push bc
	push hl
	call PartyMenuCheckEgg
	jr z, .next
	push hl
	ld a, b
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1Species
	call AddNTimes
	ld a, [hl]
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld hl, EvosAttacksPointers
	ld a, BANK(EvosAttacksPointers)
	call LoadDoubleIndirectPointer
	ld d, h
	ld e, l
	farcall DetermineEvolutionItemResults
	ld a, d
	or e
	ld de, .string_not_able
	jr z, .got_string
	ld de, .string_able
.got_string
	pop hl
	call PlaceString

.next
	pop hl
	ld de, 2 * SCREEN_WIDTH
	add hl, de
	pop bc
	inc b
	dec c
	jr nz, .loop
	ret

.string_able
	db "ABLE@"
.string_not_able
	db "NOT ABLE@"

PlacePartyMonGender:
	ld a, [wPartyCount]
	and a
	ret z
	ld c, a
	ld b, 0
	hlcoord 12, 2
.loop
	push bc
	push hl
	call PartyMenuCheckEgg
	jr z, .next
	ld [wCurPartySpecies], a
	push hl
	ld a, b
	ld [wCurPartyMon], a
	xor a
	ld [wMonType], a
	call GetGender
	ld de, .unknown
	jr c, .got_gender
	ld de, .male
	jr nz, .got_gender
	ld de, .female

.got_gender
	pop hl
	call PlaceString

.next
	pop hl
	ld de, 2 * SCREEN_WIDTH
	add hl, de
	pop bc
	inc b
	dec c
	jr nz, .loop
	ret

.male
	db "♂…MALE@"

.female
	db "♀…FEMALE@"

.unknown
	db "…UNKNOWN@"

PlacePartyMonMobileBattleSelection:
	ld a, [wPartyCount]
	and a
	ret z
	ld c, a
	ld b, 0
	hlcoord 12, 1
.loop
	push bc
	push hl
	ld de, .String_Sanka_Shinai
	call PlaceString
	pop hl
	ld de, 2 * SCREEN_WIDTH
	add hl, de
	pop bc
	inc b
	dec c
	jr nz, .loop
	ld a, l
	ld e, MON_NAME_LENGTH
	sub e
	ld l, a
	ld a, h
	sbc $0
	ld h, a
	ld de, .String_Kettei_Yameru
	call PlaceString
	ld b, $3
	ld c, $0
	ld hl, wd002
	ld a, [hl]
.loop2
	push hl
	push bc
	hlcoord 12, 1
.loop3
	and a
	jr z, .done
	ld de, 2 * SCREEN_WIDTH
	add hl, de
	dec a
	jr .loop3

.done
	ld de, .String_Banme
	push hl
	call PlaceString
	pop hl
	pop bc
	push bc
	push hl
	ld a, c
	ld hl, .Strings_1_2_3
	call GetNthString
	ld d, h
	ld e, l
	pop hl
	call PlaceString
	pop bc
	pop hl
	inc hl
	ld a, [hl]
	inc c
	dec b
	ret z
	jr .loop2

.String_Banme:
	db "　ばんめ　　@" ; Place
.String_Sanka_Shinai:
	db "さんかしない@" ; Cancel
.String_Kettei_Yameru:
	db "けってい　　やめる@" ; Quit
.Strings_1_2_3:
	db "１@", "２@", "３@" ; 1st, 2nd, 3rd

PlacePartyMonBattleTower:
	ld bc, 0
	hlcoord 12, 2
.loop
	ld a, [wPartyCount]
	cp c
	ret z

	ld a, c
	call BT_CheckEnterState

	ld de, .Banned
	jr c, .next
	ld de, .Able
	jr z, .next
	dec a
	ld de, .First
	jr z, .next
	dec a
	ld de, .Second
	jr z, .next
	ld de, .Third
.next
	push hl
	push bc
	call PlaceString
	pop bc
	pop hl
	ld de, SCREEN_WIDTH * 2
	add hl, de
	inc c
	jr .loop

.Banned
	db "BANNED@"

.Able
	db "ABLE@"

.First
	db "FIRST@"

.Second
	db "SECOND@"

.Third
	db "THIRD@"

PartyMenuCheckEgg:
	ld a, LOW(wPartySpecies)
	add b
	ld e, a
	ld a, HIGH(wPartySpecies)
	adc 0
	ld d, a
	ld a, [de]
	cp EGG
	ret

GetPartyMenuQualityIndexes:
	ld a, [wPartyMenuActionText]
	and $f0
	jr nz, .skip
	ld a, [wPartyMenuActionText]
	and $f
	ld e, a
	ld d, 0
	ld hl, PartyMenuQualityPointers
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

.skip
	ld hl, PartyMenuQualityPointers.Default
	ret

INCLUDE "data/party_menu_qualities.asm"

InitPartyMenuGFX:
	ld hl, wPartyCount
	ld a, [hli]
	and a
	ret z
	ld c, a
	xor a
	ldh [hObjectStructIndexBuffer], a
.loop
	push bc
	push hl
	ld hl, LoadMenuMonIcon
	ld a, BANK(LoadMenuMonIcon)
	ld e, MONICON_PARTYMENU
	rst FarCall
	ldh a, [hObjectStructIndexBuffer]
	inc a
	ldh [hObjectStructIndexBuffer], a
	pop hl
	pop bc
	dec c
	jr nz, .loop
	callfar PlaySpriteAnimations
	ret

InitPartyMenuWithCancel:
; with cancel
	xor a
	ld [wSwitchMon], a
	ld de, PartyMenuAttributes
	call SetMenuAttributes
	ld a, [wPartyCount]
	inc a
	ld [w2DMenuNumRows], a ; list length
	dec a
	ld b, a
	ld a, [wPartyMenuCursor]
	and a
	jr z, .skip
	inc b
	cp b
	jr c, .done

.skip
	ld a, 1

.done
	ld [wMenuCursorY], a
	ld a, A_BUTTON | B_BUTTON
	ld [wMenuJoypadFilter], a
	ret

InitPartyMenuNoCancel:
; no cancel
	ld de, PartyMenuAttributes
	call SetMenuAttributes
	ld a, [wPartyCount]
	ld [w2DMenuNumRows], a ; list length
	ld b, a
	ld a, [wPartyMenuCursor]
	and a
	jr z, .skip
	inc b
	cp b
	jr c, .done
.skip
	ld a, 1
.done
	ld [wMenuCursorY], a
	ld a, A_BUTTON | B_BUTTON
	ld [wMenuJoypadFilter], a
	ret

PartyMenuAttributes:
; cursor y
; cursor x
; num rows
; num cols
; bit 6: animate sprites  bit 5: wrap around
; ?
; distance between items (hi: y, lo: x)
; allowed buttons (mask)
	db 1, 0
	db 0, 1
	db $60, $00
	dn 2, 0
	db 0

PartyMenuSelect:
; sets carry if exitted menu.
	call StaticMenuJoypad
	call PlaceHollowCursor
	ld a, [wPartyCount]
	inc a
	ld b, a
	ld a, [wMenuCursorY] ; menu selection?
	cp b
	jr z, .exitmenu ; CANCEL
	ld [wPartyMenuCursor], a
	ldh a, [hJoyLast]
	ld b, a
	bit B_BUTTON_F, b
	jr nz, .exitmenu ; B button
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
	and a
	ret

.exitmenu
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	call WaitSFX
	scf
	ret

PrintPartyMenuText:
	hlcoord 0, 14
	lb bc, 2, 18
	call Textbox
	ld a, [wPartyCount]
	and a
	jr nz, .haspokemon
	ld de, YouHaveNoPKMNString
	jr .gotstring
.haspokemon
	ld a, [wPartyMenuActionText]
	and $f ; drop high nibble
	ld hl, PartyMenuStrings
	ld e, a
	ld d, $0
	add hl, de
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
.gotstring
	ld a, [wOptions]
	push af
	set NO_TEXT_SCROLL, a
	ld [wOptions], a
	hlcoord 1, 16 ; Coord
	call PlaceString
	pop af
	ld [wOptions], a
	ret

PartyMenuStrings:
	dw ChooseAMonString
	dw UseOnWhichPKMNString
	dw WhichPKMNString
	dw TeachWhichPKMNString
	dw MoveToWhereString
	dw UseOnWhichPKMNString
	dw ChooseAMonString ; Probably used to be ChooseAFemalePKMNString
	dw ChooseAMonString ; Probably used to be ChooseAMalePKMNString
	dw ToWhichPKMNString
	dw ToWhichPKMNString ; mobile
	dw Choose3MonString

ChooseAMonString:
	db "Choose a #MON.@"

UseOnWhichPKMNString:
	db "Use on which <PK><MN>?@"

WhichPKMNString:
	db "Which <PK><MN>?@"

TeachWhichPKMNString:
	db "Teach which <PK><MN>?@"

MoveToWhereString:
	db "Move to where?@"

ChooseAFemalePKMNString:
; unused
	db "Choose a ♀<PK><MN>.@"

ChooseAMalePKMNString:
; unused
	db "Choose a ♂<PK><MN>.@"

ToWhichPKMNString:
	db "To which <PK><MN>?@"

Choose3MonString:
	db "Choose 3 battle <PK><MN>@"

YouHaveNoPKMNString:
	db "You have no <PK><MN>!@"

PrintPartyMenuActionText:
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	call GetNick
	ld a, [wPartyMenuActionText]
	and $f
	ld hl, .MenuActionTexts
	call .PrintText
	ret

.MenuActionTexts:
; entries correspond to PARTYMENUTEXT_* constants
	dw .Text_CuredOfPoison
	dw .Text_BurnWasHealed
	dw .Text_Defrosted
	dw .Text_WokeUp
	dw .Text_RidOfParalysis
	dw .Text_RecoveredSomeHP
	dw .Text_HealthReturned
	dw .Text_Revitalized
	dw .Text_GrewToLevel
	dw .Text_CameToItsSenses

.Text_RecoveredSomeHP:
	; recovered @ HP!
	text_far _RecoveredSomeHPText
	text_end

.Text_CuredOfPoison:
	; 's cured of poison.
	text_far _CuredOfPoisonText
	text_end

.Text_RidOfParalysis:
	; 's rid of paralysis.
	text_far _RidOfParalysisText
	text_end

.Text_BurnWasHealed:
	; 's burn was healed.
	text_far _BurnWasHealedText
	text_end

.Text_Defrosted:
	; was defrosted.
	text_far _WasDefrostedText
	text_end

.Text_WokeUp:
	; woke up.
	text_far _WokeUpText
	text_end

.Text_HealthReturned:
	; 's health returned.
	text_far _HealthReturnedText
	text_end

.Text_Revitalized:
	; is revitalized.
	text_far _RevitalizedText
	text_end

.Text_GrewToLevel:
	; grew to level @ !@ @
	text_far _GrewToLevelText
	text_end

.Text_CameToItsSenses:
	; came to its senses.
	text_far _CameToItsSensesText
	text_end

.PrintText:
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wOptions]
	push af
	set NO_TEXT_SCROLL, a
	ld [wOptions], a
	call PrintText
	pop af
	ld [wOptions], a
	ret
