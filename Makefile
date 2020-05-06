run:
	nasm -f bin boot_sect_hello.asm -o boot_sect_hello.bin
	qemu-system-x86_64 boot_sect_hello.bin

org:
	nasm -f bin boot_sect_memory_org.asm -o boot_sect_memory_org.bin
	qemu-system-x86_64 boot_sect_memory_org.bin

mem:
	nasm -f bin boot_sect_memory.asm -o boot_sect_memory.bin
	qemu-system-x86_64 boot_sect_memory.bin