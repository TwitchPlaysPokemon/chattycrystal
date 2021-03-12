; Event scripting commands.

EnableScriptMode::
	push af
	ld a, SCRIPT_READ
	ld [wScriptMode], a
	pop af
	ret

ScriptEvents::
	call StartScript
.loop
	ld a, [wScriptMode]
	ld hl, .modes
	rst JumpTable
	call CheckScript
	jr nz, .loop
	ret

.modes
	dw StopScript
	dw RunScriptCommand
	dw WaitScriptMovement
	dw WaitScript

WaitScript:
	call StopScript

	ld hl, wScriptDelay
	dec [hl]
	ret nz

	farcall Function58b9

	ld a, SCRIPT_READ
	ld [wScriptMode], a
StartScript:
	ld hl, wScriptFlags
	set SCRIPT_RUNNING, [hl]
	ret

CheckScript:
	ld hl, wScriptFlags
	bit SCRIPT_RUNNING, [hl]
	ret

StopScript:
	ld hl, wScriptFlags
	res SCRIPT_RUNNING, [hl]
	ret

WaitScriptMovement:
	call StopScript

	ld hl, wVramState
	bit 7, [hl]
	ret nz

	farcall Function58b9

	ld a, SCRIPT_READ
	ld [wScriptMode], a
	jr StartScript

RunScriptCommand:
	call GetScriptByte
	ld hl, ScriptCommandTable
	rst JumpTable
	ret

ScriptCommandTable:
; entries correspond to macros/scripts/events.asm enumeration
	dw Script_scall                      ; 00
	dw Script_farscall                   ; 01
	dw Script_memcall                    ; 02
	dw Script_sjump                      ; 03
	dw Script_farsjump                   ; 04
	dw Script_memjump                    ; 05
	dw Script_ifequal                    ; 06
	dw Script_ifnotequal                 ; 07
	dw Script_iffalse                    ; 08
	dw Script_iftrue                     ; 09
	dw Script_ifgreater                  ; 0a
	dw Script_ifless                     ; 0b
	dw Script_jumpstd                    ; 0c
	dw Script_callstd                    ; 0d
	dw Script_callasm                    ; 0e
	dw Script_special                    ; 0f
	dw Script_memcallasm                 ; 10
	dw Script_checkmapscene              ; 11
	dw Script_setmapscene                ; 12
	dw Script_checkscene                 ; 13
	dw Script_setscene                   ; 14
	dw Script_setval                     ; 15
	dw Script_addval                     ; 16
	dw Script_random                     ; 17
	dw Script_checkver                   ; 18
	dw Script_readmem                    ; 19
	dw Script_writemem                   ; 1a
	dw Script_loadmem                    ; 1b
	dw Script_readvar                    ; 1c
	dw Script_writevar                   ; 1d
	dw Script_loadvar                    ; 1e
	dw Script_giveitem                   ; 1f
	dw Script_takeitem                   ; 20
	dw Script_checkitem                  ; 21
	dw Script_givemoney                  ; 22
	dw Script_takemoney                  ; 23
	dw Script_checkmoney                 ; 24
	dw Script_givecoins                  ; 25
	dw Script_takecoins                  ; 26
	dw Script_checkcoins                 ; 27
	dw Script_addcellnum                 ; 28
	dw Script_delcellnum                 ; 29
	dw Script_checkcellnum               ; 2a
	dw Script_checktime                  ; 2b
	dw Script_checkpoke                  ; 2c
	dw Script_givepoke                   ; 2d
	dw Script_giveegg                    ; 2e
	dw Script_givepokemail               ; 2f
	dw Script_checkpokemail              ; 30
	dw Script_checkevent                 ; 31
	dw Script_clearevent                 ; 32
	dw Script_setevent                   ; 33
	dw Script_checkflag                  ; 34
	dw Script_clearflag                  ; 35
	dw Script_setflag                    ; 36
	dw Script_wildon                     ; 37
	dw Script_wildoff                    ; 38
	dw Script_xycompare                  ; 39
	dw Script_warpmod                    ; 3a
	dw Script_blackoutmod                ; 3b
	dw Script_warp                       ; 3c
	dw Script_getmoney                   ; 3d
	dw Script_getcoins                   ; 3e
	dw Script_getnum                     ; 3f
	dw Script_getmonname                 ; 40
	dw Script_getitemname                ; 41
	dw Script_getcurlandmarkname         ; 42
	dw Script_gettrainername             ; 43
	dw Script_getstring                  ; 44
	dw Script_itemnotify                 ; 45
	dw Script_pocketisfull               ; 46
	dw OpenText                          ; 47 - opentext
	dw RefreshScreen                     ; 48 - refreshscreen
	dw Script_closetext                  ; 49
	dw Script_partyselect                ; 4a
	dw Script_farwritetext               ; 4b
	dw Script_writetext                  ; 4c
	dw Script_repeattext                 ; 4d
	dw Script_yesorno                    ; 4e
	dw Script_loadmenu                   ; 4f
	dw Script_closewindow                ; 50
	dw Script_jumptextfaceplayer         ; 51
	dw Script_farjumptext                ; 52
	dw Script_jumptext                   ; 53
	dw WaitButton                        ; 54 - waitbutton
	dw Script_buttonsound                ; 55
	dw Script_pokepic                    ; 56
	dw Script_closepokepic               ; 57
	dw Script__2dmenu                    ; 58
	dw Script_verticalmenu               ; 59
	dw Script_loadpikachudata            ; 5a
	dw Script_randomwildmon              ; 5b
	dw Script_loadtemptrainer            ; 5c
	dw Script_loadwildmon                ; 5d
	dw Script_loadtrainer                ; 5e
	dw Script_startbattle                ; 5f
	dw Script_reloadmapafterbattle       ; 60
	dw Script_catchtutorial              ; 61
	dw Script_trainertext                ; 62
	dw Script_trainerflagaction          ; 63
	dw Script_winlosstext                ; 64
	dw Script_scripttalkafter            ; 65
	dw Script_endifjustbattled           ; 66
	dw Script_checkjustbattled           ; 67
	dw Script_setlasttalked              ; 68
	dw Script_applymovement              ; 69
	dw Script_applymovementlasttalked    ; 6a
	dw Script_faceplayer                 ; 6b
	dw Script_faceobject                 ; 6c
	dw Script_variablesprite             ; 6d
	dw Script_disappear                  ; 6e
	dw Script_appear                     ; 6f
	dw Script_follow                     ; 70
	dw Script_stopfollow                 ; 71
	dw Script_moveobject                 ; 72
	dw Script_writeobjectxy              ; 73
	dw Script_loademote                  ; 74
	dw Script_showemote                  ; 75
	dw Script_turnobject                 ; 76
	dw Script_follownotexact             ; 77
	dw Script_earthquake                 ; 78
	dw Script_changemapblocks            ; 79
	dw Script_changeblock                ; 7a
	dw Script_reloadmap                  ; 7b
	dw Script_reloadmappart              ; 7c
	dw Script_writecmdqueue              ; 7d
	dw Script_delcmdqueue                ; 7e
	dw Script_playmusic                  ; 7f
	dw Script_encountermusic             ; 80
	dw Script_musicfadeout               ; 81
	dw PlayMapMusic                      ; 82 - playmapmusic
	dw Script_dontrestartmapmusic        ; 83
	dw Script_cry                        ; 84
	dw Script_playsound                  ; 85
	dw WaitSFX                           ; 86 - waitsfx
	dw Script_warpsound                  ; 87
	dw Script_specialsound               ; 88
	dw Script_autoinput                  ; 89
	dw Script_newloadmap                 ; 8a
	dw Script_pause                      ; 8b
	dw Script_deactivatefacing           ; 8c
	dw Script_prioritysjump              ; 8d
	dw Script_warpcheck                  ; 8e
	dw Script_stopandsjump               ; 8f
	dw Script_return                     ; 90
	dw Script_end                        ; 91
	dw Script_reloadandreturn            ; 92
	dw Script_endall                     ; 93
	dw Script_pokemart                   ; 94
	dw Script_elevator                   ; 95
	dw Script_trade                      ; 96
	dw Script_askforphonenumber          ; 97
	dw Script_phonecall                  ; 98
	dw Script_hangup                     ; 99
	dw Script_describedecoration         ; 9a
	dw Script_fruittree                  ; 9b
	dw Script_specialphonecall           ; 9c
	dw Script_checkphonecall             ; 9d
	dw Script_verbosegiveitem            ; 9e
	dw Script_verbosegiveitemvar         ; 9f
	dw Script_swarm                      ; a0
	dw Script_halloffame                 ; a1
	dw Script_credits                    ; a2
	dw Script_warpfacing                 ; a3
	dw Script_battletowertext            ; a4
	dw Script_getlandmarkname            ; a5
	dw Script_gettrainerclassname        ; a6
	dw Script_getname                    ; a7
	dw Script_wait                       ; a8
	dw Script_checksave                  ; a9
	dw Script_loadmonindex               ; aa
	dw Script_checkmaplockedmons         ; ab
	dw Script_givechattymon              ; ac
	dw ChattyOff                         ; ad - chattyoff
	dw ChattyOn                          ; ae - chattyon
	dw Script_clearifuncaught            ; af
	dw Script_checkcaught                ; b0
	dw Script_givedecoration             ; b1
	dw Script_depositspecial             ; b2
	dw Script_withdrawspecial            ; b3
	dw Script_checkspecialstorage        ; b4
	dw Script_replacemove                ; b5

