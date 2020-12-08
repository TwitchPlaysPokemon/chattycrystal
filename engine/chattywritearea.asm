ChattyText::
IF TESTMODE
	db "CHATTY TEXT HERE!!"
	line "CHATTY TEXT HERE!!"
	cont "CHATTY TEXT HERE!!"
	done
endc
ds $400

HandleChattyText:: ;places the chatty string. if carry flag is set, redirect hl to a TX_END command.
	jr nc, .noDone
	ld hl, TX_ENDText - 1 ;if the terminator is a <DONE>, emulate <DONE>'s text redirection
.noDone
	push hl
	ld h, b
	ld l, c
	ld d, HIGH(ChattyText)
	ld e, LOW(ChattyText)
	call PlaceString
	pop hl
	inc hl
	ret
