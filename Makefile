payload:
	nasm -f elf64 -o hello.o hello.asm
	ld -o hello hello.o
	rm hello.o

hex:
	objdump --disassemble hello

vuln:
	gcc -g -o vuln -fno-stack-protector -z execstack vuln.c

clean:
	rm a.out hello hello.o hellcode hello payload vuln

attack:
	bash attack_complete.sh > attack.txt