Script_callasm:
; script command 0xe
; parameters: asm

	call GetScriptByte
	ld b, a
	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	ld a, b
	rst FarCall
	ret

Script_special:
; script command 0xf
; parameters: predefined_script

	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	farcall Special
	ret

Script_memcallasm:
; script command 0x10
; parameters: asm

	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	ld b, [hl]
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, b
	rst FarCall
	ret

Script_jumptextfaceplayer:
; script command 0x51
; parameters: text_pointer

	ld a, [wScriptBank]
	ld [wScriptTextBank], a
	call GetScriptByte
	ld [wScriptTextAddr], a
	call GetScriptByte
	ld [wScriptTextAddr + 1], a
	ld b, BANK(JumpTextFacePlayerScript)
	ld hl, JumpTextFacePlayerScript
	jp ScriptJump

Script_jumptext:
; script command 0x53
; parameters: text_pointer

	ld a, [wScriptBank]
	ld [wScriptTextBank], a
	call GetScriptByte
	ld [wScriptTextAddr], a
	call GetScriptByte
	ld [wScriptTextAddr + 1], a
JumpText:
	ld b, BANK(JumpTextScript)
	ld hl, JumpTextScript
	jp ScriptJump

JumpTextFacePlayerScript:
	faceplayer
JumpTextScript:
	opentext
	repeattext -1, -1
	waitbutton
	closetext
	end

Script_farjumptext:
; script command 0x52
; parameters: text_pointer

	call GetScriptByte
	ld [wScriptTextBank], a
	call GetScriptByte
	ld [wScriptTextAddr], a
	call GetScriptByte
	ld [wScriptTextAddr + 1], a
	ld b, BANK(JumpTextScript)
	ld hl, JumpTextScript
	jp ScriptJump

Script_writetext:
; script command 0x4c
; parameters: text_pointer

	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	ld a, [wScriptBank]
	ld b, a
	jp MapTextbox

Script_farwritetext:
; script command 0x4b
; parameters: text_pointer

	call GetScriptByte
	ld b, a
	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	jp MapTextbox

Script_repeattext:
; script command 0x4d
; parameters: byte, byte

	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	inc a
	ret nz
	ld a, l
	inc a
	ret nz
	ld hl, wScriptTextBank
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp MapTextbox

Script_buttonsound:
; script command 0x55

	ldh a, [hOAMUpdate]
	push af
	ld a, 1
	ldh [hOAMUpdate], a
	call WaitBGMap
	call ButtonSound
	pop af
	ldh [hOAMUpdate], a
	ret

Script_yesorno:
; script command 0x4e

	call YesNoBox
	sbc a
	inc a
	ld [wScriptVar], a
	ret

Script_loadmenu:
; script command 0x4f
; parameters: menu_header

	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	ld de, LoadMenuHeader
	ld a, [wScriptBank]
	call Call_a_de
	jp UpdateSprites

Script_closewindow:
; script command 0x50

	call CloseWindow
	jp UpdateSprites

Script_pokepic:
; script command 0x56
; parameters: pokemon

	call LoadScriptPokemonID
	ld [wCurPartySpecies], a
	farcall Pokepic
	ret

Script_closepokepic:
; script command 0x57

	farcall ClosePokepic
	ret

Script_verticalmenu:
; script command 0x59

	ld a, [wScriptBank]
	ld hl, VerticalMenu
	rst FarCall
	ld a, [wMenuCursorY]
	jr nc, .ok
	xor a
.ok
	ld [wScriptVar], a
	ret

Script__2dmenu:
; script command 0x58

	ld a, [wScriptBank]
	ld hl, _2DMenu
	rst FarCall
	ld a, [wMenuCursorBuffer]
	jr nc, .ok
	xor a
.ok
	ld [wScriptVar], a
	ret

Script_battletowertext:
; script command 0xa4
; parameters: bttext_id

	call SetUpTextbox
	call GetScriptByte
	ld c, a
	farcall BattleTowerText
	ret

Script_verbosegiveitem:
; script command 0x9e
; parameters: item, quantity

	call Script_giveitem
	call CurItemName
	ld de, wStringBuffer1
	ld a, STRING_BUFFER_4
	call CopyConvertedText
	ld b, BANK(GiveItemScript)
	ld de, GiveItemScript
	jp ScriptCall

GiveItemScript:
	chattyoff
	writetext ReceivedItemText
	iffalse .Full
	waitsfx
	chattyon
	specialsound
	waitbutton
	itemnotify
	end

.Full:
	buttonsound
	chattyon
	pocketisfull
	end

ReceivedItemText:
	text_far UnknownText_0x1c4719
	text_end

Script_verbosegiveitemvar:
; script command 0x9f
; parameters: item, var

	call GetScriptByte
	cp ITEM_FROM_MEM
	jr nz, .ok
	ld a, [wScriptVar]
.ok
	ld [wCurItem], a
	call GetScriptByte
	call GetVarAction
	ld a, [de]
	ld [wItemQuantityChangeBuffer], a
	ld hl, wNumItems
	call ReceiveItem
	sbc a
	and TRUE
	ld [wScriptVar], a
	call CurItemName
	ld de, wStringBuffer1
	ld a, STRING_BUFFER_4
	call CopyConvertedText
	ld b, BANK(GiveItemScript)
	ld de, GiveItemScript
	jp ScriptCall

Script_itemnotify:
; script command 0x45

	call GetPocketName
	call CurItemName
	ld b, BANK(PutItemInPocketText)
	ld hl, PutItemInPocketText
	rst ChattyOff
	call MapTextbox
	rst ChattyOn
	ret

Script_pocketisfull:
; script command 0x46

	call GetPocketName
	call CurItemName
	ld b, BANK(PocketIsFullText)
	ld hl, PocketIsFullText
	rst ChattyOff
	call MapTextbox
	rst ChattyOn
	ret

Script_specialsound:
; script command 0x88

	farcall CheckItemPocket
	ld a, [wItemAttributeParamBuffer]
	cp TM_HM
	ld de, SFX_GET_TM
	jr z, .play
	ld de, SFX_ITEM
.play
	call PlaySFX
	jp WaitSFX

GetPocketName:
	farcall CheckItemPocket
	ld a, [wItemAttributeParamBuffer]
	dec a
	ld hl, ItemPocketNames
	maskbits NUM_POCKETS
	add a
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld hl, wStringBuffer3
	jp CopyName2

INCLUDE "data/items/pocket_names.asm"

CurItemName:
	ld a, [wCurItem]
	ld [wNamedObjectIndexBuffer], a
	jp GetItemName

PutItemInPocketText:
	text_far UnknownText_0x1c472c
	text_end

PocketIsFullText:
	text_far UnknownText_0x1c474b
	text_end

Script_pokemart:
; script command 0x94
; parameters: mart_type, mart_id

	call GetScriptByte
	ld c, a
	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	ld a, [wScriptBank]
	ld b, a
	farcall OpenMartDialog
	ret

Script_elevator:
; script command 0x95
; parameters: floor_list_pointer

	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	ld a, [wScriptBank]
	ld b, a
	farcall Elevator
	sbc a
	inc a
	ld [wScriptVar], a
	ret

Script_trade:
; script command 0x96
; parameters: trade_id

	call GetScriptByte
	ld e, a
	farcall NPCTrade
	ret

Script_phonecall:
; script command 0x98
; parameters: caller_name

	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	ld a, [wScriptBank]
	ld b, a
	farcall PhoneCall
	ret

Script_hangup:
; script command 0x99

	farcall HangUp
	ret

