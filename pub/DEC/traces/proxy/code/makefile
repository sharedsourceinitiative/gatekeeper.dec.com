#CFLAGS= -g
CFLAGS= -O3

all:  proxytrace2txt

clean: 
	rm -f *.o proxytrace2txt 

.C.o:
	$(CC) -c $(CFLAGS) $?

proxytrace2txt: proxytrace2txt.o 
	$(CC) $(CFLAGS) -o $@ proxytrace2txt.o  -lm

SRCS = proxytrace2txt.c proxytrace2txt.h makefile LICENSE

proxytrace2txt.tar: $(SRCS)
	rm -f proxytrace2txt.tar
	tar cf proxytrace2txt.tar $(SRCS)

proxytrace2txt.tar.gz: proxytrace2txt.tar
	rm -f proxytrace2txt.tar.gz
	gzip proxytrace2txt.tar

