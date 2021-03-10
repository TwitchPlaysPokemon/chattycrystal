BattleTowerRoomMenu:
; special
	call InitBattleTowerChallengeRAM
	farcall _BattleTowerRoomMenu
	ret

BattleTowerBattle:
	xor a ; FALSE
	ld [wBattleTowerBattleEnded], a
	call _BattleTowerBattle
	xor a
	ld l, LOCKED_MON_ID_BATTLE_TOWER_1
	call LockPokemonID
	ld l, LOCKED_MON_ID_BATTLE_TOWER_2
	call LockPokemonID
	ld l, LOCKED_MON_ID_BATTLE_TOWER_3
	call LockPokemonID
	lb bc, NUM_MOVES * 3, LOCKED_MOVE_ID_BATTLE_TOWER_MON1_MOVE1
.loop
	ld l, c
	call LockMoveID
	inc c
	dec b
	jr nz, .loop
	ret

InitBattleTowerChallengeRAM:
	xor a
	ld [wBattleTowerBattleEnded], a
	ld [wNrOfBeatenBattleTowerTrainers], a
	ld [wcf65], a
	ld [wcf66], a
	ret

_BattleTowerBattle:
.loop
	call .do_dw
	call DelayFrame
	ld a, [wBattleTowerBattleEnded]
	cp TRUE
	jr nz, .loop
	ret

.do_dw
	ld a, [wBattleTowerBattleEnded]
	ld e, a
	ld d, 0
	ld hl, .dw
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.dw
	dw RunBattleTowerTrainer
	dw GenericDummyFunction

RunBattleTowerTrainer:
	ld a, [wOptions]
	push af
	ld hl, wOptions
	set BATTLE_SHIFT, [hl] ; SET MODE

	ld a, [wInBattleTowerBattle]
	push af
	or 1
	ld [wInBattleTowerBattle], a

	xor a
	ld [wLinkMode], a
	call LoadBattleTowerParticipants
	call SetBattleTowerPartyLevel
	farcall HealParty
	call ReadBTTrainerParty

	predef StartBattle

	farcall LoadPokemonData
	farcall LoadIndexTables
	farcall HealParty
	ld a, [wBattleResult]
	ld [wScriptVar], a
	and a ; WIN?
	jr nz, .lost
	ld a, BANK(sNrOfBeatenBattleTowerTrainers)
	call GetSRAMBank
	ld a, [sNrOfBeatenBattleTowerTrainers]
	ld [wNrOfBeatenBattleTowerTrainers], a
	call CloseSRAM
	ld hl, wStringBuffer3
	ld a, [wNrOfBeatenBattleTowerTrainers]
	add "1"
	ld [hli], a
	ld a, "@"
	ld [hl], a

.lost
	pop af
	ld [wInBattleTowerBattle], a
	pop af
	ld [wOptions], a
	ld a, TRUE
	ld [wBattleTowerBattleEnded], a
	ret

ReadBTTrainerParty:
; Initialise the BattleTower-Trainer and his mon
	call CopyBTTrainer_FromBT_OT_TowBT_OTTemp

; Check the nicknames for illegal characters, and replace bad nicknames
; with their species names.
	ld de, wBT_OTTempMon1Name
	ld c, MON_NAME_LENGTH
	farcall CheckStringForErrors
	jr nc, .skip_mon_1

	ld a, [wBT_OTTempMon1]
	ld [wNamedObjectIndexBuffer], a
	call GetPokemonName
	ld l, e
	ld h, d
	ld de, wBT_OTTempMon1Name
	ld bc, MON_NAME_LENGTH
	rst CopyBytes

.skip_mon_1
	ld de, wBT_OTTempMon2Name
	ld c, MON_NAME_LENGTH
	farcall CheckStringForErrors
	jr nc, .skip_mon_2
	ld a, [wBT_OTTempMon2]
	ld [wNamedObjectIndexBuffer], a
	call GetPokemonName
	ld l, e
	ld h, d
	ld de, wBT_OTTempMon2Name
	ld bc, MON_NAME_LENGTH
	rst CopyBytes

