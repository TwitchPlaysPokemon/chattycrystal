TextFileIndex:
	dw UnownTXTFile
	dw HidnPwr1TXTFile
	dw HidnPwr2TXTFile
	dw ButtonsTXTFile

ResearchReportText:
	db "RESEARCH REPORT@"

UnownTXTFile:
	db "UNOWN.TXT@"
	db (.end - .lines) / 2
.lines
	dw ResearchReportText, .line2, GenericDummyString, .line4, .line5, .line6, .line7, .line8, .line9, .line10, .line11
	dw .line12, .line13, .line14, .line15, .line16, .line17, .line18, .line19, GenericDummyString, .line21
	dw GenericDummyString, .line23, .line24, .line25, .line26, .line27, .line28, .line29, .line30, .line31, .line32
	dw .line33, GenericDummyString, .line35, GenericDummyString, .line37, .line38, .line39, .line40, .line41, .line42
	dw .line43, .line44, .line45
.end

.line2:  db "Subject: UNOWN@"

.line4:  db "A special UNOWN@"
.line5:  db "has been found by@"
.line6:  db "a trainer called@"
.line7:  db "<PLAYER>. Unlike@"
.line8:  db "other members of@"
.line9:  db "its species, this@"
.line10: db "particular UNOWN@"
.line11: db "seems to have a@"
.line12: db "very special bond@"
.line13: db "with its trainer,@"
.line14: db "which can manifest@"
.line15: db "in battle in the@"
.line16: db "form of a special@"
.line17: db "move not known by@"
.line18: db "any other #MON@"
.line19: db "found to date.@"

.line21: db "HIDDEN POWER@"

.line23: db "The move HIDDEN@"
.line24: db "POWER is known by@"
.line25: db "every UNOWN we@"
.line26: db "have discovered up@"
.line27: db "to this point.@"
.line28: db "However, this spe-@"
.line29: db "cial UNOWN seems@"
.line30: db "to know a special@"
.line31: db "form of the move@"
.line32: db "that behaves in a@"
.line33: db "different way.@"

.line35: db "FUTURE RESEARCH@"

.line37: db "This unusual var-@"
.line38: db "iant of the move@"
.line39: db "HIDDEN POWER seems@"
.line40: db "to be connected to@"
.line41: db "<PLAYER>'s button@"
.line42: db "presses somehow.@"
.line43: db "More research is@"
.line44: db "needed to explore@"
.line45: db "this connection.@"

HidnPwr1TXTFile:
	db "HIDNPWR1.TXT@"
	db (.end - .lines) / 2
.lines
	dw ResearchReportText, .line2, .line3, GenericDummyString, .line5, .line6, .line7, .line8, .line9, .line10, .line11
	dw .line12, .line13, GenericDummyString, .line15, GenericDummyString, .line17, .line18, .line19, .line20, .line21
	dw .line22, .line23, .line24, .line25, .line26, .line27, .line28, GenericDummyString, .line30, .line31, .line32
	dw .line33, .line34, .line35, .line36, .line37, .line38, GenericDummyString, .line40, GenericDummyString, .line42
	dw .line43, .line44, .line45, .line46, .line47, .line48, .line49, .line50, .line51, GenericDummyString, .line53
	dw .line54, .line55, .line56, .line57
.end

.line2:  db "Subject: HIDDEN@"
.line3:  db "POWER - part 1@"

.line5:  db "A special variant@"
.line6:  db "of the move HIDDEN@"
.line7:  db "POWER was recently@"
.line8:  db "discovered, which@"
.line9:  db "has unusual char-@"
.line10: db "acteristics both@"
.line11: db "in terms of type@"
.line12: db "and in terms of@"
.line13: db "power.@"

.line15: db "MOVE POWER@"

.line17: db "The move's power@"
.line18: db "seems to be linked@"
.line19: db "to the number of@"
.line20: db "button presses@"
.line21: db "observed during@"
.line22: db "the move's execu-@"
.line23: db "tion. The observed@"
.line24: db "move power grows@"
.line25: db "as the number of@"
.line26: db "button presses@"
.line27: db "increases, up to a@"
.line28: db "certain cap.@"

.line30: db "The cap appears to@"
.line31: db "be related to the@"
.line32: db "trainer's skills.@"
.line33: db "A positive corre-@"
.line34: db "lation has been@"
.line35: db "observed between@"
.line36: db "the power cap and@"
.line37: db "the BADGES that@"
.line38: db "the trainer has.@"

.line40: db "MOVE TYPE@"

.line42: db "The move's type, as@"
.line43: db "detected by our@"
.line44: db "move scanners, is@"
.line45: db "unknown. Unlike@"
.line46: db "the usual HIDDEN@"
.line47: db "POWER, which looks@"
.line48: db "like a normal-type@"
.line49: db "move when scanned,@"
.line50: db "this variant is@"
.line51: db "reported as ???.@"

.line53: db "More research is@"
.line54: db "needed to find out@"
.line55: db "what determines@"
.line56: db "the move's actual@"
.line57: db "type in battle.@"

HidnPwr2TXTFile:
	db "HIDNPWR2.TXT@"
	db (.end - .lines) / 2
