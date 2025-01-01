; Battle animation command interpreter.

PlayBattleAnim:
	ldh a, [rSVBK]
	push af

	ld a, BANK(wActiveAnimObjects)
	ldh [rSVBK], a

	call _PlayBattleAnim

	pop af
	ldh [rSVBK], a
	ret

_PlayBattleAnim:
	ld c, 6
.wait
	call BattleAnimDelayFrame
	dec c
	jr nz, .wait

	call BattleAnimAssignPals
	call BattleAnimRequestPals
	call BattleAnimDelayFrame

	ld c, 1
	ldh a, [rKEY1]
	add a, a
	jr c, .double_speed
	ld c, 3

.double_speed
	ld hl, hVBlank
	ld a, [hl]
	push af

	ld [hl], c
	call BattleAnimRunScript

	pop af
	ldh [hVBlank], a

	ld a, 1
	ldh [hBGMapMode], a

	call BattleAnimDelayFrame
	call BattleAnimDelayFrame
	call BattleAnimDelayFrame
	jp WaitSFX

BattleAnimRunScript:
	ld a, [wFXAnimID + 1]
	add a, a
	jr c, .play_anyway

	cp 2 * HIGH(CHATTY_HP)
	jr nz, .check
	ld a, [wFXAnimID]
	cp LOW(CHATTY_HP)
	jr z, .play_anyway
.check

	farcall CheckBattleScene
	jr c, .disabled

	call BattleAnimClearHud
	call RunBattleAnimScript

	call BattleAnimAssignPals
	call BattleAnimRequestPals

	xor a
	ldh [hSCX], a
	ldh [hSCY], a
	call BattleAnimDelayFrame
	call BattleAnimRestoreHuds

.disabled
	ld a, [wNumHits]
	and a
	jr z, .done

	ld l, a
	ld h, 0
	ld de, ANIM_MISS
	add hl, de
	ld a, l
	ld [wFXAnimID], a
	ld a, h
	ld [wFXAnimID + 1], a

.play_anyway
	call WaitSFX
	call PlayHitSound
	call RunBattleAnimScript

.done
	jp BattleAnim_RevertPals

RunBattleAnimScript:
	call ClearBattleAnims

.playframe
	call RunBattleAnimCommand
	call _ExecuteBGEffects
	call BattleAnim_UpdateOAM_All
	call PushLYOverrides
	call BattleAnimRequestPals

; Speed up Rollout's animation.
	ld a, [wFXAnimID + 1]
	if HIGH(ROLLOUT)
		cp HIGH(ROLLOUT)
	else
		or a
	endc
	jr nz, .not_rollout

	ld a, [wFXAnimID]
	cp LOW(ROLLOUT)
	jr nz, .not_rollout

	ld a, ANIM_BG_ROLLOUT
	ld b, NUM_BG_EFFECTS
	ld de, BG_EFFECT_STRUCT_LENGTH
	ld hl, wBGEffect1Function
.find
	cp [hl]
	jr z, .done
	add hl, de
	dec b
	jr nz, .find

.not_rollout
	ld a, [wChattyFlags]
	rra
	jr nc, .no_joypad
	call Joypad
	call TallyJoypad
.no_joypad
	call BattleAnimDelayFrame

.done
	ld a, [wBattleAnimFlags]
	bit BATTLEANIM_STOP_F, a
	jr z, .playframe

	jp BattleAnim_ClearOAM

BattleAnimClearHud:
	call BattleAnimDelayFrame
	call WaitTop
	call ClearActorHud
	ld a, 1
	ldh [hBGMapMode], a
	call BattleAnimDelayFrame
	call BattleAnimDelayFrame
	call BattleAnimDelayFrame
	jp WaitTop

BattleAnimRestoreHuds:
	call BattleAnimDelayFrame
	call WaitTop

	ldh a, [rSVBK]
	push af
	ld a, BANK(wCurBattleMon) ; aka BANK(wTempMon) and BANK(wPartyMon1) and several others
	ldh [rSVBK], a

	call UpdateBattleHuds

	pop af
	ldh [rSVBK], a

	ld a, 1
	ldh [hBGMapMode], a
	call BattleAnimDelayFrame
	call BattleAnimDelayFrame
	call BattleAnimDelayFrame
	jp WaitTop

BattleAnimRequestPals:
	ldh a, [hCGB]
	and a
	ret z

	ldh a, [rBGP]
	ld b, a
	ld a, [wBGP]
	cp b
	call nz, BattleAnim_SetBGPals

	ldh a, [rOBP0]
	ld b, a
	ld a, [wOBP0]
	cp b
	call nz, BattleAnim_SetOBPals
	ret