.skip_mon_2
	ld de, wBT_OTTempMon3Name
	ld c, MON_NAME_LENGTH
	farcall CheckStringForErrors
	jr nc, .skip_mon_3
	ld a, [wBT_OTTempMon3]
	ld [wNamedObjectIndexBuffer], a
	call GetPokemonName
	ld l, e
	ld h, d
	ld de, wBT_OTTempMon3Name
	ld bc, MON_NAME_LENGTH
	rst CopyBytes

.skip_mon_3
; Add the terminator character to each of these names
	ld a, "@"
	ld [wBT_OTTempMon1NameEnd - 1], a
	ld [wBT_OTTempMon2NameEnd - 1], a
	ld [wBT_OTTempMon3NameEnd - 1], a
; Fix errors in the movesets
	call CheckBTMonMovesForErrors
; Repair the trainer name if needed, then copy it to wOTPlayerName
	ld de, wBT_OTTempName
	ld c, NAME_LENGTH - 1
	farcall CheckStringForErrors
	jr nc, .trainer_name_okay
	ld hl, BT_ChrisName
	jr .done_trainer_name

.trainer_name_okay
	ld hl, wBT_OTTempName

.done_trainer_name
	ld de, wOTPlayerName
	ld bc, NAME_LENGTH - 1
	rst CopyBytes
	ld a, "@"
	ld [de], a

	ld hl, wBT_OTTempTrainerClass
	ld a, [hli]
	ld [wOtherTrainerClass], a
	ld a, LOW(wOTPartyMonNicknames)
	ld [wBGMapBuffer], a
	ld a, HIGH(wOTPartyMonNicknames)
	ld [wBGMapBuffer + 1], a

	; Copy mon into Memory from the address in hl
	ld de, wOTPartyMon1Species
	ld bc, wOTPartyCount
	ld a, BATTLETOWER_PARTY_LENGTH
	ld [bc], a
	inc bc
.otpartymon_loop
	push af
	ld a, [hl]
	ld [bc], a
	inc bc
	push bc
	ld bc, PARTYMON_STRUCT_LENGTH
	rst CopyBytes
	push de
	ld a, [wBGMapBuffer]
	ld e, a
	ld a, [wBGMapBuffer + 1]
	ld d, a
	ld bc, MON_NAME_LENGTH
	rst CopyBytes
	ld a, e
	ld [wBGMapBuffer], a
	ld a, d
	ld [wBGMapBuffer + 1], a
	pop de
	pop bc
	pop af
	dec a
	and a
	jr nz, .otpartymon_loop
	ld a, -1
	ld [bc], a
	ret

ValidateBTParty:
; Check for and fix errors in party data
	ld hl, wBT_OTTempMon1Species
	ld d, BATTLETOWER_PARTY_LENGTH
.pkmn_loop
	push de
	push hl
	ld b, h
	ld c, l
	ld a, [hl]
	cp EGG
	jr z, .invalid
	call IsAPokemon
	jr nc, .valid

.invalid
	push hl
	ld hl, SMEARGLE
	call GetPokemonIDFromIndex
	pop hl
	ld [hl], a

.valid
	ld [wCurSpecies], a
	call GetBaseData
	ld a, BANK(s5_b2fb)
	call GetSRAMBank
	ld a, [s5_b2fb] ; max level?
	call CloseSRAM
	ld e, a
	ld hl, MON_LEVEL
	add hl, bc
	ld a, [hl]
	cp MIN_LEVEL
	ld a, MIN_LEVEL
	jr c, .load
	ld a, [hl]
	cp e
	jr c, .dont_load
	ld a, e

.load
	ld [hl], a

