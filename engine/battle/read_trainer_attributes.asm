GetTrainerClassName: 
if TESTMODE
else
	ld hl, wRivalName
	ld a, c
	cp RIVAL1
	jr z, .rival
	
	ld [wCurSpecies], a
	ld a, [wScriptActive]
	and a
	jr nz, .chatty
	ld a, TRAINER_NAME
	ld [wNamedObjectTypeBuffer], a
	call GetName
	ld de, wStringBuffer1
	ret
.chatty
endc
	ld hl, ChattyClassText
	ld de, wStringBuffer1
	ld bc, 1
	call CopyBytes
	ld de, wStringBuffer1
	ret
	
if TESTMODE
else
.rival
	ld de, wStringBuffer1
	push de
	ld bc, NAME_LENGTH
	call CopyBytes
	pop de
	ret
endc

GetOTName:
	ld hl, wOTPlayerName
	ld a, [wLinkMode]
	and a
	jr nz, .ok

if TESTMODE
.ok
else
	ld a, [wScriptActive]
	and a
	jr nz, .chatty
	
	ld hl, wRivalName
	ld a, c
	cp RIVAL1
	jr z, .ok
	
	ld [wCurSpecies], a
	ld a, TRAINER_NAME
	ld [wNamedObjectTypeBuffer], a
	call GetName
	ld hl, wStringBuffer1
.ok
	ld bc, TRAINER_CLASS_NAME_LENGTH
	jr .readytocopy
endc

.chatty
	ld hl, ChattyClassText
	ld de, wStringBuffer1
	ld bc, 1
	call CopyBytes
	ld hl, wStringBuffer1
	ld bc, 1
.readytocopy
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
