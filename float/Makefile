all:
	nasm -g -f macho64 -o dot_product.o dot_product.asm
	gcc -o dot_product dot_product.o -lc

clean:
	rm dot_product dot_product.o
