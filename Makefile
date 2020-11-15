CC=gcc
CFLAGS=-Wall -I.
DEPS=myMath.h
SLFLAGS=-lmyMath

libmyMath.a: basicMath.o power.o
	ar rcs libmyMath.a basicMath.o power.o 

libmyMath.so: 
	$(CC) $(CFLAGS) -fPIC -c basicMath.c power.c 
	$(CC) -shared basicMath.o power.o -o libmyMath.so
	
.PHONY: all
all: mains maind
	
mymaths: libmyMath.a
	
mymathd: libmyMath.so
	
mains: main.o libmyMath.a
	$(CC) -L. main.o -lmyMath -o mains

maind: main.o libmyMath.so
	$(CC) -o maind main.o libmyMath.so
	sudo cp libmyMath.so /usr/lib/
	sudo ldconfig

.PHONY: clean
clean:
	-rm -f mains maind *.o *.a *.so