.dont_load
	ld [wCurPartyLevel], a
	ld hl, MON_MOVES
	add hl, bc
	ld d, NUM_MOVES - 1
	ld a, [hli]
	and a
	jr z, .not_move
	cp MOVE_TABLE_ENTRIES + 1
	jr c, .valid_move

.not_move
	dec hl
	push hl
	ld hl, POUND
	call GetMoveIDFromIndex
	pop hl
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	jr .done_moves

.valid_move
	ld a, [hl]
	cp MOVE_TABLE_ENTRIES + 1
	jr c, .next
	ld [hl], $0

.next
	inc hl
	dec d
	jr nz, .valid_move

.done_moves
	ld hl, MON_MAXHP
	add hl, bc
	ld d, h
	ld e, l
	push hl
	push de
	ld hl, MON_STAT_EXP - 1
	add hl, bc
	ld b, TRUE
	predef CalcMonStats
	pop de
	pop hl
	dec de
	dec de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	pop hl
	ld bc, NICKNAMED_MON_STRUCT_LENGTH
	add hl, bc
	pop de
	dec d
	jp nz, .pkmn_loop
	ret

BT_ChrisName:
	db "CHRIS@"

CopyBTTrainer_FromBT_OT_TowBT_OTTemp:
; copy the BattleTower-Trainer data that lies at 'wBT_OTTrainer' to 'wBT_OTTemp'
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBT_OTTrainer)
	ldh [rSVBK], a

	ld hl, wBT_OTTrainer
	ld de, wBT_OTTemp
	ld bc, BATTLE_TOWER_STRUCT_LENGTH
	rst CopyBytes

	pop af
	ldh [rSVBK], a

	ld a, BANK(sBattleTowerChallengeState)
	call GetSRAMBank
	ld a, BATTLETOWER_CHALLENGE_IN_PROGESS
	ld [sBattleTowerChallengeState], a
	ld hl, sNrOfBeatenBattleTowerTrainers
	inc [hl]
	jp CloseSRAM

BattleTowerAction:
	ld a, [wScriptVar]
	ld e, a
	ld d, 0
	ld hl, .dw
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.dw
	dw BattleTowerAction_CheckExplanationRead
	dw BattleTowerAction_SetExplanationRead
	dw BattleTowerAction_GetChallengeState
	dw BattleTowerAction_SetByteToQuickSaveChallenge
	dw BattleTowerAction_SetByteToCancelChallenge
	dw SaveBattleTowerLevelGroup
	dw LoadBattleTowerLevelGroup
	dw BattleTower_CheckSaveFileExistsAndIsYours
	dw BattleTowerAction_MaxVolume
	dw CheckMobileEventIndex
	dw BattleTowerAction_EggTicket
	dw BattleTowerAction_LevelCheck
	dw BattleTowerAction_UbersCheck
	dw ResetBattleTowerTrainersSRAM
	dw BattleTower_GiveReward
	dw BattleTowerAction_SetWonChallenge
	dw BattleTowerAction_SetReceivedReward
	dw BattleTower_RandomlyChooseReward
	dw BattleTower_SaveOptions

; Reset the save memory for BattleTower-Trainers (Counter and all 7 TrainerBytes)
ResetBattleTowerTrainersSRAM:
	ld a, BANK(sBTTrainers)
	call GetSRAMBank

	ld a, $ff
	ld hl, sBTTrainers
	ld bc, BATTLETOWER_STREAK_LENGTH
	call ByteFill

	xor a
	ld [sNrOfBeatenBattleTowerTrainers], a

	jp CloseSRAM

BattleTower_GiveReward:
	ld a, BANK(sBattleTowerReward)
	call GetSRAMBank

	ld a, [sBattleTowerReward]
	call CloseSRAM
	ld [wScriptVar], a
	ld hl, wNumItems
	ld a, [hli]
	cp MAX_ITEMS
	ret c
	ld b, MAX_ITEMS
	ld a, [wScriptVar]
	ld c, a
