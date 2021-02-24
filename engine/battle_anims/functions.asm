DoBattleAnimFrame:
	ld hl, BATTLEANIMSTRUCT_FUNCTION
	add hl, bc
	ld e, [hl]
	ld d, 0
	ld hl, .Jumptable
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.Jumptable:
; entries correspond to BATTLEANIMFUNC_* constants
	dw BattleAnimFunction_Null ; 00
	dw BattleAnimFunction_01 ; 01
	dw BattleAnimFunction_02 ; 02
	dw BattleAnimFunction_03 ; 03
	dw BattleAnimFunction_04 ; 04
	dw BattleAnimFunction_ThrowFromPlayerToEnemy ; 05
	dw BattleAnimFunction_ThrowFromPlayerToEnemyAndDisappear ; 06
	dw BattleAnimFunction_07 ; 07
	dw BattleAnimFunction_08 ; 08
	dw BattleAnimFunction_09 ; 09
	dw BattleAnimFunction_0A ; 0a
	dw BattleAnimFunction_RazorLeaf ; 0b
	dw BattleAnimFunction_0C ; 0c
	dw BattleAnimFunction_0D ; 0d
	dw BattleAnimFunction_0E ; 0e
	dw BattleAnimFunction_0F ; 0f
	dw BattleAnimFunction_10 ; 10
	dw BattleAnimFunction_11 ; 11
	dw BattleAnimFunction_PokeBall ; 12
	dw BattleAnimFunction_PokeBallBlocked ; 13
	dw BattleAnimFunction_14 ; 14
	dw BattleAnimFunction_15 ; 15
	dw BattleAnimFunction_16 ; 16
	dw BattleAnimFunction_17 ; 17
	dw BattleAnimFunction_18 ; 18
	dw BattleAnimFunction_19 ; 19
	dw BattleAnimFunction_1A ; 1a
	dw BattleAnimFunction_1B ; 1b
	dw BattleAnimFunction_1C ; 1c
	dw BattleAnimFunction_1D ; 1d
	dw BattleAnimFunction_1E ; 1e
	dw BattleAnimFunction_1F ; 1f
	dw BattleAnimFunction_LeechSeed ; 20
	dw BattleAnimFunction_21 ; 21
	dw BattleAnimFunction_22 ; 22
	dw BattleAnimFunction_23 ; 23
	dw BattleAnimFunction_24 ; 24
	dw BattleAnimFunction_25 ; 25
	dw BattleAnimFunction_26 ; 26
	dw BattleAnimFunction_27 ; 27
	dw BattleAnimFunction_28 ; 28
	dw BattleAnimFunction_SpiralDescent ; 29
	dw BattleAnimFunction_PoisonGas ; 2a
	dw BattleAnimFunction_Horn ; 2b
	dw BattleAnimFunction_2C ; 2c
	dw BattleAnimFunction_2D ; 2d
	dw BattleAnimFunction_2E ; 2e
	dw BattleAnimFunction_2F ; 2f
	dw BattleAnimFunction_30 ; 30
	dw BattleAnimFunction_31 ; 31
	dw BattleAnimFunction_32 ; 32
	dw BattleAnimFunction_33 ; 33
	dw BattleAnimFunction_34 ; 34
	dw BattleAnimFunction_35 ; 35
	dw BattleAnimFunction_36 ; 36
	dw BattleAnimFunction_37 ; 37
	dw BattleAnimFunction_38 ; 38
	dw BattleAnimFunction_39 ; 39
	dw BattleAnimFunction_3A ; 3a
	dw BattleAnimFunction_3B ; 3b
	dw BattleAnimFunction_3C ; 3c
	dw BattleAnimFunction_3D ; 3d
	dw BattleAnimFunction_3E ; 3e
	dw BattleAnimFunction_3F ; 3f
	dw BattleAnimFunction_40 ; 40
	dw BattleAnimFunction_41 ; 41
	dw BattleAnimFunction_42 ; 42
	dw BattleAnimFunction_43 ; 43
	dw BattleAnimFunction_44 ; 44
	dw BattleAnimFunction_45 ; 45
	dw BattleAnimFunction_46 ; 46
	dw BattleAnimFunction_47 ; 47
	dw BattleAnimFunction_48 ; 48
	dw BattleAnimFunction_49 ; 49
	dw BattleAnimFunction_4A ; 4a
	dw BattleAnimFunction_4B ; 4b
	dw BattleAnimFunction_4C ; 4c
	dw BattleAnimFunction_4D ; 4d
	dw BattleAnimFunction_4E ; 4e
	dw BattleAnimFunction_4F ; 4f
	dw BattleAnimFunction_50 ; 50
	dw BattleAnimFunction_51 ; 51
	dw BattleAnimFunction_52 ; 52
	dw BattleAnimFunction_53 ; 53
	dw BattleAnimFunction_54 ; 54
	dw BattleAnimFunction_55 ; 55

BattleAnimFunction_Null:
	call BattleAnim_AnonJumptable

	dw GenericDummyFunction
	dw DeinitBattleAnimation

BattleAnimFunction_ThrowFromPlayerToEnemyAndDisappear:
	call BattleAnimFunction_ThrowFromPlayerToEnemy
	jp nc, DeinitBattleAnimation
	ret

BattleAnimFunction_ThrowFromPlayerToEnemy:
	; If x coord at $88 or beyond, abort.
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $88
	ret nc
	; Move right 2 pixels
	add 2
	ld [hl], a
	; Move down 1 pixel
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	dec [hl]
	; Decrease ??? and hold onto its previous value (argument of the sine function)
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	dec [hl]
	; Get ???, which is the amplitude of the sine function
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld d, [hl]
	call BattleAnim_Sine
	; Store the result in the Y offset
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	; Carry flag denotes success
	scf
	ret

BattleAnimFunction_04:
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $88
	jp nc, DeinitBattleAnimation

	add 2
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	dec [hl]
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	inc [hl]
	inc [hl]
	inc [hl]
	inc [hl]
	ld d, $10
	push af
	push de
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	sra a
	sra a
	sra a
	sra a
	ld [hl], a
	ret

BattleAnimFunction_03:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	bit 7, [hl]
	ld a, $0
	jr z, .asm_cd0f9
	ld a, $20
.asm_cd0f9
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $7f
	ld [hl], a