BattleAnimDelayFrame:
; Like DelayFrame but wastes battery life.

	ld a, 1
	ld [wVBlankOccurred], a
.wait
	ld a, [wVBlankOccurred]
	and a
	jr nz, .wait
	ret

ClearEnemyHud:
	ldh a, [hBattleTurn]
	xor 1
	jr ClearActorHud.continue

ClearActorHud:
	ldh a, [hBattleTurn]
	and a
.continue
	jr z, .player

	hlcoord 1, 0
	lb bc, 4, 10
	jr .clear_box

.player
	hlcoord 9, 7
	lb bc, 5, 11
.clear_box
	jp ClearBox

BattleAnim_ClearOAM:
	ld a, [wBattleAnimFlags]
	bit BATTLEANIM_KEEPSPRITES_F, a
	jr z, .delete

	; Instead of deleting the sprites, make them all use palette 0 (monochrome)
	ld hl, wVirtualOAMSprite00Attributes
	ld c, NUM_SPRITE_OAM_STRUCTS
.loop
	ld a, [hl]
	and $ff ^ (PALETTE_MASK | VRAM_BANK_1)
	ld [hli], a
rept SPRITEOAMSTRUCT_LENGTH + -1
	inc hl
endr
	dec c
	jr nz, .loop
	ret

.delete
	ld hl, wVirtualOAM
	ld c, wVirtualOAMEnd - wVirtualOAM
	xor a
.loop2
	ld [hli], a
	dec c
	jr nz, .loop2
	ret

RunBattleAnimCommand:
	ld a, [wBattleAnimDelay]
	and a
	jr z, .loop

	dec a
	ld [wBattleAnimDelay], a
	and a
	ret

.loop
	call GetBattleAnimByte

	cp anim_ret_command
	jr nz, .not_done_with_anim

; Return from a subroutine.
	ld hl, wBattleAnimFlags
	bit BATTLEANIM_IN_SUBROUTINE_F, [hl]
	jr nz, .do_anim

	set BATTLEANIM_STOP_F, [hl]
	ret

.not_done_with_anim
	cp FIRST_ANIM_COMMAND
	jr nc, .do_anim

	ld [wBattleAnimDelay], a
	ret

.do_anim
	call .DoCommand

	jr .loop

.DoCommand:
; Execute battle animation command in [wBattleAnimByte].
	ld a, [wBattleAnimByte]
	sub FIRST_ANIM_COMMAND

	ld e, a
	ld d, 0
	ld hl, BattleAnimCommands
	add hl, de
	add hl, de

	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

BattleAnimCommands::
; entries correspond to macros/scripts/battle_anims.asm enumeration
	dw GenericDummyFunction            ; d0
	dw BattleAnimCmd_1GFX              ; d1
	dw BattleAnimCmd_2GFX              ; d2
	dw BattleAnimCmd_3GFX              ; d3
	dw BattleAnimCmd_4GFX              ; d4
	dw BattleAnimCmd_5GFX              ; d5
	dw BattleAnimCmd_IncObj            ; d6
	dw BattleAnimCmd_SetObj            ; d7
	dw BattleAnimCmd_IncBGEffect       ; d8
	dw BattleAnimCmd_BattlerGFX_1Row   ; d9
	dw BattleAnimCmd_BattlerGFX_2Row   ; da
	dw BattleAnimCmd_CheckPokeball     ; db
	dw BattleAnimCmd_Transform         ; dc
	dw BattleAnimCmd_RaiseSub          ; dd
	dw BattleAnimCmd_DropSub           ; de
	dw BattleAnimCmd_ResetObp0         ; df
	dw BattleAnimCmd_Sound             ; e0
	dw BattleAnimCmd_Cry               ; e1
	dw GenericDummyFunction            ; e2
	dw BattleAnimCmd_OAMOn             ; e3
	dw BattleAnimCmd_OAMOff            ; e4
	dw BattleAnimCmd_ClearObjs         ; e5
	dw BattleAnimCmd_BeatUp            ; e6
	dw GenericDummyFunction            ; e7
	dw BattleAnimCmd_UpdateActorPic    ; e8
	dw BattleAnimCmd_Minimize          ; e9
	dw GenericDummyFunction            ; ea
	dw GenericDummyFunction            ; eb
	dw GenericDummyFunction            ; ec
	dw GenericDummyFunction            ; ed
	dw BattleAnimCmd_IfParamAnd        ; ee
	dw BattleAnimCmd_JumpUntil         ; ef
	dw BattleAnimCmd_BGEffect          ; f0
	dw BattleAnimCmd_BGP               ; f1
	dw BattleAnimCmd_OBP0              ; f2
	dw BattleAnimCmd_OBP1              ; f3
	dw BattleAnimCmd_KeepSprites       ; f4
	dw ClearEnemyHud                   ; f5
	dw BattleAnimCmd_Obj               ; f6
	dw BattleAnimCmd_Obj               ; f7
	dw BattleAnimCmd_IfParamEqual      ; f8
	dw BattleAnimCmd_SetVar            ; f9
	dw BattleAnimCmd_IncVar            ; fa
	dw BattleAnimCmd_IfVarEqual        ; fb
	dw BattleAnimCmd_Jump              ; fc
	dw BattleAnimCmd_Loop              ; fd
	dw BattleAnimCmd_Call              ; fe
	dw BattleAnimCmd_Ret               ; ff