.loop
	ld a, [hli]
	cp c
	jr nz, .next
	ld a, [hl]
	cp 95
	ret c
.next
	inc hl
	dec b
	jr nz, .loop
	ld a, POTION
	ld [wScriptVar], a
	ret

BattleTowerAction_SetWonChallenge:
	ld a, BANK(sBattleTowerChallengeState)
	call GetSRAMBank
	ld a, BATTLETOWER_WON_CHALLENGE
	ld [sBattleTowerChallengeState], a
	jp CloseSRAM

BattleTowerAction_SetReceivedReward:
	ld a, BANK(sBattleTowerChallengeState)
	call GetSRAMBank
	ld a, BATTLETOWER_RECEIVED_REWARD
	ld [sBattleTowerChallengeState], a
	jp CloseSRAM

BattleTower_SaveOptions:
	farcall SaveOptions
	ret

BattleTower_RandomlyChooseReward:
; Generate a random stat boosting item.
.loop
	call Random
	ldh a, [hRandomAdd]
	and $7
	cp 6
	jr c, .okay
	sub 6
.okay
	add HP_UP
	cp LUCKY_PUNCH
	jr z, .loop
	push af
	ld a, BANK(sBattleTowerReward)
	call GetSRAMBank
	pop af
	ld [sBattleTowerReward], a
	jp CloseSRAM

BattleTowerAction_CheckExplanationRead:
	call BattleTower_CheckSaveFileExistsAndIsYours
	ld a, [wScriptVar]
	and a
	ret z

	ld a, BANK(sBattleTowerSaveFileFlags)
	call GetSRAMBank
	ld a, [sBattleTowerSaveFileFlags]
	and 2
	ld [wScriptVar], a
	jp CloseSRAM

BattleTowerAction_GetChallengeState:
	ld hl, sBattleTowerChallengeState
	ld a, BANK(sBattleTowerChallengeState)
	call GetSRAMBank
	ld a, [hl]
	ld [wScriptVar], a
	jp CloseSRAM

BattleTowerAction_SetExplanationRead:
	ld a, BANK(sBattleTowerSaveFileFlags)
	call GetSRAMBank
	ld a, [sBattleTowerSaveFileFlags]
	or 2
	ld [sBattleTowerSaveFileFlags], a
	jp CloseSRAM

BattleTowerAction_SetByteToQuickSaveChallenge:
	ld c, BATTLETOWER_SAVED_AND_LEFT
	jr asm_17079f

BattleTowerAction_SetByteToCancelChallenge:
	ld c, BATTLETOWER_NO_CHALLENGE
asm_17079f:
	ld a, BANK(sBattleTowerChallengeState)
	call GetSRAMBank
	ld a, c
	ld [sBattleTowerChallengeState], a
	jp CloseSRAM

SaveBattleTowerLevelGroup:
	ld a, BANK(sBTChoiceOfLevelGroup)
	call GetSRAMBank
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBTChoiceOfLvlGroup)
	ldh [rSVBK], a
	ld a, [wBTChoiceOfLvlGroup]
	ld [sBTChoiceOfLevelGroup], a
	pop af
	ldh [rSVBK], a
	jp CloseSRAM

LoadBattleTowerLevelGroup: ; Load level group choice
	ld a, BANK(sBTChoiceOfLevelGroup)
	call GetSRAMBank
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBTChoiceOfLvlGroup)
	ldh [rSVBK], a
	ld a, [sBTChoiceOfLevelGroup]
	ld [wBTChoiceOfLvlGroup], a
	pop af
	ldh [rSVBK], a
	jp CloseSRAM

BattleTower_CheckSaveFileExistsAndIsYours:
	ld a, [wSaveFileExists]
	and a
	jr z, .done
	farcall CompareLoadedAndSavedPlayerID
	ld a, TRUE
	jr z, .done
	xor a ; FALSE
.done
	ld [wScriptVar], a
	ret