.one
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld d, [hl]
	push af
	push de
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	inc [hl]
	ret

BattleAnimFunction_01:
	call BattleAnim_AnonJumptable

	dw .zero
	dw DeinitBattleAnimation

.zero
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $84
	ret nc
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	jp BattleAnim_StepToTarget

BattleAnimFunction_02:
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $84
	jp nc, DeinitBattleAnimation
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	jp BattleAnim_StepToTarget

BattleAnimFunction_PokeBall:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw GenericDummyFunction
	dw .three
	dw .four
	dw GenericDummyFunction
	dw .six
	dw .seven
	dw .eight
	dw GenericDummyFunction
	dw .ten
	dw DeinitBattleAnimation

.zero ; init
	call GetBallAnimPal
	jp BattleAnim_IncAnonJumptableIndex

.one
	call BattleAnimFunction_ThrowFromPlayerToEnemy
	ret c
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	add [hl]
	ld [hl], a
	ld a, BATTLEANIMFRAMESET_0B
	call ReinitBattleAnimFrameset
	jp BattleAnim_IncAnonJumptableIndex

.three
	call BattleAnim_IncAnonJumptableIndex
	ld a, BATTLEANIMFRAMESET_09
	call ReinitBattleAnimFrameset
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], 0
	inc hl
	ld [hl], $10
.four
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	dec a
	ld [hl], a
	and $1f
	ret nz
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	sub 4
	ld [hl], a
	ret nz
	ld a, BATTLEANIMFRAMESET_0C
	call ReinitBattleAnimFrameset
	jp BattleAnim_IncAnonJumptableIndex

.six
	ld a, BATTLEANIMFRAMESET_0D
	call ReinitBattleAnimFrameset
	ld hl, BATTLEANIMSTRUCT_ANON_JT_INDEX
	add hl, bc
	dec [hl]
	ret

.seven
	call GetBallAnimPal
	ld a, BATTLEANIMFRAMESET_0A
	call ReinitBattleAnimFrameset
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], $20
.eight
.ten
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	dec a
	ld [hl], a
	and $1f
	jp z, DeinitBattleAnimation
	and $f
	call z, BattleAnim_IncAnonJumptableIndex
	ret

BattleAnimFunction_PokeBallBlocked:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw .two

.zero
	call GetBallAnimPal
	jp BattleAnim_IncAnonJumptableIndex

.one
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $70
	jp c, BattleAnimFunction_ThrowFromPlayerToEnemy
	call BattleAnim_IncAnonJumptableIndex
.two
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	ld a, [hl]
	cp $80
	jp nc, DeinitBattleAnimation
	add $4
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	dec [hl]
	dec [hl]
	ret

GetBallAnimPal:
	ld hl, BallColors
	ldh a, [rSVBK]
	push af
	ld a, BANK(wCurItem)
	ldh [rSVBK], a
	ld a, [wCurItem]
	ld e, a
	pop af
	ldh [rSVBK], a
.IsInArray:
	ld a, [hli]
	cp -1
	jr z, .load
	cp e
	jr z, .load
	inc hl
	jr .IsInArray

.load
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_PALETTE
	add hl, bc
	ld [hl], a
	ret

INCLUDE "data/battle_anims/ball_colors.asm"

BattleAnimFunction_10:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw DeinitBattleAnimation
	dw .three
	dw GenericDummyFunction

.zero
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	swap a
	and $f
	ld hl, BATTLEANIMSTRUCT_ANON_JT_INDEX
	add hl, bc
	ld [hl], a
	ret

.one
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $88
	ret nc
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	jp BattleAnim_StepToTarget

.three
	call BattleAnim_IncAnonJumptableIndex
	ld a, BATTLEANIMFRAMESET_0F
	jp ReinitBattleAnimFrameset

BattleAnimFunction_07:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $30
	inc hl
	ld [hl], $48
.one
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	inc [hl]
	ld a, [hl]
	and $3f
	ret nz
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $20
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	sub [hl]
	jp z, DeinitBattleAnimation
	jp c, DeinitBattleAnimation
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], a
	ret

BattleAnimFunction_08:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw .two
	dw .three

.zero
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $80
	jr c, .SetCoords
.next
	call BattleAnim_IncAnonJumptableIndex
.one
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], 0
.two
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	cp $40
	jr nc, .loop_back
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	ld d, $18
	call BattleAnim_Cosine
	sub $18
	sra a
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	ld d, $18
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $f
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	add [hl]
	ld [hl], a
	ret

.loop_back
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $f0
	jr z, .finish
	sub $10
	ld d, a
	ld a, [hl]
	and $f
	or d
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_ANON_JT_INDEX
	add hl, bc
	dec [hl]
	ret

.finish
	call BattleAnim_IncAnonJumptableIndex
.three
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $b0
	jp nc, DeinitBattleAnimation
.SetCoords
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $f
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	add [hl]
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $f
	ld e, a
	srl e
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
.loop
	dec [hl]
	dec e
	jr nz, .loop
	ret

BattleAnimFunction_09:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw DeinitBattleAnimation

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], 0
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $f
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
.one
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	and a
	jr z, .done_one
	dec [hl]
	ret

.done_one
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	swap a
	and $f
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld a, [hl]
	xor $ff
	inc a
	ld [hl], a
	ret

BattleAnimFunction_0A:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw .two
	dw .three
	dw .four
	dw .five
	dw GenericDummyFunction
	dw .seven
	dw .eight
	dw DeinitBattleAnimation

.zero
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_ANON_JT_INDEX
	add hl, bc
	ld [hl], a
	cp 7
	jr z, .seven
	ld a, BATTLEANIMFRAMESET_11
	jp ReinitBattleAnimFrameset

.seven
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $88
	jr nc, .set_up_eight
	add 2
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	dec [hl]
	ret

.set_up_eight
	call BattleAnim_IncAnonJumptableIndex
	ld a, BATTLEANIMFRAMESET_10
	call ReinitBattleAnimFrameset
.eight
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	ld d, $10
	push af
	push de
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	inc [hl]
	ret

.one
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	dec [hl]
	ret

.four
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	inc [hl]
.two
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	dec [hl]
	ret

.five
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	inc [hl]
.three
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	inc [hl]
	ret