BattleAnimCmd_Ret:
	ld hl, wBattleAnimFlags
	res BATTLEANIM_IN_SUBROUTINE_F, [hl]
	ld hl, wBattleAnimParent
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld hl, wBattleAnimAddress
	ld [hl], e
	inc hl
	ld [hl], d
	ret

BattleAnimCmd_Call:
	call GetBattleAnimByte
	ld e, a
	call GetBattleAnimByte
	ld d, a
	push de
	ld hl, wBattleAnimAddress
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld hl, wBattleAnimParent
	ld [hl], e
	inc hl
	ld [hl], d
	pop de
	ld hl, wBattleAnimAddress
	ld [hl], e
	inc hl
	ld [hl], d
	ld hl, wBattleAnimFlags
	set BATTLEANIM_IN_SUBROUTINE_F, [hl]
	ret

BattleAnimCmd_Jump:
	call GetBattleAnimByte
	ld e, a
	call GetBattleAnimByte
	ld d, a
	ld hl, wBattleAnimAddress
	ld [hl], e
	inc hl
	ld [hl], d
	ret

BattleAnimCmd_Loop:
	call GetBattleAnimByte
	ld hl, wBattleAnimFlags
	bit BATTLEANIM_IN_LOOP_F, [hl]
	jr nz, .continue_loop
	and a
	jr z, .perpetual
	dec a
	set BATTLEANIM_IN_LOOP_F, [hl]
	ld [wBattleAnimLoops], a
.continue_loop
	ld hl, wBattleAnimLoops
	ld a, [hl]
	and a
	jr z, .return_from_loop
	dec [hl]
.perpetual
	call GetBattleAnimByte
	ld e, a
	call GetBattleAnimByte
	ld d, a
	ld hl, wBattleAnimAddress
	ld [hl], e
	inc hl
	ld [hl], d
	ret

.return_from_loop
	ld hl, wBattleAnimFlags
	res BATTLEANIM_IN_LOOP_F, [hl]
	ld hl, wBattleAnimAddress
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc de
	inc de
	ld [hl], d
	dec hl
	ld [hl], e
	ret

BattleAnimCmd_JumpUntil:
	ld hl, wBattleAnimParam
	ld a, [hl]
	and a
	jr z, .dont_jump

	dec [hl]
	call GetBattleAnimByte
	ld e, a
	call GetBattleAnimByte
	ld d, a
	ld hl, wBattleAnimAddress
	ld [hl], e
	inc hl
	ld [hl], d
	ret

.dont_jump
	ld hl, wBattleAnimAddress
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc de
	inc de
	ld [hl], d
	dec hl
	ld [hl], e
	ret

BattleAnimCmd_SetVar:
	call GetBattleAnimByte
	ld [wBattleAnimVar], a
	ret

BattleAnimCmd_IncVar:
	ld hl, wBattleAnimVar
	inc [hl]
	ret

BattleAnimCmd_IfVarEqual:
	call GetBattleAnimByte
	ld hl, wBattleAnimVar
	cp [hl]
	jr z, .jump

	ld hl, wBattleAnimAddress
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc de
	inc de
	ld [hl], d
	dec hl
	ld [hl], e
	ret

.jump
	call GetBattleAnimByte
	ld e, a
	call GetBattleAnimByte
	ld d, a
	ld hl, wBattleAnimAddress
	ld [hl], e
	inc hl
	ld [hl], d
	ret

BattleAnimCmd_IfParamEqual:
	call GetBattleAnimByte
	ld hl, wBattleAnimParam
	cp [hl]
	jr z, .jump

	ld hl, wBattleAnimAddress
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc de
	inc de
	ld [hl], d
	dec hl
	ld [hl], e
	ret