Script_askforphonenumber:
; script command 0x97
; parameters: number

	call YesNoBox
	jr c, .refused
	call GetScriptByte
	ld c, a
	farcall AddPhoneNumber
	jr c, .phonefull
	xor a ; PHONE_CONTACT_GOT
	jr .done
.phonefull
	ld a, PHONE_CONTACTS_FULL
	jr .done
.refused
	call GetScriptByte
	ld a, PHONE_CONTACT_REFUSED
.done
	ld [wScriptVar], a
	ret

Script_describedecoration:
; script command 0x9a
; parameters: byte

	call GetScriptByte
	ld b, a
	farcall DescribeDecoration
	ld h, d
	ld l, e
	jp ScriptJump

Script_fruittree:
; script command 0x9b
; parameters: tree_id

	call GetScriptByte
	ld [wCurFruitTree], a
	ld b, BANK(FruitTreeScript)
	ld hl, FruitTreeScript
	jp ScriptJump

Script_swarm:
; script command 0xa0
; parameters: flag, map_group, map_id

	call GetScriptByte
	ld c, a
	call GetScriptByte
	ld d, a
	call GetScriptByte
	ld e, a
	farcall StoreSwarmMapIndices
	ret

Script_trainertext:
; script command 0x62
; parameters: text_id

	call GetScriptByte
	ld c, a
	ld b, 0
	ld hl, wSeenTextPointer
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wSeenTrainerBank]
	ld b, a
	jp MapTextbox

Script_scripttalkafter:
; script command 0x65

	ld hl, wScriptAfterPointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wSeenTrainerBank]
	ld b, a
	jp ScriptJump

Script_trainerflagaction:
; script command 0x63
; parameters: action

	xor a
	ld [wScriptVar], a
	ld hl, wTempTrainerEventFlag
	ld e, [hl]
	inc hl
	ld d, [hl]
	call GetScriptByte
	ld b, a
	call EventFlagAction
	ld a, c
	and a
	ret z
	ld a, TRUE
	ld [wScriptVar], a
	ret

Script_winlosstext:
; script command 0x64
; parameters: win_text_pointer, loss_text_pointer

	ld hl, wWinTextPointer
	call GetScriptByte
	ld [hli], a
	call GetScriptByte
	ld [hli], a
	ld hl, wLossTextPointer
	call GetScriptByte
	ld [hli], a
	call GetScriptByte
	ld [hli], a
	ret

Script_checkjustbattled:
; script command 0x67

	ld a, TRUE
	ld [wScriptVar], a
	ld a, [wRunningTrainerBattleScript]
	and a
	ret nz
	xor a
	ld [wScriptVar], a
	ret

Script_encountermusic:
; script command 0x80

	ld a, [wOtherTrainerClass]
	ld e, a
	farcall PlayTrainerEncounterMusic
	ret

Script_playmusic:
; script command 0x7f
; parameters: music_pointer

	ld de, MUSIC_NONE
	call PlayMusic
	xor a
	ld [wMusicFade], a
	call MaxVolume
	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	jp PlayMusic

Script_musicfadeout:
; script command 0x81
; parameters: music, fadetime

	call GetScriptByte
	ld [wMusicFadeID], a
	call GetScriptByte
	ld [wMusicFadeID + 1], a
	call GetScriptByte
	and $ff ^ (1 << MUSIC_FADE_IN_F)
	ld [wMusicFade], a
	ret

Script_playsound:
; script command 0x85
; parameters: sound_pointer

	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	jp PlaySFX

Script_warpsound:
; script command 0x87

	farcall GetWarpSFX
	jp PlaySFX

Script_cry:
; script command 0x84
; parameters: cry_id

	call LoadScriptPokemonID
	jp PlayMonCry

GetScriptObject:
	and a ; PLAYER?
	ret z
	cp LAST_TALKED
	ret z
	dec a
	ret

Script_setlasttalked:
; script command 0x68
; parameters: object_id

	call GetScriptByte
	call GetScriptObject
	ldh [hLastTalked], a
	ret

Script_applymovement:
; script command 0x69
; parameters: object_id, data

	call GetScriptByte
	call GetScriptObject
	ld c, a
ApplyMovement:
	push bc
	ld a, c
	farcall SetFlagsForMovement_1
	pop bc

	push bc
	call SetFlagsForMovement_2
	pop bc

	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	ld a, [wScriptBank]
	ld b, a
	call GetMovementData
	ret c

	ld a, SCRIPT_WAIT_MOVEMENT
	ld [wScriptMode], a
	jp StopScript

SetFlagsForMovement_2:
	farcall _SetFlagsForMovement_2
	ret

Script_applymovementlasttalked:
; script command 0x6a
; parameters: data
; apply movement to last talked

	ldh a, [hLastTalked]
	ld c, a
	jr ApplyMovement

Script_faceplayer:
; script command 0x6b

	ldh a, [hLastTalked]
	and a
	ret z
	ld d, $0
	ldh a, [hLastTalked]
	ld e, a
	farcall GetRelativeFacing
	ld a, d
	add a
	add a
	ld e, a
	ldh a, [hLastTalked]
	ld d, a
	jp ApplyObjectFacing

Script_faceobject:
; script command 0x6c
; parameters: object1, object2

	call GetScriptByte
	call GetScriptObject
	cp LAST_TALKED
	jr c, .ok
	ldh a, [hLastTalked]
.ok
	ld e, a
	call GetScriptByte
	call GetScriptObject
	cp LAST_TALKED
	jr nz, .ok2
	ldh a, [hLastTalked]
.ok2
	ld d, a
	push de
	farcall GetRelativeFacing
	pop bc
	ret c
	ld a, d
	add a
	add a
	ld e, a
	ld d, c
	jp ApplyObjectFacing

Script_turnobject:
; script command 0x76
; parameters: object_id, facing

	call GetScriptByte
	call GetScriptObject
	cp LAST_TALKED
	jr nz, .ok
	ldh a, [hLastTalked]
.ok
	ld d, a
	call GetScriptByte
	add a
	add a
	ld e, a
	jp ApplyObjectFacing

ApplyObjectFacing:
	ld a, d
	push de
	call CheckObjectVisibility
	jr c, .not_visible
	ld hl, OBJECT_SPRITE
	add hl, bc
	ld a, [hl]
	push bc
	call DoesSpriteHaveFacings
	pop bc
	jr c, .not_visible ; STILL_SPRITE
	ld hl, OBJECT_FLAGS1
	add hl, bc
	bit FIXED_FACING_F, [hl]
	jr nz, .not_visible
	pop de
	ld a, e
	call SetSpriteDirection
	ld hl, wVramState
	bit 6, [hl]
	call z, .DisableTextTiles
	jp UpdateSprites

.not_visible
	pop de
	scf
	ret

.DisableTextTiles:
	call LoadMapPart
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
.loop
	res 7, [hl]
	inc hl
	dec bc
	ld a, b
	or c
	jr nz, .loop
	ret

Script_variablesprite:
; script command 0x6d
; parameters: byte, sprite

	call GetScriptByte
	ld e, a
	ld d, 0
	ld hl, wVariableSprites
	add hl, de
	call GetScriptByte
	ld [hl], a
	ret

Script_appear:
; script command 0x6f
; parameters: object_id

	call GetScriptByte
	call GetScriptObject
	call _CopyObjectStruct
	ldh a, [hMapObjectIndexBuffer]
	ld b, 0 ; clear
	jr ApplyEventActionAppearDisappear

Script_disappear:
; script command 0x6e
; parameters: object_id

	call GetScriptByte
	call GetScriptObject
	cp LAST_TALKED
	jr nz, .ok
	ldh a, [hLastTalked]
.ok
	call DeleteObjectStruct
	ldh a, [hMapObjectIndexBuffer]
	ld b, 1 ; set
	call ApplyEventActionAppearDisappear
	farcall _UpdateSprites
	ret

ApplyEventActionAppearDisappear:
	push bc
	call GetMapObject
	ld hl, MAPOBJECT_EVENT_FLAG
	add hl, bc
	pop bc
	ld a, [hli]
	ld e, a
	ld d, [hl]
	cp LOW(EVENT_INITIALIZED_EVENTS)
	ld a, d
	jr nz, .go
	assert !HIGH(EVENT_INITIALIZED_EVENTS)
	and a
	ret z
.go
	cp d
	jr nz, .do_action
	inc a
	ret z
.do_action
	jp EventFlagAction

Script_follow:
; script command 0x70
; parameters: object2, object1

	call GetScriptByte
	call GetScriptObject
	ld b, a
	call GetScriptByte
	call GetScriptObject
	ld c, a
	farcall StartFollow
	ret