BattleAnimFunction_RazorLeaf:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw .two
	dw .three
	dw BattleAnim_IncAnonJumptableIndex
	dw BattleAnim_IncAnonJumptableIndex
	dw BattleAnim_IncAnonJumptableIndex
	dw BattleAnim_IncAnonJumptableIndex
	dw .eight

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $40
.one
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	cp $30
	jr nc, .sine_cosine
	call BattleAnim_IncAnonJumptableIndex
	xor a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hli], a
	ld [hl], a
	ld a, BATTLEANIMFRAMESET_17
	call ReinitBattleAnimFrameset
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	bit 6, [hl]
	ret z
	ld hl, BATTLEANIMSTRUCT_FRAME
	add hl, bc
	ld [hl], 5
	ret

.sine_cosine
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $3f
	ld d, a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	dec [hl]
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	call Functioncd557
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld h, [hl]
	ld l, a
	add hl, de
	ld e, l
	ld d, h
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld [hl], d
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], e
	ret

.two
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, [hl]
	cp $20
	jp z, DeinitBattleAnimation
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	ld d, $10
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	bit 6, [hl]
	jr nz, .decrease
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	inc [hl]
	jr .finish

.decrease
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	dec [hl]
.finish
	ld de, $80
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld h, [hl]
	ld l, a
	add hl, de
	ld e, l
	ld d, h
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], d
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], e
	ret

.three
	ld a, BATTLEANIMFRAMESET_16
	call ReinitBattleAnimFrameset
	ld hl, BATTLEANIMSTRUCT_01
	add hl, bc
	res 5, [hl]
	jp BattleAnim_IncAnonJumptableIndex

.eight
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $c0
	ret nc
	ld a, 8
	jp BattleAnim_StepToTarget

Functioncd557:
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	bit 7, a
	jr nz, .negative
	cp $20
	jr nc, .plus_256
	cp $18
	jr nc, .plus_384
	ld de, $200
	ret

.plus_384
	ld de, $180
	ret

.plus_256
	ld de, $100
	ret

.negative
	and $3f
	cp $20
	jr nc, .minus_256
	cp $18
	jr nc, .minus_384
	ld de, -$200
	ret

.minus_384
	ld de, -$180
	ret

.minus_256
	ld de, -$100
	ret

BattleAnimFunction_54:
	call BattleAnim_AnonJumptable

	dw BattleAnimFunction_4E.after_frameset
	dw BattleAnimFunction_4E.one

BattleAnimFunction_4E:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one

.zero
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $40
	rlca
	rlca
	add $19
	ld hl, BATTLEANIMSTRUCT_FRAMESET_ID
	add hl, bc
	ld [hl], a
.after_frameset
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $40
.one
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	cp $30
	jp c, DeinitBattleAnimation
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $3f
	ld d, a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	dec [hl]
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	call Functioncd557
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld h, [hl]
	ld l, a
	add hl, de
	ld e, l
	ld d, h
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld [hl], d
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], e
	ret

BattleAnimFunction_0C:
	call BattleAnim_AnonJumptable


	dw .zero
	dw .one
	dw .two

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $c
.one
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	and a
	jr z, .next
	dec [hl]
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	jp BattleAnim_StepToTarget

.next
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $0
	ld a, BATTLEANIMFRAMESET_22
	call ReinitBattleAnimFrameset
.two
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $98
	jr nc, .okay
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld h, [hl]
	ld l, a
	ld de, $60
	add hl, de
	ld e, l
	ld d, h
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], e
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld [hl], d
.okay
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	ld a, [hl]
	cp $20
	ret c
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $f0
	ld e, a
	ld d, $ff
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	ld h, [hl]
	ld l, a
	add hl, de
	ld e, l
	ld d, h
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], e
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	ld [hl], d
	ret

BattleAnimFunction_0D:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw GenericDummyFunction
	dw .three
	dw DeinitBattleAnimation

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld a, LOW(rSCY)
	ldh [hLCDCPointer], a
	ld a, $58
	ldh [hLYOverrideStart], a
	ld a, $5e
	ldh [hLYOverrideEnd], a
	ret

.one
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld e, [hl]
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	ld a, [hl]
	cp e
	jr nc, .asm_cd69b
	call BattleAnim_IncAnonJumptableIndex
	xor a
	ldh [hLYOverrideStart], a
	ret

.asm_cd69b
	dec a
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	ld d, $10
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	add [hl]
	sub $10
	ret c
	ldh [hLYOverrideStart], a
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld a, [hl]
	inc a
	and $7
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	inc [hl]
	inc [hl]
	ret

.three
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	ld a, [hl]
	cp $70
	jr c, .asm_cd6da
	xor a
	ldh [hLCDCPointer], a
	ldh [hLYOverrideStart], a
	ldh [hLYOverrideEnd], a
	jp DeinitBattleAnimation

.asm_cd6da
	inc a
	inc a
	ld [hl], a
	sub $10
	ret c
	ldh [hLYOverrideStart], a
	ret

BattleAnimFunction_0E:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, BATTLEANIMFRAMESET_24
	add [hl] ; BATTLEANIMFRAMESET_25 BATTLEANIMFRAMESET_26
	call ReinitBattleAnimFrameset
.one
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $b8
	jp nc, DeinitBattleAnimation
	ld a, 2
	call BattleAnim_StepToTarget
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	dec [hl]
	ld d, 8
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ret

BattleAnimFunction_0F:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw .two
	dw GenericDummyFunction

.zero
	call BattleAnim_IncAnonJumptableIndex
.one
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	ld a, [hl]
	cp $30
	jr c, .asm_cd747
	ld a, 2
	call BattleAnim_StepToTarget
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	dec [hl]
	ld d, 8
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ret

.asm_cd747
	call BattleAnim_IncAnonJumptableIndex
	ld a, BATTLEANIMFRAMESET_28
	call ReinitBattleAnimFrameset
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], 0
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	ld [hl], $30
	ld hl, BATTLEANIMSTRUCT_01
	add hl, bc
	ld a, [hl]
	and 1
	ld [hl], a
.two
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, [hl]
	cp $18
	jr nc, .asm_cd76e
	inc [hl]
	ret

.asm_cd76e
	call BattleAnim_IncAnonJumptableIndex
	ld a, BATTLEANIMFRAMESET_29
	jp ReinitBattleAnimFrameset

