ReadTrainerParty:
	ld a, [wInBattleTowerBattle]
	bit 0, a
	ret nz

	ld a, [wLinkMode]
	and a
	ret nz

	ld hl, wOTPartyCount
	xor a
	ld [hli], a
	dec a
	ld [hl], a

	ld hl, wOTPartyMons
	ld bc, wOTPartyMonsEnd - wOTPartyMons
	xor a
	call ByteFill

	ld a, [wOtherTrainerClass]
	cp CAL
	jr nz, .not_cal2
	ld a, [wOtherTrainerID]
	cp CAL2
	jr z, .cal2
	ld a, [wOtherTrainerClass]
.not_cal2

	dec a
	ld c, a
	ld b, 0
	ld hl, TrainerGroups ;go to correct trainer group pointer
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld [wTrainerGroupBank], a ;load in the bank
	ld a, [hli]
	ld h, [hl]
	ld l, a

	ld a, [wOtherTrainerID]
	ld b, a
.skip_trainer
	dec b
	jr z, .got_trainer
.loop
	ld a, [wTrainerGroupBank] ;jump forward the number of bytes equal to the size of the struct
	call GetFarByte
	add a, l
	ld l, a
	jr nc, .skip_trainer
	inc h ;if carry inc h
	jr .skip_trainer
.got_trainer
	inc hl ;move to next byte once found

.skip_name
	call GetNextTrainerDataByte ;go to the end of the name
	cp "@"
	jr nz, .skip_name

	call GetNextTrainerDataByte
	ld [wOtherTrainerType], a ;holds what kind of data the trainer uses
	ld d, h ;put the current pointer in de
	ld e, l
	call ReadTrainerPartyPieces

.done
	jp ComputeTrainerReward

.cal2
	ld a, BANK(sMysteryGiftTrainer)
	call GetSRAMBank
	ld a, TRAINERTYPE_MOVES
	ld [wOtherTrainerType], a
	ld de, sMysteryGiftTrainer
	call ReadTrainerPartyPieces
	call CloseSRAM
	jr .done

ReadTrainerPartyPieces:
	ld h, d
	ld l, e

.loop
	call GetNextTrainerDataByte
	cp $ff
	ret z ;if FF, done

	ld [wCurPartyLevel], a ;load in level
	call GetNextTrainerDataByte
	push hl
	push af
	call GetNextTrainerDataByte
	ld h, a
	pop af
	ld l, a
	call GetPokemonIDFromIndex
	ld [wCurPartySpecies], a ;load in species ID

	ld a, OTPARTYMON
	ld [wMonType], a
	predef TryAddMonToParty
	pop hl
	inc hl ;because hl was pushed before the last call to GetNextTrainerDataByte

	ld a, [wOtherTrainerType]
	and TRAINERTYPE_ITEM
	jr z, .no_item
	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1Item
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl
	call GetNextTrainerDataByte ;load in item if TRAINERTYPE_ITEM is on
	ld [de], a
.no_item

	ld a, [wOtherTrainerType]
	and TRAINERTYPE_MOVES
	jr z, .no_moves
	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1Moves
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl

	ld b, NUM_MOVES
.copy_moves
	call GetNextTrainerDataByte
	push hl
	push af
	call GetNextTrainerDataByte
	ld h, a
	pop af
	ld l, a
	call GetMoveIDFromIndex
	pop hl
	inc hl
	ld [de], a
	inc de
	dec b
	jr nz, .copy_moves

	push hl

	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1
	call GetPartyLocation
	ld d, h
	ld e, l
	ld hl, MON_PP
	add hl, de

	push hl
	ld hl, MON_MOVES
	add hl, de
	pop de

	ld b, NUM_MOVES
.copy_pp
	ld a, [hli]
	and a
	jr z, .copied_pp

	push hl
	ld l, a
	ld a, MOVE_PP
	call GetMoveAttribute
	pop hl

	ld [de], a
	inc de
	dec b
	jr nz, .copy_pp
.copied_pp

	pop hl
.no_moves

	push hl ;we need to get DV location regardless of branch, so do that before the check
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1DVs
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl
	ld a, [wOtherTrainerType] ;TODO if skipped load in DVs via GetTrainerDVs instead
	and TRAINERTYPE_DVS
	jr z, .no_dvs ;if DVs not specified, load in defaults
	call GetNextTrainerDataByte ;load in DVs if TRAINERTYPE_DVs is on
	ld [de], a
	inc de
	call GetNextTrainerDataByte
	ld [de], a
	jr .dvs_done
.no_dvs
	push hl
	farcall GetTrainerDVs
	ld a, b
	ld [de], a
	inc de
	ld a, c
	ld [de], a
	pop hl