Script_stopfollow:
; script command 0x71

	farcall StopFollow
	ret

Script_moveobject:
; script command 0x72
; parameters: object id, x, y

	call GetScriptByte
	call GetScriptObject
	ld b, a
	call GetScriptByte
	add 4
	ld d, a
	call GetScriptByte
	add 4
	ld e, a
	farcall CopyDECoordsToMapObject
	ret

Script_writeobjectxy:
; script command 0x73
; parameters: object_id

	call GetScriptByte
	call GetScriptObject
	cp LAST_TALKED
	jr nz, .ok
	ldh a, [hLastTalked]
.ok
	ld b, a
	farcall WriteObjectXY
	ret

Script_follownotexact:
; script command 0x77
; parameters: object2, object1

	call GetScriptByte
	call GetScriptObject
	ld b, a
	call GetScriptByte
	call GetScriptObject
	ld c, a
	farcall FollowNotExact
	ret

Script_loademote:
; script command 0x74
; parameters: bubble

	call GetScriptByte
	cp EMOTE_FROM_MEM
	jr nz, .not_var_emote
	ld a, [wScriptVar]
.not_var_emote
	ld c, a
	farcall LoadEmote
	ret

Script_showemote:
; script command 0x75
; parameters: bubble, object_id, time

	call GetScriptByte
	ld [wScriptVar], a
	call GetScriptByte
	call GetScriptObject
	cp LAST_TALKED
	jr z, .ok
	ldh [hLastTalked], a
.ok
	call GetScriptByte
	ld [wScriptDelay], a
	ld b, BANK(ShowEmoteScript)
	ld de, ShowEmoteScript
	jp ScriptCall

ShowEmoteScript:
	loademote EMOTE_FROM_MEM
	applymovementlasttalked .Show
	pause 0
	applymovementlasttalked .Hide
	end

.Show:
	show_emote
	step_sleep 1
	step_end

.Hide:
	hide_emote
	step_sleep 1
	step_end

Script_earthquake:
; script command 0x78
; parameters: param

	ld hl, EarthquakeMovement
	ld de, wEarthquakeMovementDataBuffer
	ld bc, EarthquakeMovement.End - EarthquakeMovement
	rst CopyBytes
	call GetScriptByte
	ld [wEarthquakeMovementDataBuffer + 1], a
	and %00111111
	ld [wEarthquakeMovementDataBuffer + 3], a
	ld b, BANK(.script)
	ld de, .script
	jp ScriptCall

.script
	applymovement PLAYER, wEarthquakeMovementDataBuffer
	end

EarthquakeMovement:
	step_shake 16 ; the 16 gets overwritten with the script byte
	step_sleep 16 ; the 16 gets overwritten with the lower 6 bits of the script byte
	step_end
.End

Script_loadpikachudata:
; script command 0x5a

	ld hl, PIKACHU
	call GetPokemonIDFromIndex
	ld [wTempWildMonSpecies], a
	ld a, 5
	ld [wCurPartyLevel], a
	ret

Script_randomwildmon:
; script command 0x5b

	xor a
	ld [wBattleScriptFlags], a
	ret

Script_loadtemptrainer:
; script command 0x5c

	ld a, (1 << 7) | 1
	ld [wBattleScriptFlags], a
	ld a, [wTempTrainerClass]
	ld [wOtherTrainerClass], a
	ld a, [wTempTrainerID]
	ld [wOtherTrainerID], a
	ret

Script_loadwildmon:
; script command 0x5d
; parameters: pokemon, level

	ld a, (1 << 7)
	ld [wBattleScriptFlags], a
	call LoadScriptPokemonID
	ld [wTempWildMonSpecies], a
	call GetScriptByte
	ld [wCurPartyLevel], a
	ret

Script_loadtrainer:
; script command 0x5e
; parameters: trainer_group, trainer_id

	ld a, (1 << 7) | 1
	ld [wBattleScriptFlags], a
	call GetScriptByte
	ld [wOtherTrainerClass], a
	call GetScriptByte
	ld [wOtherTrainerID], a
	ret

Script_startbattle:
; script command 0x5f

	call BufferScreen
	predef StartBattle
	ld a, [wBattleResult]
	and $ff ^ BATTLERESULT_BITMASK
	ld [wScriptVar], a
	ret

Script_catchtutorial:
; script command 0x61
; parameters: byte

	call GetScriptByte
	ld [wBattleType], a
	call BufferScreen
	farcall CatchTutorial
	jp Script_reloadmap

Script_reloadmapafterbattle:
; script command 0x60

	ld hl, wBattleScriptFlags
	ld d, [hl]
	ld [hl], 0
	ld a, [wBattleResult]
	and $ff ^ BATTLERESULT_BITMASK
	cp LOSE
	jr nz, .notblackedout
	ld b, BANK(Script_BattleWhiteout)
	ld hl, Script_BattleWhiteout
	jp ScriptJump

.notblackedout
	bit 0, d
	jr z, .was_wild
	farcall MomTriesToBuySomething
	jr .done

.was_wild
	ld a, [wBattleResult]
	bit BATTLERESULT_BOX_FULL, a
	jr z, .done
	ld b, BANK(Script_SpecialBillCall)
	ld de, Script_SpecialBillCall
	farcall LoadScriptBDE
.done
	jp Script_reloadmap

Script_reloadmap:
; script command 0x7b

	xor a
	ld [wBattleScriptFlags], a
	ld a, MAPSETUP_RELOADMAP
	ldh [hMapEntryMethod], a
	ld a, MAPSTATUS_ENTER
	call LoadMapStatus
	jp StopScript

Script_scall:
; script command 0x0
; parameters: pointer

	ld a, [wScriptBank]
	jr ScriptCallContinue

Script_farscall:
; script command 0x1
; parameters: pointer

	call GetScriptByte
ScriptCallContinue:
	ld b, a
	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	jr ScriptCall

Script_memcall:
; script command 0x2
; parameters: pointer

	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	ld b, [hl]
	inc hl
	ld e, [hl]
	inc hl
	ld d, [hl]
	; fallthrough

ScriptCall:
; Bug: The script stack has a capacity of 5 scripts, yet there is
; nothing to stop you from pushing a sixth script.  The high part
; of the script address can then be overwritten by modifications
; to wScriptDelay, causing the script to return to the rst/interrupt
; space.

	push de
	ld hl, wScriptStackSize
	ld e, [hl]
	inc [hl]
	ld d, 0
	ld hl, wScriptStack
	add hl, de
	add hl, de
	add hl, de
	pop de
	ld a, [wScriptBank]
	ld [hli], a
	ld a, [wScriptPos]
	ld [hli], a
	ld a, [wScriptPos + 1]
	ld [hl], a
	ld a, b
	ld [wScriptBank], a
	ld a, e
	ld [wScriptPos], a
	ld a, d
	ld [wScriptPos + 1], a
	ret

CallCallback::
	ld a, [wScriptBank]
	or $80
	ld [wScriptBank], a
	jp ScriptCall

Script_iffalse:
; script command 0x8
; parameters: pointer

	ld a, [wScriptVar]
	and a
	jp nz, SkipTwoScriptBytes
Script_sjump:
; script command 0x3
; parameters: pointer

	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	ld a, [wScriptBank]
	ld b, a
	jp ScriptJump

Script_farsjump:
; script command 0x4
; parameters: pointer

	call GetScriptByte
	ld b, a
	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	jp ScriptJump

Script_memjump:
; script command 0x5
; parameters: pointer

	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	ld b, [hl]
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp ScriptJump

Script_iftrue:
; script command 0x9
; parameters: pointer

	ld a, [wScriptVar]
	and a
	jr nz, Script_sjump
	jp SkipTwoScriptBytes

Script_ifequal:
; script command 0x6
; parameters: byte, pointer

	call GetScriptByte
	ld hl, wScriptVar
	cp [hl]
	jr z, Script_sjump
	jr SkipTwoScriptBytes

Script_ifnotequal:
; script command 0x7
; parameters: byte, pointer

	call GetScriptByte
	ld hl, wScriptVar
	cp [hl]
	jr nz, Script_sjump
	jr SkipTwoScriptBytes

Script_ifgreater:
; script command 0xa
; parameters: byte, pointer

	ld a, [wScriptVar]
	ld b, a
	call GetScriptByte
	cp b
	jr c, Script_sjump
	jr SkipTwoScriptBytes

Script_ifless:
; script command 0xb
; parameters: byte, pointer

	call GetScriptByte
	ld b, a
	ld a, [wScriptVar]
	cp b
	jr c, Script_sjump
	jr SkipTwoScriptBytes