BattleAnimFunction_11:
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, [hl]
	cp $38
	jp nc, DeinitBattleAnimation
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld l, [hl]
	ld h, a
	ld de, $80
	add hl, de
	ld e, l
	ld d, h
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], e
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], d
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld a, [hl]
	xor $10
	ld [hl], a
	ret

BattleAnimFunction_14:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $f0
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $f
	add a, a
	add a, a
	add a, a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld [hl], 1
.one
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	and a
	jp z, DeinitBattleAnimation
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	inc [hl]
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld d, [hl]
	push af
	push de
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	xor $1
	ld [hl], a
	ret z
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	dec [hl]
	ret

BattleAnimFunction_15:
	call BattleAnim_AnonJumptable

	dw GenericDummyFunction
	dw .one
	dw GenericDummyFunction
	dw DeinitBattleAnimation

.one
	call BattleAnim_IncAnonJumptableIndex
	ld a, BATTLEANIMFRAMESET_35
	jp ReinitBattleAnimFrameset

BattleAnimFunction_16:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw BattleAnim_IncAnonJumptableIndex
	dw BattleAnim_IncAnonJumptableIndex
	dw BattleAnim_IncAnonJumptableIndex
	dw BattleAnim_IncAnonJumptableIndex
	dw .six

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_FRAMESET_ID
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	bit 7, [hl]
	jr nz, .asm_cd852
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $10
	jr .asm_cd858

.asm_cd852
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $30
.asm_cd858
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $7f
	ld [hl], a
.one
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld d, [hl]
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	bit 7, a
	jr nz, .load_no_inc
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	inc a ; BATTLEANIMFRAMESET_3B, BATTLEANIMFRAMESET_A1
	jr .reinit

.load_no_inc
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl] ; BATTLEANIMFRAMESET_3A, BATTLEANIMFRAMESET_A0
.reinit
	call ReinitBattleAnimFrameset
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	inc [hl]
	ld a, [hl]
	and $1f
	jp z, BattleAnim_IncAnonJumptableIndex
	ret

.six
	ld hl, BATTLEANIMSTRUCT_ANON_JT_INDEX
	add hl, bc
	ld [hl], 1
	ret

BattleAnimFunction_17:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw BattleAnim_IncAnonJumptableIndex
	dw BattleAnim_IncAnonJumptableIndex
	dw BattleAnim_IncAnonJumptableIndex
	dw BattleAnim_IncAnonJumptableIndex
	dw .six

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	bit 7, [hl]
	jr nz, .asm_cd8be
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $10
	jr .asm_cd8c4

.asm_cd8be
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $30
.asm_cd8c4
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $7f
	ld [hl], a
.one
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld d, [hl]
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	add a, a
	ld a, BATTLEANIMFRAMESET_3C
	jr c, .asm_cd8e8
	ld a, BATTLEANIMFRAMESET_3D
.asm_cd8e8
	call ReinitBattleAnimFrameset
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	inc [hl]
	inc [hl]
	ld a, [hl]
	and $1f
	jp z, BattleAnim_IncAnonJumptableIndex
	ret

.six
	ld hl, BATTLEANIMSTRUCT_ANON_JT_INDEX
	add hl, bc
	ld [hl], 1
	ret

BattleAnimFunction_18:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $28
	inc hl
	ld [hl], 0
.one
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld d, [hl]
	push af
	push de
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	and a
	jp z, DeinitBattleAnimation
	ld d, a
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld e, [hl]
	ld hl, -$80
	add hl, de
	ld e, l
	ld d, h
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], e
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], d
	ret

BattleAnimFunction_19:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one_three
	dw .two
	dw .one_three
	dw .four

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld [hl], 0
	jr .one_three

.two
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $88
	jr c, .asm_cd988
	jp BattleAnim_IncAnonJumptableIndex

.four
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $b8
	jp nc, DeinitBattleAnimation
.asm_cd988
	call .one_three
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	inc [hl]
	ld a, [hl]
	and $1
	ret nz
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	dec [hl]
	ret

.one_three
	call Functioncd9f4
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	push af
	push de
	call BattleAnim_Sine
	sra a
	sra a
	sra a
	sra a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	add [hl]
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	sub $8
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_cd9d7
	cp $c2
	jr c, .asm_cd9e2
.asm_cd9d7
	dec a
	ld [hl], a
	and $7
	ret nz
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	inc [hl]
	ret

.asm_cd9e2
	xor a
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hli], a
	ld [hl], a
	ret

Functioncd9f4:
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld e, [hl]
	ld d, 0
	ld hl, .data
	add hl, de
	ld d, [hl]
	ret

.data
	db 8, 6, 5, 4, 5, 6, 8, 12, 16

BattleAnimFunction_1C:
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $30
	jp c, DeinitBattleAnimation
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $f
	ld e, a
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	sub e
	ld [hl], a
	srl e
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
.asm_cda2c
	inc [hl]
	dec e
	jr nz, .asm_cda2c
	ret

BattleAnimFunction_1F:
	call BattleAnim_AnonJumptable

	dw GenericDummyFunction
	dw .one
	dw GenericDummyFunction

.one
	ld hl, BATTLEANIMSTRUCT_FRAMESET_ID
	add hl, bc
	ld a, [hl]
	inc a ; BATTLEANIMFRAMESET_53, BATTLEANIMFRAMESET_55
	call ReinitBattleAnimFrameset
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], 8
	ret

BattleAnimFunction_LeechSeed:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw .two
	dw GenericDummyFunction

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], $40
	ret

.one
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	cp $20
	jr nc, Functioncda8d
	ld [hl], $40
	ld a, BATTLEANIMFRAMESET_57
	call ReinitBattleAnimFrameset
	jp BattleAnim_IncAnonJumptableIndex

.two
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	and a
	jr z, .flutter
	dec [hl]
	ret

.flutter
	call BattleAnim_IncAnonJumptableIndex
	ld a, BATTLEANIMFRAMESET_58
	jp ReinitBattleAnimFrameset

Functioncda8d:
	dec [hl]
	ld d, $20
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_02
	add hl, bc
	ld a, [hl]
	add $2
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld e, [hl]
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld d, [hl]
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld h, [hl]
	ld a, h
	and $f
	swap a
	ld l, a
	ld a, h
	and $f0
	swap a
	ld h, a
	add hl, de
	ld e, l
	ld d, h
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], e
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld [hl], d
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	and 1
	ret nz
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	dec [hl]
	ret