.jump
	call GetBattleAnimByte
	ld e, a
	call GetBattleAnimByte
	ld d, a
	ld hl, wBattleAnimAddress
	ld [hl], e
	inc hl
	ld [hl], d
	ret

BattleAnimCmd_IfParamAnd:
	call GetBattleAnimByte
	ld e, a
	ld a, [wBattleAnimParam]
	and e
	jr nz, .jump

	ld hl, wBattleAnimAddress
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc de
	inc de
	ld [hl], d
	dec hl
	ld [hl], e
	ret

.jump
	call GetBattleAnimByte
	ld e, a
	call GetBattleAnimByte
	ld d, a
	ld hl, wBattleAnimAddress
	ld [hl], e
	inc hl
	ld [hl], d
	ret

BattleAnimCmd_Obj:
; index, x, y, param
	ld a, [wBattleAnimByte]
	and 1
	ld [wBattleObjectTempID + 1], a
	call GetBattleAnimByte
	ld [wBattleObjectTempID], a
	call GetBattleAnimByte
	ld [wBattleObjectTempXCoord], a
	call GetBattleAnimByte
	ld [wBattleObjectTempYCoord], a
	call GetBattleAnimByte
	ld [wBattleObjectTempParam], a
	jp QueueBattleAnimation

BattleAnimCmd_BGEffect:
	call GetBattleAnimByte
	ld [wBattleAnimTemp0], a
	call GetBattleAnimByte
	ld [wBattleAnimTemp1], a
	call GetBattleAnimByte
	ld [wBattleAnimTemp2], a
	call GetBattleAnimByte
	ld [wBattleAnimTemp3], a
	jp _QueueBGEffect

BattleAnimCmd_BGP:
	call GetBattleAnimByte
	ld [wBGP], a
	ret

BattleAnimCmd_OBP0:
	call GetBattleAnimByte
	ld [wOBP0], a
	ret

BattleAnimCmd_OBP1:
	call GetBattleAnimByte
	ld [wOBP1], a
	ret

BattleAnimCmd_ResetObp0:
	ldh a, [hSGB]
	and a
	ld a, $e0
	jr z, .not_sgb
	ld a, $f0
.not_sgb
	ld [wOBP0], a
	ret

BattleAnimCmd_ClearObjs:
	ld hl, wActiveAnimObjects
	ld a, NUM_ANIM_OBJECTS * BATTLEANIMSTRUCT_LENGTH
.loop
	ld [hl], 0
	inc hl
	dec a
	jr nz, .loop
	ret

BattleAnimCmd_1GFX:
BattleAnimCmd_2GFX:
BattleAnimCmd_3GFX:
BattleAnimCmd_4GFX:
BattleAnimCmd_5GFX:
	ld a, [wBattleAnimByte]
	and $f
	ld c, a
	ld hl, wBattleAnimTileDict
	xor a
	ld [wBattleAnimTemp0], a
.loop
	ld a, [wBattleAnimTemp0]
	cp (vTiles1 - vTiles0) / LEN_2BPP_TILE - BATTLEANIM_BASE_TILE
	ret nc
	call GetBattleAnimByte
	ld [hli], a
	ld a, [wBattleAnimTemp0]
	ld [hli], a
	push bc
	push hl
	ld l, a
	ld h, $0
rept 4
	add hl, hl
endr
	ld de, vTiles0 tile BATTLEANIM_BASE_TILE
	add hl, de
	ld a, [wBattleAnimByte]
	call LoadBattleAnimGFX
	ld a, [wBattleAnimTemp0]
	add c
	ld [wBattleAnimTemp0], a
	pop hl
	pop bc
	dec c
	jr nz, .loop
	ret

BattleAnimCmd_IncObj:
	call GetBattleAnimByte
	ld e, NUM_ANIM_OBJECTS
	ld bc, wActiveAnimObjects
.loop
	ld hl, BATTLEANIMSTRUCT_INDEX
	add hl, bc
	ld d, [hl]
	ld a, [wBattleAnimByte]
	cp d
	jr z, .found
	ld hl, BATTLEANIMSTRUCT_LENGTH
	add hl, bc
	ld c, l
	ld b, h
	dec e
	jr nz, .loop
	ret

.found
	ld hl, BATTLEANIMSTRUCT_ANON_JT_INDEX
	add hl, bc
	inc [hl]
	ret

BattleAnimCmd_IncBGEffect:
	call GetBattleAnimByte
	ld e, NUM_BG_EFFECTS
	ld bc, wBGEffect1Function