Script_jumpstd:
; script command 0xc
; parameters: predefined_script

	call StdScript
	jr ScriptJump

Script_callstd:
; script command 0xd
; parameters: predefined_script

	call StdScript
	ld d, h
	ld e, l
	jp ScriptCall

StdScript:
	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	ld hl, StdScripts
	add hl, de
	add hl, de
	add hl, de
	ld a, BANK(StdScripts)
	call GetFarByte
	ld b, a
	inc hl
	ld a, BANK(StdScripts)
	jp GetFarHalfword

SkipTwoScriptBytes:
	ld a, 2
SkipScriptBytes:
	push hl
	ld hl, wScriptPos
	add a, [hl]
	ld [hli], a
	jr nc, .done
	inc [hl]
.done
	pop hl
	ret

ScriptJump:
	ld a, b
	ld [wScriptBank], a
	ld a, l
	ld [wScriptPos], a
	ld a, h
	ld [wScriptPos + 1], a
	ret

Script_prioritysjump:
; script command 0x8d
; parameters: pointer

	ld a, [wScriptBank]
	ld [wPriorityScriptBank], a
	call GetScriptByte
	ld [wPriorityScriptAddr], a
	call GetScriptByte
	ld [wPriorityScriptAddr + 1], a
	ld hl, wScriptFlags
	set 3, [hl]
	ret

Script_checkscene:
; script command 0x13

	call CheckScenes
	jr z, .no_scene
	ld [wScriptVar], a
	ret

.no_scene
	ld a, $ff
	ld [wScriptVar], a
	ret

Script_checkmapscene:
; script command 0x11
; parameters: map_group, map_id

	call GetScriptByte
	ld b, a
	call GetScriptByte
	ld c, a
	call GetMapSceneID
	ld a, d
	or e
	jr z, .no_scene
	ld a, [de]
	ld [wScriptVar], a
	ret

.no_scene
	ld a, $ff
	ld [wScriptVar], a
	ret

Script_setscene:
; script command 0x14
; parameters: scene_id

	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	jr DoScene

Script_setmapscene:
; script command 0x12
; parameters: map_group, map_id, scene_id

	call GetScriptByte
	ld b, a
	call GetScriptByte
	ld c, a
DoScene:
	call GetMapSceneID
	ld a, d
	or e
	ret z
	call GetScriptByte
	ld [de], a
	ret

Script_readmem:
; script command 0x19
; parameters: address

	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	ld a, [hl]
	ld [wScriptVar], a
	ret

Script_writemem:
; script command 0x1a
; parameters: address

	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	ld a, [wScriptVar]
	ld [hl], a
	ret

Script_loadmem:
; script command 0x1b
; parameters: address, value

	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	call GetScriptByte
	ld [hl], a
	ret

Script_setval:
; script command 0x15
; parameters: value

	call GetScriptByte
	ld [wScriptVar], a
	ret

Script_addval:
; script command 0x16
; parameters: value

	call GetScriptByte
	ld hl, wScriptVar
	add [hl]
	ld [hl], a
	ret

Script_random:
; script command 0x17
; parameters: input

	call GetScriptByte
	ld [wScriptVar], a
	and a
	ret z

	ld c, a
	call .Divide256byC
	and a
	jr z, .no_restriction ; 256 % b == 0
	ld b, a
	xor a
	sub b
	ld b, a
.loop
	push bc
	call Random
	pop bc
	ldh a, [hRandomAdd]
	cp b
	jr nc, .loop
	jr .finish

.no_restriction
	push bc
	call Random
	pop bc
	ldh a, [hRandomAdd]

.finish
	push af
	ld a, [wScriptVar]
	ld c, a
	pop af
	call SimpleDivide
	ld [wScriptVar], a
	ret

.Divide256byC:
	xor a
	ld b, a
	sub c
.mod_loop
	inc b
	sub c
	jr nc, .mod_loop
	dec b
	add c
	ret

Script_readvar:
; script command 0x1c
; parameters: variable_id

	call GetScriptByte
	call GetVarAction
	ld a, [de]
	ld [wScriptVar], a
	ret

Script_writevar:
; script command 0x1d
; parameters: variable_id

	call GetScriptByte
	call GetVarAction
	ld a, [wScriptVar]
	ld [de], a
	ret

Script_loadvar:
; script command 0x1e
; parameters: variable_id, value

	call GetScriptByte
	call GetVarAction
	call GetScriptByte
	ld [de], a
	ret

GetVarAction:
	ld c, a
	farcall _GetVarAction
	ret

Script_checkver:
; script command 0x18

	ld a, GS_VERSION
	ld [wScriptVar], a
	ret

Script_getmonname:
; script command 0x40
; parameters: string_buffer, mon_id (0 aka USE_SCRIPT_VAR to use wScriptVar)

	call LoadScriptPokemonID
	ld [wNamedObjectIndexBuffer], a
	call GetPokemonName
	ld de, wStringBuffer1

GetStringBuffer:
	call GetScriptByte
	cp NUM_STRING_BUFFERS
	jr c, .ok
	xor a
.ok

CopyConvertedText:
	ld hl, wStringBuffer3
	ld bc, wStringBuffer4 - wStringBuffer3
	call AddNTimes
	jp CopyName2

Script_getitemname:
; script command 0x41
; parameters: string_buffer, item_id (0 aka USE_SCRIPT_VAR to use wScriptVar)

	call GetScriptByte
	and a ; USE_SCRIPT_VAR
	jr nz, .ok
	ld a, [wScriptVar]
.ok
	ld [wNamedObjectIndexBuffer], a
	call GetItemName
	ld de, wStringBuffer1
	jr GetStringBuffer

Script_getcurlandmarkname:
; script command 0x42
; parameters: string_buffer

	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation

ConvertLandmarkToText:
	ld e, a
	farcall GetLandmarkName
	ld de, wStringBuffer1
	jp GetStringBuffer

Script_getlandmarkname:
; script command 0xa5
; parameters: string_buffer, landmark_id

	call GetScriptByte
	jr ConvertLandmarkToText

Script_gettrainername:
; script command 0x43
; parameters: string_buffer, trainer_group, trainer_id

	call GetScriptByte
	ld c, a
	call GetScriptByte
	ld b, a
	farcall GetTrainerName
	jr GetStringBuffer

Script_getname:
; script command 0xa7
; parameters: string_buffer, type, id

	call GetScriptByte
	ld [wNamedObjectTypeBuffer], a

ContinueToGetName:
	call GetScriptByte
	ld [wCurSpecies], a
	call GetName
	ld de, wStringBuffer1
	jp GetStringBuffer

Script_gettrainerclassname:
; script command 0xa6
; parameters: string_buffer, trainer_group

	ld a, TRAINER_NAME
	ld [wNamedObjectTypeBuffer], a
	jr ContinueToGetName

Script_getmoney:
; script command 0x3d
; parameters: string_buffer, account

	call ResetStringBuffer1
	call GetMoneyAccount
	ld hl, wStringBuffer1
	lb bc, PRINTNUM_RIGHTALIGN | 3, 6
	call PrintNum
	ld de, wStringBuffer1
	jp GetStringBuffer

Script_getcoins:
; script command 0x3e
; parameters: string_buffer

	call ResetStringBuffer1
	ld hl, wStringBuffer1
	ld de, wCoins
	lb bc, PRINTNUM_RIGHTALIGN | 2, 6
	call PrintNum
	ld de, wStringBuffer1
	jp GetStringBuffer

Script_getnum:
; script command 0x3f
; parameters: string_buffer

	call ResetStringBuffer1
	ld de, wScriptVar
	ld hl, wStringBuffer1
	lb bc, PRINTNUM_RIGHTALIGN | 1, 3
	call PrintNum
	ld de, wStringBuffer1
	jp GetStringBuffer

ResetStringBuffer1:
	ld hl, wStringBuffer1
	ld bc, NAME_LENGTH
	ld a, "@"
	jp ByteFill

Script_getstring:
; script command 0x44
; parameters: string_buffer, text_pointer

	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	ld a, [wScriptBank]
	ld hl, CopyName1
	rst FarCall
	ld de, wStringBuffer2
	jp GetStringBuffer

Script_givepokemail:
; script command 0x2f
; parameters: pointer

	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	ld a, [wScriptBank]
	call GetFarByte
	ld b, a
	push bc
	inc hl
	ld bc, MAIL_MSG_LENGTH
	ld de, wd002
	ld a, [wScriptBank]
	call FarCopyBytes
	pop bc
	farcall GivePokeMail
	ret