.dvs_done

	ld a, [wOtherTrainerType]
	and TRAINERTYPE_STATS
	jr z, .no_stats
	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1HP
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl
	call GetNextTrainerDataByte
	ld [de], a
	inc de
	inc de
	ld [de], a
	dec de
	call GetNextTrainerDataByte
	ld [de], a
	inc de
	inc de
	ld [de], a
	inc de
	ld b, 10
.loop_stats
	call GetNextTrainerDataByte
	ld [de], a
	inc de
	dec b
	jr nz, .loop_stats
.no_stats

	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	call AddNTimes
	ld d, h
	ld e, l
	pop hl
	ld a, [wOtherTrainerType]
	and TRAINERTYPE_NICKNAME
	jr z, .no_nickname
.loop_nickname
	call GetNextTrainerDataByte
	cp "@"
	ld [de], a
	jr z, .nickname_done
	inc de
	jr .loop_nickname
.no_nickname
	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndexBuffer], a
	push de
	call GetPokemonName
	pop de
	push hl
	ld hl, wStringBuffer1
	ld bc, MON_NAME_LENGTH
	call CopyBytes
	pop hl

.nickname_done

;TODO happiness flag

	jp .loop

ComputeTrainerReward:
	ld hl, hProduct
	xor a
	ld [hli], a
	ld [hli], a ; hMultiplicand + 0
	ld [hli], a ; hMultiplicand + 1
	ld a, [wEnemyTrainerBaseReward]
	ld [hli], a ; hMultiplicand + 2
	ld a, [wCurPartyLevel]
	ld [hl], a ; hMultiplier
	call Multiply
	ld hl, wBattleReward
	xor a
	ld [hli], a
	ldh a, [hProduct + 2]
	ld [hli], a
	ldh a, [hProduct + 3]
	ld [hl], a
	ret

Battle_GetTrainerName:: ;copy trainers name into wStringBuffer1
	ld a, [wInBattleTowerBattle]
	bit 0, a
	ld hl, wOTPlayerName
	ld a, BANK(@)
	ld [wTrainerGroupBank], a
	jp nz, CopyTrainerName ;if in battle tower, skip this and get name directly

	ld a, [wOtherTrainerID]
	ld b, a
	ld a, [wOtherTrainerClass]
	ld c, a
	; fallthrough

GetTrainerName:: ;copy trainer class c ID b's name into wStringBuffer1
	ld hl, wChattyTrainerClass
	ld [hl], c
	ld hl, wChattyTrainerID
	ld [hl], b
AissCollectClassAndID::
	ld a, c
	cp CAL
	jr nz, .not_cal2

	ld a, BANK(sMysteryGiftTrainerHouseFlag)
	call GetSRAMBank
	ld a, [sMysteryGiftTrainerHouseFlag]
	and a
	call CloseSRAM
	jr z, .not_cal2

	ld a, BANK(sMysteryGiftPartnerName) ;if trainer house has data, pull name from save data, then leave
	call GetSRAMBank
	ld hl, sMysteryGiftPartnerName
	call CopyTrainerName
	jp CloseSRAM

.not_cal2
	dec c
	push bc
	ld b, 0
	ld hl, TrainerGroups ;go to 3 byte pointer
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld [wTrainerGroupBank], a ;store trainer bank here and pointer in hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop bc

.loop
	dec b
	jr z, .done ;if ID is 0, we're there already, otherwise loop ID times to get the correct party

	ld a, [wTrainerGroupBank]
	call GetFarByte
	add a, l ;otherwise, add the distance to the next party to hl
	ld l, a
	jr nc, .loop
	inc h
	jr .loop

.done
	inc hl
	; fallthrough

CopyTrainerName:
	ld de, wStringBuffer1
	push de
	ld bc, NAME_LENGTH
	ld a, [wTrainerGroupBank]
	call FarCopyBytes
	ld de, EVENT_UNOWN_HATCHED
	ld b, CHECK_FLAG
	call EventFlagAction
	jr z, SkipChattyTrainerInjection
if TESTMODE
	ld hl, ChattyNameText
	ld de, wStringBuffer1
	ld bc, OTNAME_LENGTH
	ld a, BANK(ChattyNameText)
	call FarCopyBytes
else
	ld a, [wScriptActive]
	and a
	jr z, SkipChattyTrainerInjection
	xor a
	ld [wScriptActive], a
AissInjectTrainerNameHere:: ;place name of ID wOtherTrainerID in wStringBuffer1, ending with a @
	nop
endc
SkipChattyTrainerInjection:
	pop de
	ret

if TESTMODE
ChattyNameText:
	db "ChattyTrainerName!@"
endc

GetNextTrainerDataByte:
	ld a, [wTrainerGroupBank]
	call GetFarByte
	inc hl
	ret

INCLUDE "data/trainers/party_pointers.asm"
