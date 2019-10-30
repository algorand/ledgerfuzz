build:
	AFL_USE_ASAN=1 afl-gcc -m32 *.c

fuzz:
	afl-fuzz -m1024 -i aflin -o aflout ./a.out