BattleAnimFunction_3F:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw GenericDummyFunction

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], $40
	ret

.one
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	cp $20
	jr nc, Functioncda8d
	jp BattleAnim_IncAnonJumptableIndex

BattleAnimFunction_1A:
	call BattleAnimFunction_03
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	add $f
	ld [hl], a
	ret

BattleAnimFunction_1B:
	call BattleAnim_AnonJumptable

	dw GenericDummyFunction
	dw .one
	dw .two
	dw .three
	dw .four

.one
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	ld a, [hl]
	cp $30
	jr c, .asm_cdb24
	ld hl, BATTLEANIMSTRUCT_ANON_JT_INDEX
	add hl, bc
	ld [hl], 0
	ret

.asm_cdb24
	add 4
	ld [hl], a
	ret

.two
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $98
	ret nc
	inc [hl]
	inc [hl]
	ld hl, BATTLEANIMSTRUCT_01
	add hl, bc
	set 0, [hl]
	ld hl, BATTLEANIMSTRUCT_02
	add hl, bc
	ld [hl], $90
	ld hl, BATTLEANIMSTRUCT_FRAME
	add hl, bc
	ld [hl], 0
	ld hl, BATTLEANIMSTRUCT_DURATION
	add hl, bc
	ld [hl], 2
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	dec [hl]
	ret

.three
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $2c
	ld hl, BATTLEANIMSTRUCT_FRAME
	add hl, bc
	ld [hl], 0
	ld hl, BATTLEANIMSTRUCT_DURATION
	add hl, bc
	ld [hl], $80
.four
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $98
	ret nc
	inc [hl]
	inc [hl]
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	inc [hl]
	ld d, 8
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ret

BattleAnimFunction_1D:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw .two
	dw .three
	dw GenericDummyFunction
	dw DeinitBattleAnimation
	dw .six
	dw .seven
	dw .eight
	dw .nine
	dw GenericDummyFunction
	dw .eleven
	dw .twelve
	dw GenericDummyFunction

.zero
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $28
	inc hl
	ld [hl], $10
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_ANON_JT_INDEX
	add hl, bc
	ld [hl], a
	ret

.one
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $40
.asm_cdbba
	jr nc, .asm_cdbbd
	inc [hl]
.asm_cdbbd
	jp Functioncdc75

.six
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $4b
	jr .asm_cdbba

.two
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $88
	jr nc, .asm_cdbe6
	and $f
	jr nz, .asm_cdbfa
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], $10
	jp BattleAnim_IncAnonJumptableIndex

.asm_cdbe6
	call BattleAnim_IncAnonJumptableIndex
	inc [hl]
	ret

.three
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_cdbf5
	dec [hl]
	ret

.asm_cdbf5
	ld hl, BATTLEANIMSTRUCT_ANON_JT_INDEX
	add hl, bc
	dec [hl]
.asm_cdbfa
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	inc [hl]
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	ld d, [hl]
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld e, [hl]
	ld hl, -$80
	add hl, de
	ld e, l
	ld d, h
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	ld [hl], d
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], e
	ret

.seven
	ld a, BATTLEANIMFRAMESET_4E
	call ReinitBattleAnimFrameset
	jp BattleAnim_IncAnonJumptableIndex

.eight
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	inc [hl]
	inc [hl]
	ld d, $2
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ret

.nine
	ld a, BATTLEANIMFRAMESET_50
	call ReinitBattleAnimFrameset
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], 4
	jp BattleAnim_IncAnonJumptableIndex

.eleven
	ld a, BATTLEANIMFRAMESET_4F
	call ReinitBattleAnimFrameset
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $40
	ret

.twelve
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	ld d, $20
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	cp $30
	jp c, BattleAnim_IncAnonJumptableIndex
	dec [hl]
	ret

Functioncdc75:
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	inc [hl]
	ld a, [hl]
	and $3f
	ret nz
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $20
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	sub $8
	ld [hl], a
	ret nz
	xor a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hli], a
	ld [hl], a
	jp BattleAnim_IncAnonJumptableIndex

BattleAnimFunction_1E:
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_cdcb6
	cp $d8
	jp c, DeinitBattleAnimation
.asm_cdcb6
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld d, [hl]
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, [hl]
	sub d
	ld [hl], a
	ret

BattleAnimFunction_21:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one

.zero
	ldh a, [hBattleTurn]
	and a
	jr z, .asm_cdcd9
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	cpl
	add 3
	ld [hl], a
.asm_cdcd9
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $8
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, BATTLEANIMFRAMESET_59
	add [hl] ; BATTLEANIMFRAMESET_5A BATTLEANIMFRAMESET_5B
	jp ReinitBattleAnimFrameset

.one
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	and a
	jp z, DeinitBattleAnimation
	dec [hl]
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	inc [hl]
	inc [hl]
	ld d, $10
	call BattleAnim_Sine
	ld d, a
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_cdd20
	dec a
	ret z
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], d
	ret

.asm_cdd20
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, d
	cpl
	inc a
	ld [hl], a
	ret

BattleAnimFunction_22:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $3f
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $80
	rlca
	ld [hl], a
	add BATTLEANIMFRAMESET_5D ; BATTLEANIMFRAMESET_5E
	jp ReinitBattleAnimFrameset

.one
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	swap a
	ld d, a
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	inc [hl]
	push af
	push de
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $80
	ret nc
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	and $3
	jr nz, .asm_cdd87
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	dec [hl]
.asm_cdd87
	and $1
	ret nz
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	inc [hl]
	ret

BattleAnimFunction_23:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_FRAMESET_ID
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $80
	rlca
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	add [hl] ; BATTLEANIMFRAMESET_61 BATTLEANIMFRAMESET_62, BATTLEANIMFRAMESET_9C BATTLEANIMFRAMESET_9D
	call ReinitBattleAnimFrameset
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $7f
	ld [hl], a
.one
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	ld d, $10
	push af
	push de
	call BattleAnim_Sine
	sra a
	sra a
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	inc [hl]
	and $3f
	jr z, .asm_cddf0
	and $1f
	ret nz
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	inc a ; BATTLEANIMFRAMESET_62, BATTLEANIMFRAMESET_9D
	jr .asm_cddf5

