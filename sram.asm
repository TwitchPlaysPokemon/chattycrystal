SECTION "Scratch", SRAM

UNION
sScratch:: ds $600

NEXTU
sEnemyFrontPicTileCount:: db
sPaddedEnemyFrontPic:: ds 7 * 7 tiles

ENDU

SECTION "SRAM Bank 0", SRAM

sPartyMail::
sPartyMon1Mail:: mailmsg sPartyMon1Mail
sPartyMon2Mail:: mailmsg sPartyMon2Mail
sPartyMon3Mail:: mailmsg sPartyMon3Mail
sPartyMon4Mail:: mailmsg sPartyMon4Mail
sPartyMon5Mail:: mailmsg sPartyMon5Mail
sPartyMon6Mail:: mailmsg sPartyMon6Mail

sPartyMailBackup::
sPartyMon1MailBackup:: mailmsg sPartyMon1MailBackup
sPartyMon2MailBackup:: mailmsg sPartyMon2MailBackup
sPartyMon3MailBackup:: mailmsg sPartyMon3MailBackup
sPartyMon4MailBackup:: mailmsg sPartyMon4MailBackup
sPartyMon5MailBackup:: mailmsg sPartyMon5MailBackup
sPartyMon6MailBackup:: mailmsg sPartyMon6MailBackup

sMailboxCount:: db
sMailbox::
___count = 0
rept MAILBOX_CAPACITY
___count = ___count + 1
sMailbox{d:___count}::  mailmsg sMailbox{d:___count}
endr

sMailboxCountBackup:: db
sMailboxBackup::
___count = 0
rept MAILBOX_CAPACITY
___count = ___count + 1
sMailbox{d:___count}Backup::  mailmsg sMailbox{d:___count}Backup
endr

sMysteryGiftItem:: db
sMysteryGiftUnlocked:: db
sBackupMysteryGiftItem:: db
sNumDailyMysteryGiftPartnerIDs:: db
sDailyMysteryGiftPartnerIDs:: ds 5 * 2 ; maximum 5 per day, 2 bytes per ID
sMysteryGiftDecorationsReceived:: flag_array NUM_NON_TROPHY_DECOS
	ds 4
sMysteryGiftTimer:: db
sMysteryGiftTimerStartDay:: db
	ds 1
sMysteryGiftTrainerHouseFlag:: db
sMysteryGiftPartnerName:: ds NAME_LENGTH
s0_ac09:: ds 1
sMysteryGiftTrainer:: ds (1 + 1 + NUM_MOVES) * PARTY_LENGTH + 2
sBackupMysteryGiftItemEnd::

sRTCStatusFlags:: ds 8
sLuckyNumberDay:: db
sLuckyIDNumber::  dw

SECTION "Saved special mons", SRAM
sSavedChatot:: box_struct sSavedChatot
sSavedChatotName:: ds MON_NAME_LENGTH
sSavedUnown:: box_struct sSavedUnown
sSavedUnownName:: ds MON_NAME_LENGTH

SECTION "Saved 16-bit conversion tables", SRAM
sConversionTables::
sPokemonIndexTable:: ds wPokemonIndexTableEnd - wPokemonIndexTable
sMoveIndexTable:: ds wMoveIndexTableEnd - wMoveIndexTable
sConversionTablesEnd::

SECTION "Save", SRAM

sOptions:: ds wOptionsEnd - wOptions

sCheckValue1:: db ; loaded with SAVE_CHECK_VALUE_1, used to check save corruption

sSaveData::

sGameData::
sPlayerData::  ds wPlayerDataEnd - wPlayerData
sCurMapData::  ds wCurMapDataEnd - wCurMapData
sPokemonData:: ds wPokemonDataEnd - wPokemonData
sGameDataEnd::

sConversionTableChecksum:: dw

sSaveDataEnd::

sChecksum:: dw

sCheckValue2:: db ; loaded with SAVE_CHECK_VALUE_2, used to check save corruption


SECTION "Active Box", SRAM

sBox:: box sBox

SECTION "Link Battle Data", SRAM

sLinkBattleResults:: ds $c

sLinkBattleStats::
sLinkBattleWins::   dw
sLinkBattleLosses:: dw
sLinkBattleDraws::  dw

sLinkBattleRecord::
sLinkBattleRecord1:: link_battle_record sLinkBattleRecord1
sLinkBattleRecord2:: link_battle_record sLinkBattleRecord2
sLinkBattleRecord3:: link_battle_record sLinkBattleRecord3
sLinkBattleRecord4:: link_battle_record sLinkBattleRecord4
sLinkBattleRecord5:: link_battle_record sLinkBattleRecord5
sLinkBattleStatsEnd::


SECTION "SRAM Hall of Fame", SRAM

sHallOfFame::
___count = 0
rept NUM_HOF_TEAMS
___count = ___count + 1
sHallOfFame{d:___count}:: hall_of_fame sHallOfFame{d:___count}
endr
sHallOfFameEnd::


SECTION "SRAM Crystal Data", SRAM

sMobileEventIndex:: db

sCrystalData:: ds wCrystalDataEnd - wCrystalData

sMobileEventIndexBackup:: db


SECTION "SRAM Battle Tower", SRAM

; Battle Tower data must be in SRAM because you can save and leave between battles
sBattleTowerChallengeState::
; 0: normal
; 2: battle tower
	db

sBattleTower::
sNrOfBeatenBattleTowerTrainers:: db
sBTChoiceOfLevelGroup:: db
; Battle Tower trainers are saved here, so nobody appears more than once
sBTTrainers:: ds BATTLETOWER_STREAK_LENGTH
sBattleTowerSaveFileFlags:: db
sBattleTowerReward:: db

; team of previous trainer
sBTMonOfTrainers::
sBTMonPrevTrainer1:: dw
sBTMonPrevTrainer2:: dw
sBTMonPrevTrainer3:: dw
; team of preprevious trainer
sBTMonPrevPrevTrainer1:: dw
sBTMonPrevPrevTrainer2:: dw
sBTMonPrevPrevTrainer3:: dw
sBTPartySelection:: ds 3


SECTION "Boxes 1-7", SRAM

sBox1:: box sBox1
sBox2:: box sBox2
sBox3:: box sBox3
sBox4:: box sBox4
sBox5:: box sBox5
sBox6:: box sBox6
sBox7:: box sBox7

sBox1PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox2PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox3PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox4PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox5PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox6PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox7PokemonIndexes:: ds 2 * MONS_PER_BOX

SECTION "Boxes 8-14", SRAM

sBox8:: box sBox8
sBox9:: box sBox9
sBox10:: box sBox10
sBox11:: box sBox11
sBox12:: box sBox12
sBox13:: box sBox13
sBox14:: box sBox14

sBox8PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox9PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox10PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox11PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox12PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox13PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox14PokemonIndexes:: ds 2 * MONS_PER_BOX

SECTION "Boxes 15-18", SRAM

sBox15:: box sBox15
sBox16:: box sBox16
sBox17:: box sBox17
sBox18:: box sBox18

sBox15PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox16PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox17PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox18PokemonIndexes:: ds 2 * MONS_PER_BOX

SECTION "Boxes 19-20", SRAM

sBox19:: box sBox19
sBox20:: box sBox20

sBox19PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox20PokemonIndexes:: ds 2 * MONS_PER_BOX


SECTION "SRAM Mobile 2", SRAM
	ds $1fe8 ; try to make sure that nothing accidentally overwrites useful SRAM at bank 1
sMobileLoginPassword:: ds MOBILE_LOGIN_PASSWORD_LENGTH
s5_b2fb:: db