BattleTowerAction_MaxVolume:
	xor a
	ld [wMusicFade], a
	jp MaxVolume

CheckMobileEventIndex:
	ld a, BANK(sMobileEventIndex)
	call GetSRAMBank
	ld a, [sMobileEventIndex]
	ld [wScriptVar], a
	jp CloseSRAM

BattleTowerAction_EggTicket:
	xor a ; FALSE
	ld [wScriptVar], a
	ld a, EGG_TICKET
	ld [wCurItem], a
	ld hl, wNumItems
	call CheckItem
	ret nc
	ld a, [wPartyCount]
	ld b, 0
	ld c, a
	ld hl, wPartySpecies
.loop
	ld a, [hli]
	cp EGG
	jr nz, .not_egg
	push hl
	ld hl, wPartyMonOT
	ld de, NAME_LENGTH_JAPANESE
	ld a, b
	and a
	jr z, .skip
.loop2
	add hl, de
	dec a
	jr nz, .loop2
.skip
	ld de, String_MysteryJP
	ld a, NAME_LENGTH_JAPANESE
.compare_loop
	push af
	ld a, [de]
	inc de
	cp [hl]
	inc hl
	jr nz, .different
	pop af
	dec a
	jr nz, .compare_loop
rept 4
	dec hl
endr
	ld a, "@"
	ld [hli], a
	ld [hli], a
	pop hl
	ld a, EGG_TICKET
	ld [wCurItem], a
	ld a, 1
	ld [wItemQuantityChangeBuffer], a
	ld a, -1
	ld [wCurItemQuantity], a
	ld hl, wNumItems
	call TossItem
	ld a, TRUE
	ld [wScriptVar], a
	ret

.different
	pop af
	pop hl
.not_egg
	inc b
	dec c
	jr nz, .loop
	ret

String_MysteryJP:
	db "なぞナゾ@@" ; MYSTERY

BattleTowerAction_LevelCheck:
	ld a, BANK(s5_b2fb)
	call GetSRAMBank
	ld a, [s5_b2fb]
	call CloseSRAM
	ld c, 10
	call SimpleDivide
	ld a, b
	ld [wcd4f], a
	xor a
	ld [wScriptVar], a
	farcall BattleTower_LevelCheck
	ret nc
	ld a, BANK(s5_b2fb)
	call GetSRAMBank
	ld a, [s5_b2fb]
	call CloseSRAM
	ld [wScriptVar], a
	ret

BattleTowerAction_UbersCheck:
	ld a, BANK(s5_b2fb)
	call GetSRAMBank
	ld a, [s5_b2fb]
	call CloseSRAM
	ld c, 10
	call SimpleDivide
	ld a, b
	ld [wcd4f], a
	xor a
	ld [wScriptVar], a
	farcall BattleTower_UbersCheck
	ret nc
	ld a, BANK(s5_b2fb)
	call GetSRAMBank
	ld a, [s5_b2fb]
	call CloseSRAM
	ld [wScriptVar], a
	ret

LoadOpponentTrainerAndPokemonWithOTSprite:
	farcall Function_LoadOpponentTrainerAndPokemons
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBT_OTTrainerClass)
	ldh [rSVBK], a
	ld hl, wBT_OTTrainerClass
	ld a, [hl]
	dec a
	ld c, a
	ld b, 0
	pop af
	ldh [rSVBK], a
	ld hl, BTTrainerClassSprites
	add hl, bc
	ld a, [hl]
	ld [wBTTempOTSprite], a

; Load sprite of the opponent trainer
; because s/he is chosen randomly and appears out of nowhere
	ld a, [wScriptVar]
	dec a
	sla a
	ld e, a
	sla a
	sla a
	sla a
	ld c, a
	ld b, 0
	ld d, 0
	ld hl, wMapObjects
	add hl, bc
	inc hl
	ld a, [wBTTempOTSprite]
	ld [hl], a
	ld hl, wUsedSprites
	add hl, de
	ld [hli], a
	ldh [hUsedSpriteIndex], a
	ld a, [hl]
	ldh [hUsedSpriteTile], a
	farcall GetUsedSprite
	ret

