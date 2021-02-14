CorrectNickErrors::
; error-check monster nick before use
; must be a peace offering to gamesharkers

; input: de = nick location

	push bc
	push de
	ld b, MON_NAME_LENGTH

.checkchar
; end of nick?
	ld a, [de]
	cp "@" ; terminator
	jr z, .end

; check if this char is a text command
	add a, a
	jr c, .done

; replace it with a "?"
	ld a, "?"
	ld [de], a

.done
; next char
	inc de
; reached end of nick without finding a terminator?
	dec b
	jr nz, .checkchar

; change nick to "?@"
	pop de
	push de
	ld a, "?"
	ld [de], a
	inc de
	ld a, "@"
	ld [de], a
.end
; if the nick has any errors at this point it's out of our hands
	pop de
	pop bc
	ret

.textcommands
; table defining which characters are actually text commands
; format:
	;      ≥           <
	db "<NULL>",   "ガ"
	db "<PLAY_G>", "<JP_18>" + 1
	db "<NI>",     "<NO>"    + 1
	db "<ROUTE>",  "<GREEN>" + 1
	db "<ENEMY>",  "<ENEMY>" + 1
	db "<MOM>",    "<TM>"    + 1
	db "<ROCKET>", "┘"       + 1
	db -1 ; end