.loop
	ld hl, $0
	add hl, bc
	ld d, [hl]
	ld a, [wBattleAnimByte]
	cp d
	jr z, .found
	ld hl, 4
	add hl, bc
	ld c, l
	ld b, h
	dec e
	jr nz, .loop
	ret

.found
	ld hl, BG_EFFECT_STRUCT_JT_INDEX
	add hl, bc
	inc [hl]
	ret

BattleAnimCmd_SetObj:
	call GetBattleAnimByte
	ld e, NUM_ANIM_OBJECTS
	ld bc, wActiveAnimObjects
.loop
	ld hl, BATTLEANIMSTRUCT_INDEX
	add hl, bc
	ld d, [hl]
	ld a, [wBattleAnimByte]
	cp d
	jr z, .found
	ld hl, BATTLEANIMSTRUCT_LENGTH
	add hl, bc
	ld c, l
	ld b, h
	dec e
	jr nz, .loop
	ret

.found
	call GetBattleAnimByte
	ld hl, BATTLEANIMSTRUCT_ANON_JT_INDEX
	add hl, bc
	ld [hl], a
	ret

BattleAnimCmd_BattlerGFX_1Row:
	ld hl, wBattleAnimTileDict
.loop
	ld a, [hl]
	and a
	jr z, .okay
	inc hl
	inc hl
	jr .loop

.okay
	ld a, ANIM_GFX_PLAYERHEAD
	ld [hli], a
	ld a, ($80 - 6 - 7) - BATTLEANIM_BASE_TILE
	ld [hli], a
	ld a, ANIM_GFX_ENEMYFEET
	ld [hli], a
	ld a, ($80 - 6) - BATTLEANIM_BASE_TILE
	ld [hl], a

	ld hl, vTiles0 tile ($80 - 6 - 7)
	ld de, vTiles2 tile $06 ; Enemy feet start tile
	ld a, 7 tiles ; Enemy pic height
	ld [wBattleAnimTemp0], a
	ld a, 7 ; Copy 7x1 tiles
	call .LoadFeet
	ld de, vTiles2 tile $31 ; Player head start tile
	ld a, 6 tiles ; Player pic height
	ld [wBattleAnimTemp0], a
	ld a, 6 ; Copy 6x1 tiles

.LoadFeet:
	push af
	push hl
	push de
	lb bc, BANK(@), 1
	call Request2bpp
	pop de
	ld a, [wBattleAnimTemp0]
	ld l, a
	ld h, 0
	add hl, de
	ld e, l
	ld d, h
	pop hl
	ld bc, 1 tiles
	add hl, bc
	pop af
	dec a
	jr nz, .LoadFeet
	ret

BattleAnimCmd_BattlerGFX_2Row:
	ld hl, wBattleAnimTileDict
.loop
	ld a, [hl]
	and a
	jr z, .okay
	inc hl
	inc hl
	jr .loop

.okay
	ld a, ANIM_GFX_PLAYERHEAD
	ld [hli], a
	ld a, ($80 - 6 * 2 - 7 * 2) - BATTLEANIM_BASE_TILE
	ld [hli], a
	ld a, ANIM_GFX_ENEMYFEET
	ld [hli], a
	ld a, ($80 - 6 * 2) - BATTLEANIM_BASE_TILE
	ld [hl], a

	ld hl, vTiles0 tile ($80 - 6 * 2 - 7 * 2)
	ld de, vTiles2 tile $05 ; Enemy feet start tile
	ld a, 7 tiles ; Enemy pic height
	ld [wBattleAnimTemp0], a
	ld a, 7 ; Copy 7x2 tiles
	call .LoadHead
	ld de, vTiles2 tile $31 ; Player head start tile
	ld a, 6 tiles ; Player pic height
	ld [wBattleAnimTemp0], a
	ld a, 6 ; Copy 6x2 tiles

.LoadHead:
	push af
	push hl
	push de
	lb bc, BANK(@), 2
	call Request2bpp
	pop de
	ld a, [wBattleAnimTemp0]
	ld l, a
	ld h, 0
	add hl, de
	ld e, l
	ld d, h
	pop hl
	ld bc, 2 tiles
	add hl, bc
	pop af
	dec a
	jr nz, .LoadHead
	ret

BattleAnimCmd_CheckPokeball:
	callfar GetPokeBallWobble
	ld a, c
	ld [wBattleAnimVar], a
	ret