Script_checkpokemail:
; script command 0x30
; parameters: pointer

	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	ld a, [wScriptBank]
	ld b, a
	farcall CheckPokeMail
	ret

Script_giveitem:
; script command 0x1f
; parameters: item, quantity

	call GetScriptByte
	cp ITEM_FROM_MEM
	jr nz, .ok
	ld a, [wScriptVar]
.ok
	ld [wCurItem], a
	call GetScriptByte
	ld [wItemQuantityChangeBuffer], a
	ld hl, wNumItems
	call ReceiveItem
	jr nc, .full
	ld a, TRUE
	ld [wScriptVar], a
	ret
.full
	xor a
	ld [wScriptVar], a
	ret

Script_takeitem:
; script command 0x20
; parameters: item, quantity

	xor a
	ld [wScriptVar], a
	call GetScriptByte
	ld [wCurItem], a
	call GetScriptByte
	ld [wItemQuantityChangeBuffer], a
	ld a, -1
	ld [wCurItemQuantity], a
	ld hl, wNumItems
	call TossItem
	ret nc
	ld a, TRUE
	ld [wScriptVar], a
	ret

Script_checkitem:
; script command 0x21
; parameters: item

	xor a
	ld [wScriptVar], a
	call GetScriptByte
	ld [wCurItem], a
	ld hl, wNumItems
	call CheckItem
	ret nc
	ld a, TRUE
	ld [wScriptVar], a
	ret

Script_givemoney:
; script command 0x22
; parameters: account, money

	call GetMoneyAccount
	call LoadMoneyAmountToMem
	farcall GiveMoney
	ret

Script_takemoney:
; script command 0x23
; parameters: account, money

	call GetMoneyAccount
	call LoadMoneyAmountToMem
	farcall TakeMoney
	ret

Script_checkmoney:
; script command 0x24
; parameters: account, money

	call GetMoneyAccount
	call LoadMoneyAmountToMem
	farcall CompareMoney

CompareMoneyAction:
	jr c, .less
	jr z, .exact
	ld a, HAVE_MORE
	jr .done
.exact
	ld a, HAVE_AMOUNT
	jr .done
.less
	ld a, HAVE_LESS
.done
	ld [wScriptVar], a
	ret

GetMoneyAccount:
	call GetScriptByte
	and a
	ld de, wMoney ; YOUR_MONEY
	ret z
	ld de, wMomsMoney ; MOMS_MONEY
	ret

LoadMoneyAmountToMem:
	ld bc, hMoneyTemp
	push bc
	call GetScriptByte
	ld [bc], a
	inc bc
	call GetScriptByte
	ld [bc], a
	inc bc
	call GetScriptByte
	ld [bc], a
	pop bc
	ret

Script_givecoins:
; script command 0x25
; parameters: coins

	call LoadCoinAmountToMem
	farcall GiveCoins
	ret

Script_takecoins:
; script command 0x26
; parameters: coins

	call LoadCoinAmountToMem
	farcall TakeCoins
	ret

Script_checkcoins:
; script command 0x27
; parameters: coins

	call LoadCoinAmountToMem
	farcall CheckCoins
	jr CompareMoneyAction

LoadCoinAmountToMem:
	call GetScriptByte
	ldh [hMoneyTemp + 1], a
	call GetScriptByte
	ldh [hMoneyTemp], a
	ld bc, hMoneyTemp
	ret

Script_checktime:
; script command 0x2b
; parameters: time

	xor a
	ld [wScriptVar], a
	farcall CheckTime
	call GetScriptByte
	and c
	ret z
	ld a, TRUE
	ld [wScriptVar], a
	ret

Script_checkpoke:
; script command 0x2c
; parameters: pokemon

	xor a
	ld [wScriptVar], a
	call LoadScriptPokemonID
	ld hl, wPartySpecies
	ld de, 1
	call IsInArray
	ret nc
	ld a, TRUE
	ld [wScriptVar], a
	ret

Script_addcellnum:
; script command 0x28
; parameters: person

	xor a
	ld [wScriptVar], a
	call GetScriptByte
	ld c, a
	farcall AddPhoneNumber
	ret nc
	ld a, TRUE
	ld [wScriptVar], a
	ret

Script_delcellnum:
; script command 0x29
; parameters: person

	xor a
	ld [wScriptVar], a
	call GetScriptByte
	ld c, a
	farcall DelCellNum
	ret nc
	ld a, TRUE
	ld [wScriptVar], a
	ret

Script_checkcellnum:
; script command 0x2a
; parameters: person
; returns false if the cell number is not in your phone

	xor a
	ld [wScriptVar], a
	call GetScriptByte
	ld c, a
	farcall CheckCellNum
	ret nc
	ld a, TRUE
	ld [wScriptVar], a
	ret

Script_specialphonecall:
; script command 0x9c
; parameters: call_id

	call GetScriptByte
	ld [wSpecialPhoneCallID], a
	call GetScriptByte
	ld [wSpecialPhoneCallID + 1], a
	ret

Script_checkphonecall:
; script command 0x9d
; returns false if no special phone call is stored

	ld a, [wSpecialPhoneCallID]
	and a
	jr z, .ok
	ld a, TRUE
.ok
	ld [wScriptVar], a
	ret

Script_givepoke:
; script command 0x2d
; parameters: pokemon, level, item, trainer, trainer_name_pointer, pkmn_nickname

	call LoadScriptPokemonID
	ld [wCurPartySpecies], a
	call GetScriptByte
	ld [wCurPartyLevel], a
	call GetScriptByte
	ld [wCurItem], a
	call GetScriptByte
	and a
	ld b, a
	jr z, .ok
	ld hl, wScriptPos
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld a, 4
	call SkipScriptBytes
.ok
	farcall GivePoke
	ld a, b
	ld [wScriptVar], a
	ret

Script_giveegg:
; script command 0x2e
; parameters: pokemon, level
; if no room in the party, return 0 in wScriptVar; else, return 2

	xor a ; PARTYMON
	ld [wScriptVar], a
	ld [wMonType], a
	call LoadScriptPokemonID
	ld [wCurPartySpecies], a
	call GetScriptByte
	ld [wCurPartyLevel], a
	farcall GiveEgg
	ret nc
	ld a, 2
	ld [wScriptVar], a
	ret

Script_setevent:
; script command 0x33
; parameters: bit_number

	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	ld b, SET_FLAG
	jp EventFlagAction

Script_clearifuncaught:
; script command 0xaf
; params: mon index, flag index
; resets the flag if the mon is not caught in the dex or not existing in the party, PC or daycare
	call LoadScriptPokemonIndex
	ld d, h
	ld e, l
	call CheckCaughtAndPresent
	jp c, SkipTwoScriptBytes
	; fallthrough

Script_clearevent:
; script command 0x32
; parameters: bit_number

	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	ld b, RESET_FLAG
	jp EventFlagAction

Script_checkevent:
; script command 0x31
; parameters: bit_number

	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr z, .false
	ld a, TRUE
.false
	ld [wScriptVar], a
	ret

Script_setflag:
; script command 0x36
; parameters: bit_number

	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	ld b, SET_FLAG
	jp _EngineFlagAction

Script_clearflag:
; script command 0x35
; parameters: bit_number

	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	ld b, RESET_FLAG
	jp _EngineFlagAction

Script_checkflag:
; script command 0x34
; parameters: bit_number

	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	ld b, CHECK_FLAG
	call _EngineFlagAction
	ld a, c
	and a
	jr z, .false
	ld a, TRUE
.false
	ld [wScriptVar], a
	ret

_EngineFlagAction:
	farcall EngineFlagAction
	ret

Script_wildoff:
; script command 0x38

	ld hl, wStatusFlags
	set STATUSFLAGS_NO_WILD_ENCOUNTERS_F, [hl]
	ret

Script_wildon:
; script command 0x37

	ld hl, wStatusFlags
	res STATUSFLAGS_NO_WILD_ENCOUNTERS_F, [hl]
	ret

Script_xycompare:
; script command 0x39
; parameters: pointer

	call GetScriptByte
	ld [wXYComparePointer], a
	call GetScriptByte
	ld [wXYComparePointer + 1], a
	ret

Script_warpfacing:
; script command 0xa3
; parameters: facing, map_group, map_id, x, y

	call GetScriptByte
	maskbits NUM_DIRECTIONS
	ld c, a
	ld a, [wPlayerSpriteSetupFlags]
	set PLAYERSPRITESETUP_CUSTOM_FACING_F, a
	or c
	ld [wPlayerSpriteSetupFlags], a