.asm_cddf0
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl] ; BATTLEANIMFRAMESET_61, BATTLEANIMFRAMESET_9C
.asm_cddf5
	jp ReinitBattleAnimFrameset

BattleAnimFunction_24:
	call BattleAnim_AnonJumptable

	dw .zero
	dw GenericDummyFunction
	dw DeinitBattleAnimation

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	add BATTLEANIMFRAMESET_63 ; BATTLEANIMFRAMESET_64 BATTLEANIMFRAMESET_65
	call ReinitBattleAnimFrameset
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld e, [hl]
	ld d, 0
	ld hl, .data
	add hl, de
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ret

.data
	db $ec, $f8, $00

BattleAnimFunction_25:
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	inc [hl]
	inc [hl]
	ld d, $4
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld d, [hl]
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld e, [hl]
	lb hl, -1, $a0
	add hl, de
	ld e, l
	ld d, h
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], d
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], e
	ret

BattleAnimFunction_26:
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	dec [hl]
	dec [hl]
	ld d, $10
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	inc [hl]
	ret

BattleAnimFunction_27:
	call BattleAnim_AnonJumptable

	dw .zero
	dw GenericDummyFunction

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .asm_cde83
	ld hl, BATTLEANIMSTRUCT_01
	add hl, bc
	set 6, [hl]
.asm_cde83
	add BATTLEANIMFRAMESET_6A ; BATTLEANIMFRAMESET_6B BATTLEANIMFRAMESET_6C
	jp ReinitBattleAnimFrameset

BattleAnimFunction_28:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], 0
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld e, [hl]
	ld a, e
	and $70
	swap a
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld a, e
	and $80
	jr nz, .asm_cdeb2
	ld a, e
	and $f
	ld [hl], a
	ret

.asm_cdeb2
	ld a, e
	and $f
	cpl
	inc a
	ld [hl], a
	ld a, BATTLEANIMFRAMESET_6E
	jp ReinitBattleAnimFrameset
	ret

.one
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_cdec9
	dec [hl]
	ret

.asm_cdec9
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld a, [hl]
	cpl
	inc a
	ld [hl], a
	ret

BattleAnimFunction_SpiralDescent:
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	ld d, $18
	push af
	push de
	call BattleAnim_Sine
	sra a
	sra a
	sra a
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	add [hl]
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	inc [hl]
	ld a, [hl]
	and $7
	ret nz
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	cp $28
	jp nc, DeinitBattleAnimation
	inc [hl]
	ret

BattleAnimFunction_2D:
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	ld d, $18
	push af
	push de
	call BattleAnim_Sine
	sra a
	sra a
	sra a
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	add [hl]
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	inc [hl]
	ld a, [hl]
	and $3
	ret nz
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	cp $28
	jp nc, DeinitBattleAnimation
	inc [hl]
	ret

BattleAnimFunction_PoisonGas:
	call BattleAnim_AnonJumptable

	dw .zero
	dw BattleAnimFunction_SpiralDescent

.zero
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $84
	jp nc, BattleAnim_IncAnonJumptableIndex
	inc [hl]
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	inc [hl]
	ld d, $18
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	and 1
	ret nz
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	dec [hl]
	ret

BattleAnimFunction_34:
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	ld d, $18
	push af
	push de
	call BattleAnim_Sine
	sra a
	sra a
	sra a
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	add [hl]
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	inc [hl]
	inc [hl]
	ld a, [hl]
	and $7
	ret nz
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	cp $e8
	jp z, DeinitBattleAnimation
	dec [hl]
	ret

BattleAnimFunction_3C:
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	ld d, $18
	push af
	push de
	call BattleAnim_Sine
	sra a
	sra a
	sra a
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	add [hl]
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	inc [hl]
	inc [hl]
	ld a, [hl]
	and 3
	ret nz
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	cp $d0
	jp z, DeinitBattleAnimation
	dec [hl]
	dec [hl]
	ret

BattleAnimFunction_35:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw DeinitBattleAnimation

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $34
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], $10
.one
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $6c
	ret nc
	ld a, 2
	call BattleAnim_StepToTarget
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld d, [hl]
	call BattleAnim_Sine
	bit 7, a
	jr nz, .asm_ce046
	cpl
	inc a
.asm_ce046
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	sub $4
	ld [hl], a
	and $1f
	cp $20
	ret nz
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	srl [hl]
	ret

BattleAnimFunction_Horn:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw .two
	dw .three

.zero
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_ANON_JT_INDEX
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], a
	ret

.one
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $58
	ret nc
	ld a, 2
	jp BattleAnim_StepToTarget

.two
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	cp $20
	jp nc, DeinitBattleAnimation
.three
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	ld d, 8
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	sra a
	cpl
	inc a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	add [hl]
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	add 8
	ld [hl], a
	ret

BattleAnimFunction_2C:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw .two

.zero
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $f0
	swap a
	ld hl, BATTLEANIMSTRUCT_ANON_JT_INDEX
	add hl, bc
	ld [hl], a
	ret

.two
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	ld d, $10
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	bit 7, a
	jr z, .asm_ce0f0
	ld [hl], a
.asm_ce0f0
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	sub 4
	ld [hl], a
.one
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $84
	jp nc, DeinitBattleAnimation
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	jp BattleAnim_StepToTarget

BattleAnimFunction_2E:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $28
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	ld a, [hl]
	sub $28
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], a
.one
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	and [hl]
	jr nz, .asm_ce149
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	dec [hl]
.asm_ce149
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	inc [hl]
	ld a, [hl]
	and $3f
	ret nz
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $20
	inc hl
	srl [hl]
	ret

BattleAnimFunction_2F:
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld d, [hl]
	push af
	push de
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	inc [hl]
	ld a, [hl]
	and $1
	jr nz, .asm_ce189
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	dec [hl]
.asm_ce189
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $3
	jr nz, .asm_ce197
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	inc [hl]
.asm_ce197
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	cp $5a
	jr nc, .asm_ce1aa
	ld a, [hl]
	and a
	jp z, DeinitBattleAnimation
	dec [hl]
	ret

.asm_ce1aa
	inc [hl]
	ret

BattleAnimFunction_42:
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	inc [hl]
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld d, [hl]
	push af
	push de
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	inc [hl]
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	cp $40
	jr nc, .asm_ce1df
	inc [hl]
	ret

