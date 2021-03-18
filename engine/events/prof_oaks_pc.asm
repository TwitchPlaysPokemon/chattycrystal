ProfOaksPC:
	ld hl, OakPCText1
	call MenuTextbox
	call YesNoBox
	jr c, .shutdown
	call ProfOaksPCBoot ; player chose "yes"?
.shutdown
	ld hl, OakPCText4
	call PrintText
	call JoyWaitAorB
	jp ExitMenu

ProfOaksPCBoot:
	ld hl, OakPCText2
	call PrintText
	call Rate
	call PlaySFX ; sfx loaded by previous Rate function call
	call JoyWaitAorB
	jp WaitSFX

ProfOaksPCRating:
	call Rate
	push de
	ld de, MUSIC_NONE
	call PlayMusic
	pop de
	call PlaySFX
	call JoyWaitAorB
	jp WaitSFX

Rate:
; calculate Seen/Owned
	ld hl, wPokedexCaught
	ld bc, wEndPokedexCaught - wPokedexCaught
	call CountSetBits16
	push bc
	ld hl, wPokedexSeen
	ld bc, wEndPokedexSeen - wPokedexSeen
	call CountSetBits16

; print appropriate rating
	ld hl, wStringBuffer3
	call .UpdateRatingBuffer
	pop bc
	push bc
	ld hl, wStringBuffer4
	call .UpdateRatingBuffer
	ld hl, OakPCText3
	call PrintText
	call JoyWaitAorB
	pop bc
	ld hl, OakRatings
	call FindOakRating
	push de
	call PrintText
	pop de
	ret

.UpdateRatingBuffer:
	ld a, b
	ld b, c
	ld c, a
	push bc
	push hl
	ld a, "@"
	ld bc, ITEM_NAME_LENGTH
	call ByteFill
	ld hl, sp + 2
	ld d, h
	ld e, l
	pop hl
	lb bc, PRINTNUM_RIGHTALIGN | 2, 4
	call PrintNum
	pop bc
	ret

FindOakRating:
; return sound effect in de
; return text pointer in hl
	ld a, [hli]
	ld d, a
	ld a, [hli]
	cp b
	jr c, .next
	jr nz, .match
	ld a, d
	cp c
	jr nc, .match
.next
	rept 4
		inc hl
	endr
	jr FindOakRating

.match
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

INCLUDE "data/events/pokedex_ratings.asm"
INCLUDE "data/text/pokedex_ratings.asm"