; fall through

Script_warp:
; script command 0x3c
; parameters: map_group, map_id, x, y

; This seems to be some sort of error handling case.
	call GetScriptByte
	and a
	jr z, .not_ok
	ld [wMapGroup], a
	call GetScriptByte
	ld [wMapNumber], a
	call GetScriptByte
	ld [wXCoord], a
	call GetScriptByte
	ld [wYCoord], a
	ld a, SPAWN_N_A
	ld [wDefaultSpawnpoint], a
	ld a, MAPSETUP_WARP
	ldh [hMapEntryMethod], a
	ld a, MAPSTATUS_ENTER
	call LoadMapStatus
	jp StopScript

.not_ok
	ld a, 3
	call SkipScriptBytes
	ld a, SPAWN_N_A
	ld [wDefaultSpawnpoint], a
	ld a, MAPSETUP_BADWARP
	ldh [hMapEntryMethod], a
	ld a, MAPSTATUS_ENTER
	call LoadMapStatus
	jp StopScript

Script_warpmod:
; script command 0x3a
; parameters: warp_id, map_group, map_id

	call GetScriptByte
	ld [wBackupWarpNumber], a
	call GetScriptByte
	ld [wBackupMapGroup], a
	call GetScriptByte
	ld [wBackupMapNumber], a
	ret

Script_blackoutmod:
; script command 0x3b
; parameters: map_group, map_id

	call GetScriptByte
	ld [wLastSpawnMapGroup], a
	call GetScriptByte
	ld [wLastSpawnMapNumber], a
	ret

Script_dontrestartmapmusic:
; script command 0x83

	ld a, TRUE
	ld [wDontPlayMapMusicOnReload], a
	ret

Script_writecmdqueue:
; script command 0x7d
; parameters: queue_pointer

	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	ld a, [wScriptBank]
	ld b, a
	farcall WriteCmdQueue ; no need to farcall
	ret

Script_delcmdqueue:
; script command 0x7e
; parameters: byte

	xor a
	ld [wScriptVar], a
	call GetScriptByte
	ld b, a
	farcall DelCmdQueue ; no need to farcall
	ret c
	ld a, TRUE
	ld [wScriptVar], a
	ret

Script_changemapblocks:
; script command 0x79
; parameters: map_data_pointer

	call GetScriptByte
	ld [wMapBlocksBank], a
	call GetScriptByte
	ld [wMapBlocksPointer], a
	call GetScriptByte
	ld [wMapBlocksPointer + 1], a
	call ChangeMap
	jp BufferScreen

Script_changeblock:
; script command 0x7a
; parameters: x, y, block

	call GetScriptByte
	add 4
	ld d, a
	call GetScriptByte
	add 4
	ld e, a
	call GetBlockLocation
	call GetScriptByte
	ld [hl], a
	jp BufferScreen

Script_reloadmappart::
; script command 0x7c

	xor a
	ldh [hBGMapMode], a
	call OverworldTextModeSwitch
	call GetMovementPermissions
	farcall ReloadMapPart
	jp UpdateSprites

Script_warpcheck:
; script command 0x8e

	call WarpCheck
	ret nc
	farcall EnableEvents
	ret

Script_newloadmap:
; script command 0x8a
; parameters: which_method

	call GetScriptByte
	ldh [hMapEntryMethod], a
	ld a, MAPSTATUS_ENTER
	call LoadMapStatus
	jp StopScript

Script_reloadandreturn:
; script command 0x92

	call Script_newloadmap
	jp Script_end

Script_closetext:
; script command 0x49

	call _OpenAndCloseMenu_HDMATransferTileMapAndAttrMap
	jp CloseText

Script_autoinput:
; script command 0x89
; parameters: input_pointer

	call GetScriptByte
	push af
	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	pop af
	jp StartAutoInput

Script_pause:
; script command 0x8b
; parameters: length

	call GetScriptByte
	and a
	jr z, .loop
	ld [wScriptDelay], a
.loop
	ld c, 2
	call DelayFrames
	ld hl, wScriptDelay
	dec [hl]
	jr nz, .loop
	ret

Script_deactivatefacing:
; script command 0x8c
; parameters: time

	call GetScriptByte
	and a
	jr z, .no_time
	ld [wScriptDelay], a
.no_time
	ld a, SCRIPT_WAIT
	ld [wScriptMode], a
	jp StopScript

Script_stopandsjump:
; script command 0x8f
; parameters: pointer

	call StopScript
	jp Script_sjump

Script_endifjustbattled:
; script command 0x66

	ld a, [wRunningTrainerBattleScript]
	and a
	ret z
Script_end:
; script command 0x91

	call ExitScriptSubroutine
	jr c, .resume
	ret

.resume
	xor a
	ld [wScriptRunning], a
	ld a, SCRIPT_OFF
	ld [wScriptMode], a
	ld hl, wScriptFlags
	res 0, [hl]
	jp StopScript

Script_return:
; script command 0x90

	call ExitScriptSubroutine
	jr c, .dummy
.dummy
	ld hl, wScriptFlags
	res 0, [hl]
	jp StopScript

ExitScriptSubroutine:
; Return carry if there's no parent to return to.

	ld hl, wScriptStackSize
	ld a, [hl]
	and a
	jr z, .done
	dec [hl]
	ld e, [hl]
	ld d, $0
	ld hl, wScriptStack
	add hl, de
	add hl, de
	add hl, de
	ld a, [hli]
	ld b, a
	and " "
	ld [wScriptBank], a
	ld a, [hli]
	ld e, a
	ld [wScriptPos], a
	ld a, [hl]
	ld d, a
	ld [wScriptPos + 1], a
	and a
	ret
.done
	scf
	ret

Script_endall:
; script command 0x93

	xor a
	ld [wScriptStackSize], a
	ld [wScriptRunning], a
	ld a, SCRIPT_OFF
	ld [wScriptMode], a
	ld hl, wScriptFlags
	res 0, [hl]
	jp StopScript

Script_halloffame:
; script command 0xa1

	ld hl, wGameTimerPause
	res GAMETIMERPAUSE_TIMER_PAUSED_F, [hl]
	farcall HallOfFame
	ld hl, wGameTimerPause
	set GAMETIMERPAUSE_TIMER_PAUSED_F, [hl]
	jr ReturnFromCredits

Script_credits:
; script command 0xa2

	farcall RedCredits
ReturnFromCredits:
	call Script_endall
	ld a, MAPSTATUS_DONE
	call LoadMapStatus
	jp StopScript

Script_wait:
; script command 0xa8
; parameters: unknown

	push bc
	call GetScriptByte
.loop
	push af
	ld c, 6
	call DelayFrames
	pop af
	dec a
	jr nz, .loop
	pop bc
	ret

Script_checksave:
; script command 0xa9

	farcall CheckSave
	ld a, c
	ld [wScriptVar], a
	ret

Script_loadmonindex:
; script command 0xaa
	call LoadScriptPokemonID
	ld [wScriptVar], a
	ld c, a
	call GetScriptByte
	dec a
	cp NUM_MAP_LOCKED_MON_IDS
	ret nc
	if LOCKED_MON_ID_MAP_1 > 1
		add a, LOCKED_MON_ID_MAP_1
	elif LOCKED_MON_ID_MAP_1 == 1
		inc a
	endc
	ld l, a
	ld a, c
	jp LockPokemonID

Script_checkmaplockedmons:
; script command 0xab
; check if the script variable's value is one of the reserved map indexes
	ld a, [wScriptVar]
	and a
	ret z
	cp MON_TABLE_ENTRIES + 1
	ld c, 0
	jr nc, .done
	ld b, a
	ldh a, [rSVBK]
	push af
	ld a, BANK(wPokemonIndexTable)
	ldh [rSVBK], a
	ld hl, wPokemonIndexTableLockedEntries + LOCKED_MON_ID_MAP_1
.loop
	inc c
	ld a, [hli]
	cp b
	jr z, .found
	ld a, c
	cp NUM_MAP_LOCKED_MON_IDS
	jr c, .loop
	ld c, 0
.found
	pop af
	ldh [rSVBK], a
.done
	ld a, c
	ld [wScriptVar], a
	ret

LoadScriptPokemonID:
	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	or l
	jp nz, GetPokemonIDFromIndex
	ld a, [wScriptVar]
	ret

LoadScriptPokemonIndex:
	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	or l
	ret nz
	ld a, [wScriptVar]
	jp GetPokemonIndexFromID

Script_givechattymon:
; script command 0xac
; if no room in the party, return 0 in wScriptVar; else, return 2
	farcall GiveChattyMon
	sbc a
	and 2
	ld [wScriptVar], a
	ret

