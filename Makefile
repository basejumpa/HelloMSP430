MAKEFLAGS += --no-builtin-rules
.SUFFIXES:

.PHONY: test
test: main.elf
	./forkIfNotRunning.sh /c/msp430-toolchain-win-x86-3.0/bin/msp430-gdbproxy.exe ;\
	/c/msp430-toolchain-win-x86-3.0/bin/msp430-gdb --batch --command=test.gdb main.elf

main.elf: main.o
	/c/msp430-toolchain-win-x86-3.0/bin/msp430-gcc -mmcu=msp430g2553 -o main.elf main.o

main.o: main.c
	/c/msp430-toolchain-win-x86-3.0/bin/msp430-gcc -mmcu=msp430g2553 -c -g -D_TEST -o main.o main.c

.PHONY: clean
clean:
	rm -f main.o main.elf
