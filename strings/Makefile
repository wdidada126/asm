all:
	nasm -g -f macho64 -o reverse.o reverse.asm
	ld -o reverse reverse.o -lSystem -syslibroot $(shell xcrun -sdk macosx --show-sdk-path) -e _main -static

clean:
	rm reverse reverse.o
