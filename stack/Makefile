all:
	nasm -f macho64 -o stack.o stack.asm
	ld stack.o -o stack -lSystem -syslibroot $(shell xcrun -sdk macosx --show-sdk-path) -e _main -static

clean:
	rm stack stack.o