BattleAnimCmd_Transform:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wCurPartySpecies)
	ldh [rSVBK], a
	ld a, [wCurPartySpecies] ; CurPartySpecies
	push af

	ldh a, [hBattleTurn]
	and a
	jr z, .player

	ld a, [wTempBattleMonSpecies] ; TempBattleMonSpecies
	ld [wCurPartySpecies], a ; CurPartySpecies
	ld hl, wBattleMonDVs ; BattleMonDVs
	predef GetCurrentForme
	ld de, vTiles0 tile $00
	predef GetMonFrontpic
	jr .done

.player
	ld a, [wTempEnemyMonSpecies] ; TempEnemyMonSpecies
	ld [wCurPartySpecies], a ; CurPartySpecies
	ld hl, wEnemyMonDVs ; EnemyMonDVs
	predef GetCurrentForme
	ld de, vTiles0 tile $00
	predef GetMonBackpic

.done
	pop af
	ld [wCurPartySpecies], a ; CurPartySpecies
	pop af
	ldh [rSVBK], a
	ret

BattleAnimCmd_UpdateActorPic:
	ld de, vTiles0 tile $00
	ldh a, [hBattleTurn]
	and a
	jr z, .player

	ld hl, vTiles2 tile $00
	ld b, 0
	ld c, 7 * 7
	jp Request2bpp

.player
	ld hl, vTiles2 tile $31
	ld b, 0
	ld c, 6 * 6
	jp Request2bpp

BattleAnimCmd_RaiseSub:
	ldh a, [rSVBK]
	push af
	ld a, 1 ; unnecessary bankswitch?
	ldh [rSVBK], a
	xor a ; sScratch
	call GetSRAMBank

GetSubstitutePic: ; used only for BANK(GetSubstitutePic)

	ld hl, sScratch
	ld bc, (7 * 7) tiles
.loop
	xor a
	ld [hli], a
	dec bc
	ld a, c
	or b
	jr nz, .loop

	ldh a, [hBattleTurn]
	and a
	jr z, .player

	ld hl, MonsterSpriteGFX + 0 tiles
	ld de, sScratch + (2 * 7 + 5) tiles
	call .CopyTile
	ld hl, MonsterSpriteGFX + 1 tiles
	ld de, sScratch + (3 * 7 + 5) tiles
	call .CopyTile
	ld hl, MonsterSpriteGFX + 2 tiles
	ld de, sScratch + (2 * 7 + 6) tiles
	call .CopyTile
	ld hl, MonsterSpriteGFX + 3 tiles
	ld de, sScratch + (3 * 7 + 6) tiles
	call .CopyTile

	ld hl, vTiles2 tile $00
	ld de, sScratch
	lb bc, BANK(GetSubstitutePic), 7 * 7
	call Request2bpp
	jr .done

.player
	ld hl, MonsterSpriteGFX + 4 tiles
	ld de, sScratch + (2 * 6 + 4) tiles
	call .CopyTile
	ld hl, MonsterSpriteGFX + 5 tiles
	ld de, sScratch + (3 * 6 + 4) tiles
	call .CopyTile
	ld hl, MonsterSpriteGFX + 6 tiles
	ld de, sScratch + (2 * 6 + 5) tiles
	call .CopyTile
	ld hl, MonsterSpriteGFX + 7 tiles
	ld de, sScratch + (3 * 6 + 5) tiles
	call .CopyTile

	ld hl, vTiles2 tile $31
	ld de, sScratch
	lb bc, BANK(GetSubstitutePic), 6 * 6
	call Request2bpp

.done
	call CloseSRAM
	pop af
	ldh [rSVBK], a
	ret

.CopyTile:
	ld bc, 1 tiles
	ld a, BANK(MonsterSpriteGFX)
	jp FarCopyBytes

GetMinimizePic:
	ld hl, sScratch
	ld bc, (7 * 7) tiles
.loop
	xor a
	ld [hli], a
	dec bc
	ld a, c
	or b
	jr nz, .loop

	ldh a, [hBattleTurn]
	and a
	jr z, .player

	ld de, sScratch + $1a tiles
	call CopyMinimizePic
	ld hl, vTiles2 tile $00
	ld de, sScratch
	lb bc, BANK(GetMinimizePic), 7 * 7
	ret

.player
	ld de, sScratch + $160
	call CopyMinimizePic
	ld hl, vTiles2 tile $31
	ld de, sScratch
	lb bc, BANK(GetMinimizePic), 6 * 6
	ret

CopyMinimizePic:
	ld hl, MinimizePic
	ld bc, $10
	ld a, BANK(MinimizePic)
	jp FarCopyBytes

MinimizePic:
INCBIN "gfx/battle/minimize.2bpp"