.lines
	dw ResearchReportText, .line2, .line3, GenericDummyString, .line5, .line6, .line7, .line8, .line9, .line10, .line11
	dw .line12, .line13, .line14, .line15, .line16, .line17, .line18, .line19, GenericDummyString, .line21
	dw GenericDummyString, .line23, .line24, .line25, .line26, .line27, .line28, .line29, .line30, .line31, .line32
	dw GenericDummyString, .line34, .line35, .line36, .line37, .line38, .line39, .line40, GenericDummyString, .line42
	dw GenericDummyString, .line44, .line45, .line46, .line47, .line48, .line49, .line50, .line51, .line52, .line53
	dw GenericDummyString, .line55, .line56, .line57, .line58, .line59, .line60, .line61, .line62, .line63, .line64
	dw .line65, GenericDummyString, .line67, .line68, .line69, .line70
.end

.line2:  db "Subject: HIDDEN@"
.line3:  db "POWER - part 2@"

.line5:  db "The type of the@"
.line6:  db "special variant of@"
.line7:  db "the move HIDDEN@"
.line8:  db "POWER that was re-@"
.line9:  db "cently discovered@"
.line10: db "is determined by@"
.line11: db "button presses,@"
.line12: db "just like its@"
.line13: db "power. However,@"
.line14: db "while the power is@"
.line15: db "decided by the raw@"
.line16: db "number of presses,@"
.line17: db "the type is given@"
.line18: db "by which buttons@"
.line19: db "are pressed.@"

.line21: db "BUTTON COUNTING@"

.line23: db "The move's type@"
.line24: db "depends on which@"
.line25: db "buttons are pres-@"
.line26: db "sed the most while@"
.line27: db "the move is being@"
.line28: db "executed. The top@"
.line29: db "three buttons seem@"
.line30: db "to determine the@"
.line31: db "move's effective@"
.line32: db "type.@"

.line34: db "The START and@"
.line35: db "SELECT buttons@"
.line36: db "appear to have no@"
.line37: db "effect on the type@"
.line38: db "of the move, even@"
.line39: db "though they do@"
.line40: db "affect its power.@"

.line42: db "COMBINATIONS@"

.line44: db "Each combination@"
.line45: db "of three buttons@"
.line46: db "is linked to a@"
.line47: db "specific type. For@"
.line48: db "example, if the@"
.line49: db "three most pressed@"
.line50: db "buttons are D-Pad@"
.line51: db "directions, the@"
.line52: db "move will be a@"
.line53: db "dragon-type move.@"

.line55: db "The order in which@"
.line56: db "the three buttons@"
.line57: db "with the largest@"
.line58: db "number of presses@"
.line59: db "fall with respect@"
.line60: db "to each other has@"
.line61: db "no bearing on the@"
.line62: db "move's type. Only@"
.line63: db "which buttons are@"
.line64: db "in the top three@"
.line65: db "has any effect.@"

.line67: db "For a full list of@"
.line68: db "three-button comb-@"
.line69: db "inations, see the@"
.line70: db "BUTTONS.TXT file.@"

ButtonsTXTFile:
	db "BUTTONS.TXT@"
	db (.end - .lines) / 2
.lines
	dw .line1, .line2, .line3, GenericDummyString, .line5, .line6, GenericDummyString, .line8, .line9, .line10, .line11
	dw .line12, .line13, .line14, .line15, .line16, .line17, .line18, .line19, .line20, .line21, .line22, .line23
	dw GenericDummyString, .line25, .line26, .line27
.end

; special characters:
; $73: arrow up
; $74: arrow down
; $72: arrow left
; $eb: arrow right
; $e4: plus sign

.line1:  db "HIDDEN POWER TYPE@"
.line2:  db "Three-button@"
.line3:  db "combinations:@"

.line5:  db "(see HIDNPWR2.TXT@"
.line6:  db "for more details)@"

.line8:  db "A", $e4, "B", $e4, $73, ": ELECTRIC@"
.line9:  db "A", $e4, "B", $e4, $74, ": FIRE@"
.line10: db "A", $e4, "B", $e4, $72, ": GRASS@"
.line11: db "A", $e4, "B", $e4, $eb, ": WATER@"
.line12: db "A", $e4, $73, $e4, $72, ": PSYCHIC@"
.line13: db "A", $e4, $73, $e4, $eb, ": FAIRY@"
.line14: db "A", $e4, $74, $e4, $72, ": ICE@"
.line15: db "A", $e4, $74, $e4, $eb, ": DARK@"
.line16: db "A", $e4, $73, $e4, $74, ": FLYING@"
.line17: db "A", $e4, $72, $e4, $eb, ": FIGHTING@"
.line18: db "B", $e4, $73, $e4, $72, ": BUG@"
.line19: db "B", $e4, $73, $e4, $eb, ": GHOST@"
.line20: db "B", $e4, $74, $e4, $72, ": ROCK@"
.line21: db "B", $e4, $74, $e4, $eb, ": GROUND@"
.line22: db "B", $e4, $73, $e4, $74, ": POISON@"
.line23: db "B", $e4, $72, $e4, $eb, ": STEEL@"

.line25: db "Any combination of@"
.line26: db "D-Pad directions:@"
.line27: db "DRAGON@"
