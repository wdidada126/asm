all:
	nasm -f macho64 -o hello.o hello.asm
	ld -o hello hello.o -lSystem -syslibroot $(shell xcrun -sdk macosx --show-sdk-path) -e _main -static

clean:
	rm hello hello.o
