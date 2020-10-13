ifeq ($(strip $(shell echo $$CC)),)
CC := gcc
endif

all: src/*.c src/*.h
	$(CC) -O3 -flto src/*.c -o lzcomp

clean:
	rm -f lzcomp

debug: src/*.c src/*.h
	$(CC) -ggdb src/*.c -o lzcomp
