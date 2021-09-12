GCC = gcc
FLAGS = -ansi -pedantic -Wall -std=c99 -pthread
C_FLAGS = -lm
PROGRAMAS = MatrixMultiplication1 MatrixMultiplication2 MatrixMultiplication3

all: $(PROGRAMAS)

MatrixMultiplication1:
	$(GCC) $(FLAGS) functions1.c -c
	$(GCC) $(FLAGS) ctime1.c -c
	$(GCC) $(FLAGS) $@.c -c
	$(GCC) $(FLAGS) -o $@ $@.o functions1.o ctime1.o


MatrixMultiplication2:
	$(GCC) $(FLAGS) functions2.c -c
	$(GCC) $(FLAGS) ctime2.c -c
	$(GCC) $(FLAGS) $@.c -c
	$(GCC) $(FLAGS) -o $@ $@.o functions2.o ctime2.o

MatrixMultiplication3:
	$(GCC) $(FLAGS) functions3.c -c
	$(GCC) $(FLAGS) ctime3.c -c
	$(GCC) $(FLAGS) $@.c -c
	$(GCC) $(FLAGS) -o $@ $@.o functions3.o ctime3.o




clean:
	$(RM) $@ *.o
	$(RM) $@ $
	$(RM) $(PROGRAMAS) $
