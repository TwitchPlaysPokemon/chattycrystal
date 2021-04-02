MoveTutor::
	call FadeToMenu
	call ClearBGPalettes
	call ClearScreen
	call DelayFrame
	ld b, SCGB_PACKPALS
	call GetSGBLayout
	xor a
	ld [wItemAttributeParamBuffer], a
	call .GetMoveTutorMove
	ld [wNamedObjectIndexBuffer], a
	ld [wPutativeTMHMMove], a
	call GetMoveName
	call CopyName1
	farcall ChooseMonToLearnTMHM
	jr nc, .enter_loop
.cancel
	ld a, -1
.set
	ld [wScriptVar], a
	jp CloseSubmenu

.loop
	farcall ChooseMonToLearnTMHM_NoRefresh
	jr c, .cancel
.enter_loop
	call CheckCanLearnMoveTutorMove
	jr nc, .loop
	xor a ; FALSE
	jr .set

.GetMoveTutorMove:
	ld a, [wScriptVar]
	add a, a
	add a, LOW(MoveTutorMoves - 2)
	ld l, a
	adc HIGH(MoveTutorMoves - 2)
	sub l
	ld h, a
	ld a, BANK(MoveTutorMoves)
	call GetFarHalfword
	jp GetMoveIDFromIndex

CheckCanLearnMoveTutorMove:
	ld hl, .MenuHeader
	call LoadMenuHeader

	predef CanLearnTMHMMove

	push bc
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	call GetNick
	pop bc

	ld a, c
	and a
	jr nz, .can_learn
	push de
	ld de, SFX_WRONG
	call PlaySFX
	pop de
	ld a, BANK(Text_TMHMNotCompatible)
	ld hl, Text_TMHMNotCompatible
	call FarPrintText
	jr .didnt_learn

.can_learn
	callfar KnowsMove
	jr c, .didnt_learn

	predef LearnMove
	ld a, b
	and a
	jr z, .didnt_learn

	ld c, HAPPINESS_LEARNMOVE
	callfar ChangeHappiness
	call ExitMenu
	scf
	ret

.didnt_learn
	call ExitMenu
	and a
	ret

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1

LoadMoveTutorMenuData::
	ld hl, wStringBuffer3
	ld a, STATICMENU_CURSOR ; flags
	ld [hli], a
	ld a, 4 ; items
	ld [hli], a
	ld a, d
	call .load_move
	ld a, c
	call .load_move
	ld a, b
	call .load_move
	ld de, .cancel
	jr .copy

.cancel
	db "CANCEL@"

.load_move
	push hl
	add a, a
	add a, LOW(MoveTutorMoves - 2)
	ld l, a
	adc HIGH(MoveTutorMoves - 2)
	sub l
	ld h, a
	ld a, BANK(MoveTutorMoves)
	call GetFarHalfword
	call GetMoveIDFromIndex
	ld [wNamedObjectIndexBuffer], a
	call GetMoveName
	pop hl
.copy
	jp CopyName2