.asm_ce1df
	ld a, [hl]
	dec [hl]
	and a
	jp z, DeinitBattleAnimation
	ret

BattleAnimFunction_30:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], a
.one
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	ld d, $30
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	add [hl]
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	add 8
	ld d, $30
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	inc [hl]
	ret

BattleAnimFunction_31:
	call BattleAnim_AnonJumptable

	dw .zero
	dw GenericDummyFunction

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	ld d, $10
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	ld d, $10
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld [hl], $f
	ret

BattleAnimFunction_32:
	call BattleAnim_AnonJumptable

	dw .zero
	dw Functionce29f
	dw .two
	dw .three

.zero
	call BattleAnim_IncAnonJumptableIndex
	ldh a, [hBattleTurn]
	and a
	ld a, $cc
	jr nz, .asm_ce26e
	ld a, $f0
.asm_ce26e
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], a
	ret

.two
	call Functionce29f
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $84
	ret nc
	ld a, 4
	jp BattleAnim_StepToTarget

.three
	call Functionce29f
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $d0
	jp nc, DeinitBattleAnimation
	ld a, 4
	jp BattleAnim_StepToTarget

Functionce29f:
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	and 7
	inc [hl]
	srl a
	ld e, a
	ld d, 0
	ldh a, [hSGB]
	and a
	ld hl, .data_ce2c8
	jr nz, .asm_ce2b9
	ld hl, .data_ce2c4
.asm_ce2b9
	add hl, de
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	and [hl]
	ld [wOBP0], a
	ret

.data_ce2c4
	db $ff, $aa, $55, $aa
.data_ce2c8
	db $ff, $ff, $00, $00

BattleAnimFunction_33:
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	ld d, $18
	call BattleAnim_Sine
	sra a
	sra a
	sra a
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	add [hl]
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	inc [hl]
	ld d, $18
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	dec [hl]
	dec [hl]
	ret

BattleAnimFunction_36:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw .two

.zero
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, [hl]
	cp $e0
	jr nz, .asm_ce319
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], 2
	ret

.asm_ce319
	ld d, a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld e, [hl]
	ld hl, -$80
	add hl, de
	ld e, l
	ld d, h
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], d
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], e
	ret

.one
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_ce33a
	dec [hl]
	ret

.asm_ce33a
	ld [hl], $4
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	cpl
	inc a
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	add [hl]
	ld [hl], a
	ret

.two
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $84
	jp nc, DeinitBattleAnimation
	ld a, 4
	jp BattleAnim_StepToTarget

BattleAnimFunction_37:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $7f
	add BATTLEANIMFRAMESET_81 ; BATTLEANIMFRAMESET_82 BATTLEANIMFRAMESET_83
	call ReinitBattleAnimFrameset
.one
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	bit 7, [hl]
	jr nz, .asm_ce383
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	inc [hl]
	ret

.asm_ce383
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	dec [hl]
	ret

BattleAnimFunction_38:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw .two

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $c
	ret

.one
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_ce3a6
	dec [hl]
	ret

.asm_ce3a6
	call BattleAnim_IncAnonJumptableIndex
	ld a, BATTLEANIMFRAMESET_20
	call ReinitBattleAnimFrameset
.two
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	dec [hl]
	ret

BattleAnimFunction_39:
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	inc [hl]
	inc [hl]
	push af
	ld d, 2
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop af
	ld d, 8
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ret

BattleAnimFunction_3A:
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, [hl]
	cp $20
	jp nc, DeinitBattleAnimation
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	ld d, 8
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	add 2
	ld [hl], a
	and 7
	ret nz
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	inc [hl]
	ret

BattleAnimFunction_3B:
	call BattleAnim_AnonJumptable

	dw .zero
	dw DeinitBattleAnimation

.zero
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	add [hl]
	ld [hl], a
	ret

BattleAnimFunction_3D:
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	ld d, $18
	push af
	push de
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	sra a
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	inc [hl]
	ret

BattleAnimFunction_3E:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw .two

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $28
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $f
	ld hl, BATTLEANIMSTRUCT_FRAMESET_ID
	add hl, bc
	; BATTLEANIMFRAMESET_8F BATTLEANIMFRAMESET_90 BATTLEANIMFRAMESET_91
	; BATTLEANIMFRAMESET_93 BATTLEANIMFRAMESET_94 BATTLEANIMFRAMESET_95
	add [hl]
	call ReinitBattleAnimFrameset
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $f0
	or 8
	ld [hl], a
.one
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_ce48b
	dec [hl]
	add 8
	ld d, a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	push af
	push de
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ret

.asm_ce48b
	ld [hl], $10
	call BattleAnim_IncAnonJumptableIndex
.two
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	dec [hl]
	and a
	jp z, DeinitBattleAnimation
	ret

BattleAnimFunction_40:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, BATTLEANIMFRAMESET_24
	add [hl] ; BATTLEANIMFRAMESET_25 BATTLEANIMFRAMESET_26
	call ReinitBattleAnimFrameset
.one
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, [hl]
	cp $38
	jp nc, DeinitBattleAnimation
	inc [hl]
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	inc [hl]
	ld d, $18
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	ld a, [hl]
	and 1
	ret nz
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	dec [hl]
	ret

BattleAnimFunction_41:
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and a
	ret z
	ld d, a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	inc [hl]
	call BattleAnim_Sine
	bit 7, a
	jr nz, .asm_ce4f4
	cpl
	inc a
.asm_ce4f4
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	and $1f
	ret nz
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	srl [hl]
	ret

BattleAnimFunction_43:
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	cp $10
	jp nc, DeinitBattleAnimation
	inc [hl]
	inc [hl]
	ld d, a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	push af
	push de
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ret

BattleAnimFunction_44:
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld e, [hl]
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld d, [hl]
	ld a, e
	and $c0
	rlca
	rlca
	add [hl]
	ld [hl], a
	ld a, e
	and $3f
	push af
	push de
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ret

BattleAnimFunction_45:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw .two

.zero
	ld d, 24
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	inc [hl]
	jp BattleAnim_StepCircle

.one
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], 24
.two
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	cp 128
	jp nc, DeinitBattleAnimation
	ld d, a
	add 8
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	jp BattleAnim_StepCircle

BattleAnimFunction_46:
	call BattleAnim_AnonJumptable

	dw GenericDummyFunction
	dw .one

