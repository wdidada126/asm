all:
	nasm -f macho64 casm.asm -o casm.o
	ld -o casm casm.o -lSystem -syslibroot $(shell xcrun -sdk macosx --show-sdk-path) -e _main -lc

clean:
	rm -rf *.o
	rm -rf casm
