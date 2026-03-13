all:
	nasm -g -f elf64 -o dot_product.o dot_product.asm
	ld -no-pie -z muldefs -dynamic-linker /lib64/ld-linux-x86-64.so.2 dot_product.o -lc -o dot_product

clean:
	rm dot_product dot_product.o