.one
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $30
	jp c, DeinitBattleAnimation
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	dec [hl]
	dec [hl]
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	inc [hl]
	inc [hl]
	ret

BattleAnimFunction_47:
	ld d, $50
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	inc [hl]
	inc [hl]
	push af
	push de
	call BattleAnim_Sine
	sra a
	sra a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	add [hl]
	inc [hl]
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ret

BattleAnimFunction_48:
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, [hl]
	cp $d0
	jp z, DeinitBattleAnimation
	dec [hl]
	dec [hl]
	dec [hl]
	dec [hl]
	ret

BattleAnimFunction_49:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw .two
	dw DeinitBattleAnimation

.zero
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .asm_ce61c
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], $ec
.one
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, [hl]
	cp 4
	jp z, DeinitBattleAnimation
	inc [hl]
	inc [hl]
	inc [hl]
	inc [hl]
	ret

.asm_ce61c
	call BattleAnim_IncAnonJumptableIndex
	call BattleAnim_IncAnonJumptableIndex
.two
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, [hl]
	cp $d8
	ret z
	dec [hl]
	dec [hl]
	dec [hl]
	dec [hl]
	ret

BattleAnimFunction_4A:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw .two
	dw .three

.zero
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	ld hl, BATTLEANIMSTRUCT_ANON_JT_INDEX
	add hl, bc
	ld [hl], a
	jp BattleAnim_IncAnonJumptableIndex

.one
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, [hl]
	add 4
	cp $70
	jr c, .asm_ce654
	xor a
.asm_ce654
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	inc [hl]
	inc [hl]
	ret

.two
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, [hl]
	add 4
	cp $70
	jr c, .asm_ce668
	xor a
.asm_ce668
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld a, [hl]
	add 8
	ld [hl], a
	ret

.three
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, [hl]
	add 4
	cp $70
	jr c, .asm_ce67e
	xor a
.asm_ce67e
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld a, [hl]
	add 4
	ld [hl], a
	ret

BattleAnimFunction_4B:
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld d, [hl]
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld e, [hl]
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	ld l, a
	and $f0
	ld h, a
	swap a
	or h
	ld h, a
	ld a, l
	and $f
	swap a
	ld l, a
	add hl, de
	ld e, l
	ld d, h
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld [hl], d
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], e
	ret

BattleAnimFunction_4C:
	ld d, $18
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	inc [hl]
	jr BattleAnim_StepCircle

BattleAnimFunction_4F:
	ld d, $18
	ld hl, BATTLEANIMSTRUCT_10
	add hl, bc
	ld a, [hl]
	inc [hl]
	srl a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	add [hl]
	jr BattleAnim_StepCircle

BattleAnimFunction_4D:
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	cp $20
	jp nc, DeinitBattleAnimation
	inc [hl]
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld d, [hl]
	call BattleAnim_Sine
	cpl
	inc a
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ret

BattleAnim_StepCircle:
	push af
	push de
	call BattleAnim_Sine
	sra a
	sra a
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	call BattleAnim_Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ret

BattleAnim_StepToTarget:
	and $f
	ld e, a
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	add [hl]
	ld [hl], a
	srl e
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
.asm_ce719
	dec [hl]
	dec e
	jr nz, .asm_ce719
	ret

BattleAnim_AnonJumptable:
	pop de
	ld hl, BATTLEANIMSTRUCT_ANON_JT_INDEX
	add hl, bc
	ld l, [hl]
	ld h, 0
	add hl, hl
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

BattleAnim_IncAnonJumptableIndex:
	ld hl, BATTLEANIMSTRUCT_ANON_JT_INDEX
	add hl, bc
	inc [hl]
	ret

BattleAnim_Cosine:
; a = d * cos(a * pi/32)
	add %010000 ; cos(x) = sin(x + pi/2)
	; fallthrough
BattleAnim_Sine:
; a = d * sin(a * pi/32)
	calc_sine_wave BattleAnimSineWave

BattleAnim_Sine_e:
	ld a, e
	call BattleAnim_Sine
	ld e, a
	ret

BattleAnim_Cosine_e:
	ld a, e
	call BattleAnim_Cosine
	ld e, a
	ret

BattleAnim_AbsSinePrecise:
	ld a, e
	call BattleAnim_Sine
	ld e, l
	ld d, h
	ret

BattleAnim_AbsCosinePrecise:
	ld a, e
	call BattleAnim_Cosine
	ld e, l
	ld d, h
	ret

BattleAnimSineWave:
	sine_table 32
	
BattleAnimFunction_50:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw .two

.zero
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	and $f0
	swap a
	ld hl, BATTLEANIMSTRUCT_ANON_JT_INDEX
	add hl, bc
	ld [hl], a
	ret

.two
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	ld d, $10
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	bit 7, a
	jr z, .skip
	ld [hl], a
.skip
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	sub 4
	ld [hl], a
.one
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hl]
	cp $e4
	jp nc, DeinitBattleAnimation
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	jp BattleAnim_StepToTarget
	
BattleAnimFunction_51:
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	cp $40
	jp nc, DeinitBattleAnimation
	ld d, a
	add 8
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	jp BattleAnim_StepCircle
	
BattleAnimFunction_52:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw GenericDummyFunction

.zero
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $30
	inc hl
	ld [hl], $48
.one
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	call BattleAnim_Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	inc [hl]
	ld a, [hl]
	and $3f
	ret nz
	jp BattleAnim_IncAnonJumptableIndex
	
BattleAnimFunction_53:
    ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, [hl]
	cp $e0
	jr nz, .asm_extra
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], $2
	ret
	
.asm_extra
	ld d, a
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld e, [hl]
	ld hl, -$80
	add hl, de
	ld e, l
	ld d, h
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], d
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], e
	ret

BattleAnimFunction_55:
	call BattleAnim_AnonJumptable

	dw .zero
	dw .one
	dw .two

.zero
	ld d, 24
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	inc [hl]
	jp BattleAnim_StepCircle

.one
	call BattleAnim_IncAnonJumptableIndex
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld [hl], 24
.two
	ld hl, BATTLEANIMSTRUCT_0F
	add hl, bc
	ld a, [hl]
	cp 160
	jp nc, DeinitBattleAnimation
	ld d, a
	add 3
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	jp BattleAnim_StepCircle
