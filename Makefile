assembly:
	nasm -f elf64 -o hello_assembled hello.asm
	ld -o hello hello_assembled
	rm hello_assembled

payload:
	nasm -f elf64 -o hello_assembled hello.asm
	ld -o hello hello_assembled
	rm hello_assembled
	xxd -p hello hellcode

clean:
	rm a.out hello hello.o hellcode hello payload
