DisplayUsedMoveText:
; battle command 03
	ld hl, UsedMoveText
	call BattleTextbox
	jp WaitBGMap

UsedMoveText:
; this is a stream of text and asm
	text_asm
	ldh a, [hBattleTurn]
	and a
	jr nz, .start

	ld a, [wPlayerMoveStruct + MOVE_ANIM]
	call UpdateUsedMoves

.start
	ld a, BATTLE_VARS_LAST_MOVE
	call GetBattleVarAddr
	ld d, h
	ld e, l

	ld a, BATTLE_VARS_LAST_COUNTER_MOVE
	call GetBattleVarAddr

	ld a, BATTLE_VARS_MOVE_ANIM
	call GetBattleVar
	ld [wTempByteValue], a

	push hl
	farcall CheckUserIsCharging
	pop hl
	jr nz, .ok

	; update last move
	ld a, [wTempByteValue]
	ld [hl], a
	ld [de], a

.ok
	ldh a, [hBattleTurn]
	and a
	jr z, .done
	ld a, [wOtherTrainerClass]
	and a
	jr z, .done
	ld hl, UsedMoveAlternateMessages
	ld e, a
.loop
	ld a, [hli]
	cp e
	jr nz, .skip
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret
.skip
	inc hl
	inc hl
	and a
	jr nz, .loop
.done
	ld hl, .standard_text
	ret

.standard_text
	text_far _ActorNameText
	text_far _UsedMoveText
	text_asm
; check obedience
	ld a, [wAlreadyDisobeyed]
	and a
	ld hl, .MoveNameText
	ret z
; print "instead,"
	ld hl, .UsedInsteadText
	ret

.UsedInsteadText:
	text_far _ActorNameText
	text_far _UsedInsteadText
.MoveNameText:
	text_far _MoveNameText
	text_end

UsedMoveAlternateMessages:
	dbw FC_LARRY, .bootleg_message
	dbw RED_LARRY, .bootleg_message
	dbw BABA, .vc_message
	dbw URF, LSAlternateMessage
	db 0

.vc_message
	text "EN'S@"
	text_ram wEnemyMonNick
	text ""
	line "@"
	text_ram wStringBuffer2
	text "!"
	done

.bootleg_message
	text "FOE @"
	text_ram wEnemyMonNick
	text "'s"
	line "@"
	text_ram wStringBuffer2
	text "!"
	done

LSAlternateMessage:
	text "Enemy@"
	text_ram wEnemyMonNick
	text_asm
	ld hl, .no_line_break
	push bc
	ld c, 5 + 1 ; if the name is longer than this, we'll need a line break
	ld de, wEnemyMonNick
.loop
	ld a, [de]
	inc de
	cp "@"
	jr z, .done
	dec c
	jr nz, .loop
	ld hl, .line_break
.done
	pop bc
	ret
.line_break
	text ""
	line "@"
.no_line_break
	text_ram wStringBuffer2
	text "!"
	done

UpdateUsedMoves:
; append move a to wPlayerUsedMoves unless it has already been used

	push bc
; start of list
	ld hl, wPlayerUsedMoves
; get move id
	ld b, a
; next count
	ld c, NUM_MOVES

.loop
; get move from the list
	ld a, [hli]
; not used yet?
	and a
	jr z, .add
; already used?
	cp b
	jr z, .quit
; next byte
	dec c
	jr nz, .loop

; if the list is full and the move hasn't already been used
; shift the list back one byte, deleting the first move used
; this can occur with struggle or a new learned move
	ld hl, wPlayerUsedMoves + 1
; 1 = 2
	ld a, [hld]
	ld [hli], a
; 2 = 3
	inc hl
	ld a, [hld]
	ld [hli], a
; 3 = 4
	inc hl
	ld a, [hld]
	ld [hl], a
; 4 = new move
	ld a, b
	ld [wPlayerUsedMoves + 3], a
	jr .quit

.add
; go back to the byte we just inced from
	dec hl
; add the new move
	ld [hl], b

.quit
; list updated
	pop bc
	ret