Script_checkcaught:
; script command 0xb0
; parameters: species index
; sets the script variable to 2 if the mon is caught and present, 1 if caught and lost, or 0 if not caught
	call LoadScriptPokemonIndex
	ld d, h
	ld e, l
	push de
	call CheckCaughtAndPresent
	pop de
	ld a, 2
	jr c, .done
	call CheckCaughtMonIndex
	ld a, 1
	jr nz, .done
	dec a
.done
	ld [wScriptVar], a
	ret

CheckCaughtAndPresent:
	; returns carry if the mon in de is caught and still present
	push de
	call CheckCaughtMonIndex
	pop de
	and a
	ret z
	ld a, [wSaveFileExists]
	and a
	jr z, .no_other_boxes
	xor a
	ld hl, .boxes
.box_loop
	ld c, a
	ld a, [wCurBox]
	cp c
	jr z, .next_box
	push hl
	call .check_box
	call CloseSRAM
	pop hl
	ret c
.next_box
	ld a, c
	ld bc, 5
	add hl, bc
	inc a
	cp NUM_BOXES
	jr c, .box_loop
.no_other_boxes
	ld h, d
	ld l, e
	call GetPokemonIDFromIndex
	ld e, a
	ld a, BANK(sBox)
	call GetSRAMBank
	call .check_current_box
	call CloseSRAM
	ret c
	ld a, [wPartyCount]
	and a
	jr z, .no_party ; who knows...
	ld d, a
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1Species
	ld a, e
.party_loop
	cp [hl]
	scf
	ret z
	add hl, bc
	dec d
	jr nz, .party_loop
.no_party
	ld a, [wDayCareMan]
	and 1 << DAYCAREMAN_HAS_MON_F
	jr z, .no_breed_mon
	ld a, [wBreedMon1Species]
	cp e
	scf
	ret z
.no_breed_mon
	ld a, [wDayCareLady]
	and 1 << DAYCARELADY_HAS_MON_F
	ret z
	ld a, [wBreedMon2Species]
	xor e
	sub 1 ; will set carry if a = e
	ret

.check_box
	ld a, [hli]
	call GetSRAMBank
	push de
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [de]
	pop de
	and a
	ret z
	ld b, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
.box_mon_loop
	ld a, [hli]
	cp e
	ld a, [hli]
	jr nz, .next_box_mon
	cp d
	scf
	ret z
.next_box_mon
	dec b
	jr nz, .box_mon_loop
	and a
	ret

.check_current_box
	ld a, [sBox]
	and a
	ret z
	ld d, a
	ld hl, sBoxMon1Species
	ld bc, BOXMON_STRUCT_LENGTH
.current_box_loop
	ld a, [hl]
	cp e
	scf
	ret z
	add hl, bc
	dec d
	jr nz, .current_box_loop
	and a
	ret

.boxes
	dbww BANK(sBox1), sBox1, sBox1PokemonIndexes
	dbww BANK(sBox2), sBox2, sBox2PokemonIndexes
	dbww BANK(sBox3), sBox3, sBox3PokemonIndexes
	dbww BANK(sBox4), sBox4, sBox4PokemonIndexes
	dbww BANK(sBox5), sBox5, sBox5PokemonIndexes
	dbww BANK(sBox6), sBox6, sBox6PokemonIndexes
	dbww BANK(sBox7), sBox7, sBox7PokemonIndexes
	dbww BANK(sBox8), sBox8, sBox8PokemonIndexes
	dbww BANK(sBox9), sBox9, sBox9PokemonIndexes
	dbww BANK(sBox10), sBox10, sBox10PokemonIndexes
	dbww BANK(sBox11), sBox11, sBox11PokemonIndexes
	dbww BANK(sBox12), sBox12, sBox12PokemonIndexes
	dbww BANK(sBox13), sBox13, sBox13PokemonIndexes
	dbww BANK(sBox14), sBox14, sBox14PokemonIndexes
	dbww BANK(sBox15), sBox15, sBox15PokemonIndexes
	dbww BANK(sBox16), sBox16, sBox16PokemonIndexes
	dbww BANK(sBox17), sBox17, sBox17PokemonIndexes
	dbww BANK(sBox18), sBox18, sBox18PokemonIndexes
	dbww BANK(sBox19), sBox19, sBox19PokemonIndexes
	dbww BANK(sBox20), sBox20, sBox20PokemonIndexes

Script_givedecoration:
; script command 0xb1
; parameters: decoration (byte)

	call GetScriptByte
	ld c, a
	push bc
	ld b, SET_FLAG
	farcall DecorationFlagAction_c
	pop bc
	ld de, wStringBuffer1
	farcall GetDecorationName_c_de
	ld hl, wScriptTextBank
	ld a, BANK(@)
	ld [hli], a
	ld a, LOW(.text)
	ld [hli], a
	ld [hl], HIGH(.text)
	jp JumpText

.text
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	sound_item
	text ""

	para "<PLAYER> sent the"
	line "decoration home."
	done

Script_partyselect:
; script command 0x4a
; returns 0 if cancelled or 1-6 for the selected mon
; exits after opentext!
	farcall SelectMonFromParty
	ld hl, wMenuCursorY
	ccf
	sbc a
	and [hl]
	ld [wScriptVar], a
	ret

Script_depositspecial:
; script command 0xb2
; parameters: slot (byte), expected species, expected move
; script var (1-6) indicates the party slot
	ld a, [wScriptVar]
	dec a
	cp PARTY_LENGTH
	jr nc, .fail
	ld [wCurPartyMon], a
	call GetScriptByte
	push af
	call GetScriptByte
	ld c, a
	call GetScriptByte
	ld b, a
	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	farcall CheckSpecialMon
	pop bc
	ret c
	ld a, b
	ld bc, BOXMON_STRUCT_LENGTH + MON_NAME_LENGTH
	ld hl, wSavedChatot
	call AddNTimes
	ld d, h
	ld e, l
	farcall TryDepositSpecialMon
	ret

.fail
	ld a, -1
	ld [wScriptVar], a
	ret

Script_withdrawspecial:
; script command 0xb3
; parameters: slot (byte), species, OT name pointer
	call GetScriptByte
	ld bc, BOXMON_STRUCT_LENGTH + MON_NAME_LENGTH
	ld hl, wSavedChatot
	call AddNTimes
	ld d, h
	ld e, l
	call GetScriptByte
	ld l, a
	call GetScriptByte
	ld h, a
	call GetPokemonIDFromIndex
	ld [wCurPartySpecies], a
	call GetScriptByte
	ld c, a
	call GetScriptByte
	ld b, a
	add a, a
	jr c, .not_ROMX
	add a, a
	jr nc, .not_ROMX
	push de
	push bc
	ld hl, wStringBuffer2
	ld a, "@"
	ld bc, NAME_LENGTH
	call ByteFill
	pop de
	ld hl, wStringBuffer2
	ld a, [wScriptBank]
	call FarCopyName
	pop de
	ld bc, wStringBuffer2
.not_ROMX
	farcall TryWithdrawSpecialMon
	sbc a
	inc a
	ld [wScriptVar], a
	ret z
	ld a, [wPartyCount]
	ld bc, MON_NAME_LENGTH
	ld hl, wPartyMonNicknames - MON_NAME_LENGTH
	call AddNTimes
	ld de, wStringBuffer2
	rst CopyBytes
	ld hl, .text
	ld b, BANK(@)
	call MapTextbox
	jp WaitButton

.text
	text "<PLAYER> got back"
	line "@"
	text_ram wStringBuffer2
	text "!@"
	sound_item
	done

Script_checkspecialstorage:
; script command 0xb4
; parameter: slot (byte)
	call GetScriptByte
	ld bc, BOXMON_STRUCT_LENGTH + MON_NAME_LENGTH
	ld hl, wSavedChatot
	call AddNTimes
	ldh a, [rSVBK]
	ld b, a
	ld a, BANK(wSavedChatot)
	ldh [rSVBK], a
	ld c, [hl]
	ld a, b
	ldh [rSVBK], a
	ld a, c
	and a
	jr z, .done
	ld a, 1
.done
	ld [wScriptVar], a
	ret

Script_replacemove:
; script command 0xb5
; parameters: old move, new move
	call GetScriptByte
	ld e, a
	call GetScriptByte
	ld d, a
	call GetScriptByte
	ld c, a
	call GetScriptByte
	ld b, a
	farcall ReplaceMove
	sbc a
	inc a
	ld [wScriptVar], a
	ret