BattleAnimCmd_Minimize:
	ldh a, [rSVBK]
	push af
	ld a, 1 ; unnecessary bankswitch?
	ldh [rSVBK], a
	xor a ; sScratch
	call GetSRAMBank
	call GetMinimizePic
	ld hl, vTiles0 tile $00
	call Request2bpp
	call CloseSRAM
	pop af
	ldh [rSVBK], a
	ret

BattleAnimCmd_DropSub:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wCurPartySpecies)
	ldh [rSVBK], a

	ld a, [wCurPartySpecies] ; CurPartySpecies
	push af
	ldh a, [hBattleTurn]
	and a
	jr z, .player

	callfar DropEnemySub
	jr .done

.player
	callfar DropPlayerSub

.done
	pop af
	ld [wCurPartySpecies], a ; CurPartySpecies
	pop af
	ldh [rSVBK], a
	ret

BattleAnimCmd_BeatUp:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wCurPartySpecies)
	ldh [rSVBK], a
	ld a, [wCurPartySpecies] ; CurPartySpecies
	push af

	ld a, [wBattleAnimParam]
	ld [wCurPartySpecies], a ; CurPartySpecies

	ldh a, [hBattleTurn]
	and a
	jr z, .player

	ld hl, wBattleMonDVs
	predef GetCurrentForme
	ld de, vTiles2 tile $00
	predef GetMonFrontpic
	jr .done

.player
	ld hl, wEnemyMonDVs
	predef GetCurrentForme
	ld de, vTiles2 tile $31
	predef GetMonBackpic

.done
	pop af
	ld [wCurPartySpecies], a ; CurPartySpecies
	ld b, SCGB_BATTLE_COLORS
	call GetSGBLayout
	pop af
	ldh [rSVBK], a
	ret

BattleAnimCmd_OAMOn:
	xor a
	ldh [hOAMUpdate], a
	ret

BattleAnimCmd_OAMOff:
	ld a, $1
	ldh [hOAMUpdate], a
	ret

BattleAnimCmd_KeepSprites:
	ld hl, wBattleAnimFlags
	set BATTLEANIM_KEEPSPRITES_F, [hl]
	ret

BattleAnimCmd_Sound:
	call GetBattleAnimByte
	ld e, a
	srl a
	srl a
	ld [wSFXDuration], a
	call .GetCryTrack
	maskbits NUM_NOISE_CHANS
	ld [wCryTracks], a ; CryTracks

	ld e, a
	ld d, 0
	ld hl, .GetPanning
	add hl, de
	ld a, [hl]
	ld [wStereoPanningMask], a

	call GetBattleAnimByte
	ld e, a
	ld d, 0
	callfar PlayStereoSFX

	ret

.GetPanning:
	db $f0, $0f, $f0, $0f

.GetCryTrack:
	ldh a, [hBattleTurn]
	and a
	jr nz, .enemy

	ld a, e
	ret

.enemy
	ld a, e
	xor 1
	ret

BattleAnimCmd_Cry:
	call GetBattleAnimByte
	maskbits NUM_NOISE_CHANS
	ld e, a
	ld d, 0
	ld hl, .CryData
rept 4
	add hl, de
endr

	ldh a, [rSVBK]
	push af
	ld a, BANK(wEnemyMon) ; wBattleMon is in WRAM0, but EnemyMon is in WRAMX
	ldh [rSVBK], a

	ldh a, [hBattleTurn]
	and a
	jr nz, .enemy

	ld a, $f0
	ld [wCryTracks], a
	ld a, [wBattleMonSpecies]
	jr .done_cry_tracks

.enemy
	ld a, $0f
	ld [wCryTracks], a
	ld a, [wEnemyMonSpecies]

.done_cry_tracks
	push hl
	call LoadCry
	pop hl
	jr c, .done

	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a

	push hl
	ld hl, wCryPitch
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, bc
	ld a, l
	ld [wCryPitch], a
	ld a, h
	ld [wCryPitch + 1], a
	pop hl

	ld a, [hli]
	ld c, a
	ld b, [hl]
	ld hl, wCryLength ; CryLength
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, bc

	ld a, l
	ld [wCryLength], a ; CryLength
	ld a, h
	ld [wCryLength + 1], a
	ld a, 1
	ld [wStereoPanningMask], a

	callfar _PlayCry

.done
	pop af
	ldh [rSVBK], a
	ret

.CryData:
; +pitch, +length
	dw $0000, $00c0
	dw $0000, $0040
	dw $0000, $0000
	dw $0000, $0000

