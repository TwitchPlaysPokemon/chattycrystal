GetTrainerClassName: ;dummied out, returns a blank string

	ld hl, ChattyClassText
	ld de, wStringBuffer1
	ld bc, 1
	call CopyBytes
	ld de, wStringBuffer1
	ret

GetOTName:
	ld hl, wOTPlayerName
	ld a, [wLinkMode]
	and a
	jr nz, .ok

	ld hl, ChattyClassText
	ld de, wStringBuffer1
	ld bc, 1
	call CopyBytes
	ld hl, wStringBuffer1

.ok
	ld bc, 1
	ld de, wOTClassName
	push de
	call CopyBytes
	pop de
	ret

ChattyClassText:
	db "@"

GetTrainerAttributes:
	ld a, [wTrainerClass]
	ld c, a
	call GetOTName
	ld a, [wTrainerClass]
	dec a
	ld hl, TrainerClassAttributes + TRNATTR_ITEM1
	ld bc, NUM_TRAINER_ATTRIBUTES
	call AddNTimes
	ld de, wEnemyTrainerItem1
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld a, [hl]
	ld [wEnemyTrainerBaseReward], a
	ret

INCLUDE "data/trainers/attributes.asm"
