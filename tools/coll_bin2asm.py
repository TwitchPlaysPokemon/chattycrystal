#!/usr/bin/env python3

import sys

if len(sys.argv) < 2:
	print('Usage: %s foo_collision.bin' % sys.argv[0], file=sys.stderr)
	sys.exit(1)

coll_ids = {}

with open('constants/collision_constants.asm', 'r') as f:
	for line in f:
		if line.startswith('COLL_') and ' EQU ' in line:
			cname, cvalue = line.split(';')[0].split(' EQU ')
			cname = cname.strip()[len('COLL_'):]
			cvalue = int(cvalue.strip().lstrip('$'), 16)
			coll_ids[cvalue] = cname

for file in sys.argv[1:]:
	newfile = file.rsplit('.', 1)[0] + '.asm'

	with open(file, 'rb') as f:
		cdata = bytearray(f.read())

	if len(cdata) % 4:
		print('error: %s is not a multiple of 4 bytes: %d' %
			(file, len(cdata)), file=sys.stderr)
		continue

	with open(newfile, 'w') as f:
		for i in range(0, len(cdata), 4):
			colls = (coll_ids.get(b, '%02x' % b) for b in cdata[i:i+4])
			line = '\ttilecoll %s ; %02x\n' % (', '.join(colls), i // 4)
			f.write(line)
