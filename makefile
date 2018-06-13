SOURCE= reftorgb.cpp 

OBJECT= reftorgb.o 

#CFLAG=-g -fopenmp -m64 -O2
CC=g++
CFLAG= -O2  -g -lfreeimage -lfreeimageplus  -lgdal

INCLUDE=-I. -I/gpfs2/MODIS/LIB/FreeImage3170/FreeImage/Dist -I/gpfs2/MODIS/LIB/include
LIBPATH=-L. -L/gpfs2/MODIS/LIB/FreeImage3170/FreeImage/Dist -L/gpfs2/MODIS/LIB/lib


all: clean $(OBJECT) reftorgb

reftorgb.o:reftorgb.cpp
	#$(CC) $(CFLAG) $(INCLUDE) -c reftorgb.cpp  $(OBJECT) $(LIBPATH)
	$(CC) $(CFLAG) $(INCLUDE) -c reftorgb.cpp  $(LIBPATH)

reftorgb:$(OBJECT)
	$(CC)  $(OBJECT) -o reftorgb  $(INCLUDE) $(LIBPATH) $(CFLAG)
	#$(CC) $(OBJECT) -o reftorgb $(LIBPATH)

clean:
	rm -rf *.o reftorgb
