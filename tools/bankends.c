#include <stdio.h>
#include <stdlib.h>

#include "parsemap.h"

#define BANKS 128

int compare_free_space (const void * first, const void * second) {
  const unsigned short * p1 = first;
  const unsigned short * p2 = second;
  if (*p1 != *p2) return (*p1 < *p2) - (*p1 > *p2);
  return (p1[1] > p2[1]) - (p1[1] < p2[1]);
}

int main (int argc, char ** argv) {
  if (argc != 2) {
    fprintf(stderr, "usage: %s file.map\n", *argv);
    return 1;
  }
  MapSection * sections = get_sections_from_map_file(argv[1]);
  if (!sections) {
    fprintf(stderr, "error: could not retrieve section data from %s\n", argv[1]);
    return 2;
  }
  unsigned short bank_ends[BANKS];
  unsigned p;
  *bank_ends = 0;
  for (p = 1; p < BANKS; p ++) bank_ends[p] = 0x4000;
  MapSection * section;
  for (section = sections; section -> type == SECTION_ROM; section ++) {
    if (section -> bank >= BANKS) {
      fprintf(stderr, "error: unknown ROM bank $%hx\n", section -> bank);
      return 3;
    }
    if ((section -> address + section -> length) > bank_ends[section -> bank])
      bank_ends[section -> bank] = section -> address + section -> length;
  }
  destroy_section_array(sections);
  unsigned short free_space[BANKS * 2];
  *free_space = 0x4000 - *bank_ends;
  free_space[1] = 0;
  for (p = 1; p < BANKS; p ++) {
    free_space[p * 2] = 0x8000 - bank_ends[p];
    free_space[p * 2 + 1] = p;
  }
  for (p = 0; p < BANKS; p ++) printf("Bank $%02x: $%04hx ($%04hx)\n", p, bank_ends[p], free_space[p * 2]);
  putchar('\n');
  qsort(free_space, BANKS, 2 * sizeof(unsigned short), &compare_free_space);
  unsigned total_free_space = 0;
  for (p = 0; p < BANKS; p ++) {
    printf("Bank $%02hx has $%04hx bytes of free space\n", free_space[p * 2 + 1], free_space[p * 2]);
    total_free_space += free_space[p * 2];
  }
  unsigned short percentage = (((unsigned long long) total_free_space * 20000) >> 14) / BANKS;
  percentage = (percentage + 1) >> 1;
  putchar('\n');
  printf("Free space: %u/%u (%u.%02u%%)\n", total_free_space, BANKS << 14, percentage / 100, percentage % 100);
  return 0;
}