INCLUDE "data/trainers/sprites.asm"

SelectBTParticipants:
; Selects participants for entering Battle Tower
	; Clear old participants selection.
	xor a
	ld [wBT_PartySelectCounter], a

	; Select 3 mons to enter.
	farcall BT_PartySelect

	; Return false (i.e. 0) if the player aborted the selection.
	ld hl, wScriptVar
	ld [hl], 0
	ret c
	inc [hl]
	ret

NewBattleTowerSession:
; Writes party selections to SRAM and initializes the BT party.
	ld a, BANK(sBTPartySelection)
	call GetSRAMBank
	ld hl, wBT_PartySelections
	ld de, sBTPartySelection
	ld bc, BATTLETOWER_PARTY_LENGTH
	rst CopyBytes
	; Initialize party here for the benefit of Uber checks.
LoadBattleTowerParticipants:
; Loads battle tower participants. Assumes current party setup is regular.
	; Loads seleections from SRAM
	ld a, BANK(sBTPartySelection)
	call GetSRAMBank
	ld hl, sBTPartySelection
	ld de, wBT_PartySelections
	ld bc, BATTLETOWER_PARTY_LENGTH
	rst CopyBytes
	ld a, BATTLETOWER_PARTY_LENGTH
	ld [wBT_PartySelectCounter], a

	; Loads selections from player party into OT party.
	call BT_SetPlayerOT

	; Copies OT party to main party.
	ld hl, wOTPartyCount
	ld de, wPartyCount
	ld bc, wOTPartyDataEnd - wOTPartyCount
	rst CopyBytes
	jp CloseSRAM

SetBattleTowerPartyLevel:
	; Figure out level setting
	ld a, [rSVBK]
	push af
	ld a, BANK(wBTChoiceOfLvlGroup)
	ld [rSVBK], a
	ld a, [wBTChoiceOfLvlGroup]
	add a
	ld b, a
	add a
	add a
	add b
	ld d, a
	pop af
	ld [rSVBK], a

	ld a, [wPartyCount]
	ld hl, wPartyMon1
	dec a
	ld e, a
.loop
	push hl
	ld a, e
	push de
	call GetPartyLocation

	; Get base stats and experience group
	ld bc, wPartyMon1Species - wPartyMon1
	add hl, bc
	ld a, [hl]
	ld [wCurSpecies], a
	ld [wCurPartySpecies], a
	call GetBaseData

	ld bc, wPartyMon1Level - wPartyMon1Species
	add hl, bc
	pop de
	push de
	ld a, d
	ld [hl], a
	ld [wCurPartyLevel], a ; for stat calculation

	; Set up Exp properly
	ld bc, wPartyMon1Exp - wPartyMon1Level
	add hl, bc
	push hl
	farcall CalcExpAtLevel
	pop hl
	ldh a, [hProduct + 1]
	ld [hli], a
	ldh a, [hProduct + 2]
	ld [hli], a
	ldh a, [hProduct + 3]
	ld [hl], a
	pop de
	push de

	; Calculate stats
	ld bc, wPartyMon1MaxHP - wPartyMon1Exp - 2
	add hl, bc
	push hl
	ld bc, wPartyMon1StatExp - wPartyMon1MaxHP - 1
	add hl, bc ; 'hl' now points to Stat Exp - 1, needed by CalcPkmnStats
	pop de

	ld b, TRUE
	push de
	predef CalcMonStats
	pop hl
	push hl
	ld bc, wOTPartyMon1HP - wOTPartyMon1MaxHP
	add hl, bc
	pop de
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hl], a
	pop de
	pop hl
	ld a, e
	and a
	ret z
	dec e
	jr .loop

