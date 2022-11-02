; usage:
; Table:
;   indirect_table <entry size>, <start index> (0-1)
;   indirect_entries <max index>, <optional far label>
;   (repeat as many times as necessary)
;   indirect_table_end

MACRO indirect_table
	; arguments: entry size, initial index (0 or 1)
	assert !DEF(___current_indirect_size), "indirect table error: there's already an active indirect table"
	assert (\1) > 0, "indirect table error: the entry size must be positive"
	; the limit could be set much lower, but this will do as a sanity check
	assert (\1) < $8000, "indirect table error: entry size is set to an invalid value"
	assert (\2) == 0 || (\2) == 1, "indirect table error: invalid initial index (must be 0 or 1)"
	def ___current_indirect_size = \1
	def ___current_indirect_index = \2
	dw (\1) | ((\2) << 15)
ENDM

MACRO indirect_entries
	; arguments: next max index, far label (omit for zero/no data), far bank (if different from label)
	assert DEF(___current_indirect_size), "indirect table error: there's no active indirect table"
	assert (\1) >= ___current_indirect_index, "indirect table error: attempted to move backwards"
	def ___current_indirect_count = (\1) + 1 - ___current_indirect_index
	def ___current_indirect_index = (\1) + 1
	for ___current_indirect_iteration, 0, ___current_indirect_count, $FF
		def ___current_iteration_count = ___current_indirect_count - ___current_indirect_iteration
		if ___current_iteration_count > $FF
			def ___current_iteration_count = $FF
		endc
		db ___current_iteration_count
		if _NARG == 1
			db 0
			dw 0
		else
			if _NARG == 2
				db BANK(\2)
			else
				db \3
			endc
			dw (\2) + ___current_indirect_size * ___current_indirect_iteration
		endc
	endr
ENDM

MACRO indirect_table_end
	; no arguments
	assert DEF(___current_indirect_size), "indirect table error: there's no active indirect table"
	purge ___current_indirect_size
	db 0
ENDM
