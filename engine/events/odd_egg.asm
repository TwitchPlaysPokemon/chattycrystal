GiveOddEgg:
	; Figure out which egg to give.

	call Random
	ld hl, OddEggProbabilities
	ld c, -1
.loop
	ld b, a
	ld a, [hli]
	cpl
	inc a
	jr z, GiveOddEgg ; we overshot, resample
	inc c
	add a, b
	jr c, .loop
	ld b, 0

	push bc
	ld hl, OddEggs
	ld a, NICKNAMED_MON_STRUCT_LENGTH
	call AddNTimes

	; Writes to wOddEgg, wOddEggName, and wOddEggOTName,
	; even though OddEggs does not have data for wOddEggOTName
	ld de, wOddEgg
	ld bc, NICKNAMED_MON_STRUCT_LENGTH + NAME_LENGTH
	rst CopyBytes

	; Loads the actual species and overwrites the zero in wOddEggSpecies
	pop hl
	add hl, hl
	push hl
	ld bc, OddEggSpecies
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call GetPokemonIDFromIndex
	ld [wOddEggSpecies], a

	; And likewise with moves
	pop hl
	add hl, hl
	add hl, hl
	ld bc, OddEggMoves
	add hl, bc
	ld c, NUM_MOVES
	ld de, wOddEggMoves
.move_loop
	ld a, [hli]
	push hl
	ld h, [hl]
	ld l, a
	call GetMoveIDFromIndex
	pop hl
	inc hl
	ld [de], a
	inc de
	dec c
	jr nz, .move_loop

	ld a, EGG_TICKET
	ld [wCurItem], a
	ld a, 1
	ld [wItemQuantityChangeBuffer], a
	ld a, -1
	ld [wCurItemQuantity], a
	ld hl, wNumItems
	call TossItem

GiveLoadedEgg:
	; load species in wcd2a
	ld a, EGG
	ld [wMobileMonSpeciesBuffer], a

	; load pointer to (wMobileMonSpeciesBuffer - 1) in wMobileMonSpeciesPointerBuffer
	ld a, LOW(wMobileMonSpeciesBuffer - 1)
	ld [wMobileMonSpeciesPointerBuffer], a
	ld a, HIGH(wMobileMonSpeciesBuffer - 1)
	ld [wMobileMonSpeciesPointerBuffer + 1], a
	; load pointer to wOddEgg in wMobileMonStructurePointerBuffer
	ld a, LOW(wOddEgg)
	ld [wMobileMonStructurePointerBuffer], a
	ld a, HIGH(wOddEgg)
	ld [wMobileMonStructurePointerBuffer + 1], a

	; load Odd Egg Name in wTempOddEggNickname
	ld hl, .Odd
	ld de, wTempOddEggNickname
	ld bc, MON_NAME_LENGTH
	rst CopyBytes

	; load pointer to wTempOddEggNickname in wMobileMonOTNamePointerBuffer
	ld a, LOW(wTempOddEggNickname)
	ld [wMobileMonOTNamePointerBuffer], a
	ld a, HIGH(wTempOddEggNickname)
	ld [wMobileMonOTNamePointerBuffer + 1], a
	; load pointer to wOddEggName in wMobileMonNicknamePointerBuffer
	ld a, LOW(wOddEggName)
	ld [wMobileMonNicknamePointerBuffer], a
	ld a, HIGH(wOddEggName)
	ld [wMobileMonNicknamePointerBuffer + 1], a
	farcall AddMobileMonToParty
	ret

.Odd:
	db "ODD@@@@@@@@@"

GiveChattyMon::
; Gives a mon with special precalculated stats.
	ld a, [wPartyCount]
	cp PARTY_LENGTH
	ret nc
	ld hl, ChattyMonData
	; load the bulk of the mon data into the odd egg slot
	ld de, wOddEgg
	ld bc, NICKNAMED_MON_STRUCT_LENGTH
	rst CopyBytes
	; Loads the actual species and overwrites the zero in wOddEggSpecies
	ld a, [hli]
	push hl
	ld h, [hl]
	ld l, a
	call GetPokemonIDFromIndex
	ld [wOddEggSpecies], a
	pop hl
	inc hl
	; And likewise with moves
	ld c, NUM_MOVES
	ld de, wOddEggMoves
.move_loop
	ld a, [hli]
	push hl
	ld h, [hl]
	ld l, a
	call GetMoveIDFromIndex
	pop hl
	inc hl
	ld [de], a
	inc de
	dec c
	jr nz, .move_loop
	call GiveLoadedEgg
	scf
	ret

INCLUDE "data/events/odd_eggs.asm"
INCLUDE "data/events/chatty_egg.asm"