CheckForBattleTowerRules:
	farcall _CheckForBattleTowerRules
	sbc a
	and TRUE
	ld [wScriptVar], a
	ret

BT_SetPlayerOT:
; Interprets the selected party mons for entering and populates wOTParty
; with the chosen Pokémon from the player. Used for 2 things: legality
; checking and to fix the party order according to player choices.
	; Number of party mons
	ld a, [wBT_PartySelectCounter]
	ld [wOTPartyCount], a

	; The rest is iterated
	ld bc, 0
	ld d, a
.loop
	; Party species array
	push de
	ld hl, wPartySpecies
	ld de, wOTPartySpecies
	ld a, 1 ; just a single byte to copy each iteration
	call .CopyPartyData

	; Main party struct
	ld hl, wPartyMons
	ld de, wOTPartyMons
	ld a, PARTYMON_STRUCT_LENGTH
	call .CopyPartyData

	; Nickname struct
	ld hl, wPartyMonNicknames
	ld de, wOTPartyMonNicknames
	ld a, MON_NAME_LENGTH
	call .CopyPartyData

	; OT name struct
	ld hl, wPartyMonOT
	ld de, wOTPartyMonOT
	ld a, NAME_LENGTH
	call .CopyPartyData
	pop de

	inc c
	ld a, c
	cp d
	jr nz, .loop

	; Add party species terminator, then we're done
	ld hl, wOTPartySpecies
	add hl, bc
	ld [hl], -1
	ret

.CopyPartyData:
; Copy a bytes from hl to de, with relative addresses depending on
; which mon we're currently working on. Preserves bc.
	; First, correct de to the current mon target index we're adding.
	; Just add a*bc (struct length * loop iterator)
	push hl
	ld h, d
	ld l, e
	push af
	call AddNTimes
	pop af
	ld d, h
	ld e, l
	pop hl

	; Now, correct hl to the current mon source index.
	; Get the source index from party selection
	push bc
	push hl
	ld hl, wBT_PartySelections
	add hl, bc
	ld c, [hl] ; b always remains zero, no need to mess with it
	pop hl

	; Now bc holds party index, so we can AddNTimes like with de earlier
	push af
	call AddNTimes
	pop af

	; Now copy the data
	ld c, a
	rst CopyBytes
	pop bc
	ret

BT_LegalityCheck:
; Check OT party for violations of Species or Item Clause. Used to verify
; the player team when entering after copying to OT data.
; Returns z if the team is legal, otherwise nz and the error in e
; (1: 2+ share species, 2: 2+ share item).
; Species Clause: more than 1 Pokémon are the same species
; Item Clause: more than 1 Pokémon holds the same item
	ld a, [wOTPartyCount]
	ld e, a

	; Do nothing if we have no mons at all
	and a
	ret z

	; Nor if we have a single mon (since we have nothing to compare with)
	dec e
	ret z

	ld hl, wOTPartyMon1
.outer_loop
	push de
	ld c, [hl]
	ld a, MON_ITEM
	call .GetPartyValue
	ld d, a
	push hl
	call .NextPartyMon
.inner_loop
	; Compare species
	ld a, [hl]
	cp c
	ld a, 1
	jr z, .identical

	ld a, MON_ITEM
	call .GetPartyValue

	; Allow several mons with no item
	and a
	jr z, .item_not_identical
	cp d
	ld a, 2
	jr z, .identical

.item_not_identical
	call .NextPartyMon
	dec e
	jr nz, .inner_loop
	pop hl
	call .NextPartyMon
	pop de
	dec e
	jr nz, .outer_loop
	ret

.identical
	pop hl
	pop de
	ld e, a
	and a
	ret

.NextPartyMon:
; Advance to next party mon.
	push bc
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	ret

.GetPartyValue:
; From party field in a, get value for current partymon in hl.
; Preserves hl.
	push hl
	add l
	ld l, a
	adc h
	sub l
	ld h, a
	ld a, [hl]
	pop hl
	ret
