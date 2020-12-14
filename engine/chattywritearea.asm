ChattyText::
IF TESTMODE
	db "CHATTY TEXT HERE!!"
	line "CHATTY TEXT HERE!!"
	cont "CHATTY TEXT HERE!!"
	done
endc
ds $400

HandleChattyText:: ;places the chatty string. if carry flag is not set, redirect hl to a TX_END command.
	jr c, .noDone
	ld hl, TX_ENDText - 1 ;if the terminator is a <DONE> or <PROMPT>, emulate <DONE>'s text redirection
.noDone
	push hl
	push bc ;store the text pointer
	ld hl, (-(FIRST_TEXTBOX_TILE + wTileMap)) & $ffff
	add hl, bc
	ld bc, CharsAvalibleTable
	add hl, bc
	ld a, [hl]
	ld [wChattySpace], a
if TESTMODE
	ld hl, ChattyText
	ld b, 0
	ld c, a
	add hl, bc
	ld d, h
	ld e, l
else
	ld de, ChattyText
endc
	pop hl
AissInjectTextHere: ;place text block WITHOUT A START CHARACTER in ChattyText, including any line or cont characters and end with a done character
	call PlaceString
	pop hl
	inc hl
	ret
	
CharsAvalibleTable:
	db 0
	db 1
	db 2
	db 3
	db 4
	db 5
	db 6
	db 7
	db 8
	db 9
	db 10
	db 11
	db 12
	db 13
	db 14
	db 15
	db 16
	db 17
rept 22
	db 18 ;18 tells the text to start a new line
endr
	db 19
	db 20
	db 21
	db 22
	db 23
	db 24
	db 25
	db 26
	db 27
	db 28
	db 29
	db 30
	db 31
	db 32
	db 33
	db 34
	db 35
	db 36
	db 36


