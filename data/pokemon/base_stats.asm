BaseData::
	; the parameter to indirect_table must be a compile-time constant, and BASE_DATA_SIZE is not
	assert $20 == BASE_DATA_SIZE, "Please adjust the table size (and this assertion) to match BASE_DATA_SIZE"
	indirect_table $20, 1
	indirect_entries CELEBI, BaseData1
	indirect_entries NUM_POKEMON, BaseData2
	indirect_table_end
