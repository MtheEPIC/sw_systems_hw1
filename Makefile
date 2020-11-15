CC=gcc
CFLAGS=-Wall -I.
DEPS=myMath.h
SLFLAGS=-lmyMath

libmyMath.a: basicMath.o power.o
	ar rcs libmyMath.a basicMath.o power.o 

libmyMath.so: basicMath.o power.o
	$(CC) $(CFLAGS) -fPIC -c basicMath.c power.c 
	$(CC) -shared basicMath.o power.o -o libmyMath.so
	
.PHONY: all
all: main.o basicMath.o power.o libmyMath.so libmyMath.a
	# link to main file
	$(CC) -o maind main.o libmyMath.so
	sudo mv libmyMath.so /usr/lib/
	sudo ldconfig
	# link to main file
	$(CC) -L. main.o -lmyMath -o mains
	
mymaths: basicMath.o power.o
	ar rcs libmyMath.a basicMath.o power.o
	
mymathd:
	$(CC) $(CFLAGS) -fPIC -c basicMath.c power.c 
	$(CC) -shared basicMath.o power.o -o libmyMath.so
	
mains: main.o
	$(CC) -L. main.o -lmyMath -o mains

maind: main.o
	$(CC) -o maind main.o libmyMath.so
	sudo mv libmyMath.so /usr/lib/
	sudo ldconfig

.PHONY: clean
clean:
	-rm -f mains maind *.o *.a *.so
