.SUFFIXES: .o .cpp
##
# MAKE FILE
#

DEFINES = 
INCLUDES =

#CCFLAGS = -g  $(INCLUDES) $(DEFINES)
CCFLAGS = -O3 $(INCLUDES) $(DEFINES)

#CXXFLAGS = -g -w0  $(INCLUDES) $(DEFINES)
CXXFLAGS = -O3 -w0 $(INCLUDES) $(DEFINES)


CXX_OBJECTS = proxy_stream_v2.o  proxy_driver.o
CXX_SOURCE =  proxy_stream_v2.cpp proxy_driver.cpp
CXX_HEADERS = proxy_stream_v2.h
CXX_CODE = $(CXX_HEADERS) $(CXX_SOURCE) makefile

CXX =cxx
CC = cc

all:   proxytrace2txt_v2 proxy_driver

clean: 
	rm -f *.o proxytrace2txt_v2  proxy_driver

.cpp.o:
	$(CXX) -c $(CFLAGS) $?

.c.o:
	$(CC) -c $(CCFLAGS) $?

proxytrace2txt_v2: proxytrace2txt_v2.o 
	$(CC) $(CFLAGS) -o $@ proxytrace2txt_v2.o  -lm

SRCS = proxytrace2txt_v2.c proxytrace2txt_v2.h makefile LICENSE 

proxytrace2txt_v2.tar: $(SRCS)
	rm -f proxytrace2txt_v2.tar
	tar cf proxytrace2txt_v2.tar $(SRCS)

proxytrace2txt_v2.tar.gz: proxytrace2txt_v2.tar
	rm -f proxytrace2txt_v2.tar.gz
	gzip proxytrace2txt_v2.tar

proxy_driver: $(CXX_OBJECTS) 
	$(CXX) $(CXXFLAGS) -o $@   $(CXX_OBJECTS) -lm

proxy_stream_v2.tar: $(CXX_CODE)
	rm -f proxy_stream_v2.tar
	tar cf proxy_stream_v2.tar $(CXX_CODE)

proxy_stream_v2.tar.gz: proxy_stream_v2.tar
	rm -f proxy_stream_v2.tar.gz
	gzip proxy_stream_v2.tar

archive: proxytrace2txt_v2.tar.gz proxy_stream_v2.tar.gz
