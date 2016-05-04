Compile NASM ASSEMBLY:
<1>To assemble the program, type nasm -f elf FILE_NAME.asm
<2>To link the object file and create an executable file named hello, type ld -m elf_i386 -s -o FILE_NAME FILE_NAME.o
