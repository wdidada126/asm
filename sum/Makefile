all:
	nasm -f macho64 -o sum.o sum.asm
	ld -o sum sum.o -lSystem -syslibroot $(shell xcrun -sdk macosx --show-sdk-path) -e _main -static

clean:
	rm sum sum.o