PlayHitSound:
	ld a, [wNumHits]
	cp $1
	jr z, .okay
	cp $4
	ret nz

.okay
	ld a, [wTypeModifier]
	and $7f
	ret z

	cp EFFECTIVE
	ld de, SFX_DAMAGE
	jr z, .play

	ld de, SFX_SUPER_EFFECTIVE
	jr nc, .play

	ld de, SFX_NOT_VERY_EFFECTIVE

.play
	jp PlaySFX

BattleAnimAssignPals:
	ldh a, [hCGB]
	and a
	jr nz, .cgb
	ldh a, [hSGB]
	and a
	ld a, %11100000
	jr z, .sgb
	ld a, %11110000

.sgb
	ld [wOBP0], a
	ld a, %11100100
	ld [wBGP], a
	ld [wOBP1], a
	ret

.cgb
	ld a, %11100100
	ld [wBGP], a
	ld [wOBP0], a
	ld [wOBP1], a
	call DmgToCgbBGPals
	lb de, %11100100, %11100100
	jp DmgToCgbObjPals

ClearBattleAnims::
; Clear animation block
	ld hl, wLYOverrides
	ld bc, wBattleAnimEnd - wLYOverrides
.loop
	ld [hl], $0
	inc hl
	dec bc
	ld a, c
	or b
	jr nz, .loop

	ld hl, wFXAnimID
	ld a, [hli]
	ld c, a
	ld b, [hl]
	call GetBattleAnimPointer
	call BattleAnimAssignPals
	jp BattleAnimDelayFrame

GetBattleAnimPointer:
	inc b
	jr nz, .ok
	ld b, HIGH(SPECIAL_ANIM_OFFSET)
.ok
	dec b
	ld hl, BattleAnimations
	ld a, BANK(BattleAnimations)
	call LoadDoubleIndirectPointer
	jr nz, .found
	ld hl, BattleAnim_Dummy
.found
	ld [wBattleAnimBank], a
	ld a, l
	ld [wBattleAnimAddress], a
	ld a, h
	ld [wBattleAnimAddress + 1], a
	ret

BattleAnim_RevertPals:
	call WaitTop
	ld a, %11100100
	ld [wBGP], a
	ld [wOBP0], a
	ld [wOBP1], a
	call DmgToCgbBGPals
	lb de, %11100100, %11100100
	call DmgToCgbObjPals
	xor a
	ldh [hSCX], a
	ldh [hSCY], a
	call BattleAnimDelayFrame
	ld a, 1
	ldh [hBGMapMode], a
	ret

BattleAnim_SetBGPals:
	ldh [rBGP], a
	ldh a, [hCGB]
	and a
	ret z
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals1)
	ldh [rSVBK], a
	ld hl, wBGPals2
	ld de, wBGPals1
	ldh a, [rBGP]
	ld b, a
	ld c, 7
	call CopyPals
	ld hl, wOBPals2
	ld de, wOBPals1
	ldh a, [rBGP]
	ld b, a
	ld c, 2
	call CopyPals
	pop af
	ldh [rSVBK], a
	ld a, 1
	ldh [hCGBPalUpdate], a
	ret

BattleAnim_SetOBPals:
	ldh [rOBP0], a
	ldh a, [hCGB]
	and a
	ret z
	ldh a, [rSVBK]
	push af
	ld a, BANK(wOBPals1)
	ldh [rSVBK], a
	ld hl, wOBPals2 palette PAL_BATTLE_OB_GRAY
	ld de, wOBPals1 palette PAL_BATTLE_OB_GRAY
	ldh a, [rOBP0]
	ld b, a
	ld c, 2
	call CopyPals
	pop af
	ldh [rSVBK], a
	ld a, 1
	ldh [hCGBPalUpdate], a
	ret

BattleAnim_UpdateOAM_All:
	ld a, 0
	ld [wBattleAnimOAMPointerLo], a
	ld hl, wActiveAnimObjects
	ld e, NUM_ANIM_OBJECTS
.loop
	ld a, [hl]
	and a
	jr z, .next
	ld c, l
	ld b, h
	push hl
	push de
	call DoBattleAnimFrame
	call BattleAnimOAMUpdate
	pop de
	pop hl
	ret c

.next
	ld bc, BATTLEANIMSTRUCT_LENGTH
	add hl, bc
	dec e
	jr nz, .loop
	ld a, [wBattleAnimOAMPointerLo]
	ld l, a
	ld h, HIGH(wVirtualOAM)
.loop2
	ld a, l
	cp LOW(wVirtualOAMEnd)
	ret nc
	xor a
	ld [hli], a
	jr .loop2
