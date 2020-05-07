run:
	nasm -f bin boot_sect_hello.asm -o boot_sect_hello.bin
	qemu-system-x86_64 boot_sect_hello.bin

org:
	nasm -f bin boot_sect_memory_org.asm -o boot_sect_memory_org.bin
	qemu-system-x86_64 boot_sect_memory_org.bin

mem:
	nasm -f bin boot_sect_memory.asm -o boot_sect_memory.bin
	qemu-system-x86_64 boot_sect_memory.bin

stack:
	nasm -f bin boot_sect_stack.asm -o boot_sect_stack.bin
	qemu-system-x86_64 boot_sect_stack.bin

print:
	nasm -f bin boot_sect_main.asm -o boot_sect_main.bin
	qemu-system-x86_64 boot_sect_main.bin

seg:
	nasm -f bin boot_sect_segmentation.asm -o boot_sect_segmentation.bin
	qemu-system-x86_64 boot_sect_segmentation.bin

disk:
	nasm -f bin boot_sect_main.asm -o boot_sect_main.bin
	qemu-system-x86_64 boot_sect_main.bin

thirtytwobitprint:
	nasm -f bin 32bit-print.asm -o 32bit-print.bin
	qemu-system-x86_64 32bit-print.bin