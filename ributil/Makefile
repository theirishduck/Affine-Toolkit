# $RCSfile: Makefile.unix,v $  $Revision: 1.3 $ $Date: 2000/08/20 02:35:42 $
# 
# Copyright (c) 2000 Thomas E. Burge.  All rights reserved.
# 
# Affine (R) is a registered trademark of Thomas E. Burge
#
# THIS SOFTWARE IS DISTRIBUTED "AS-IS" WITHOUT WARRANTY OF ANY KIND
# AND WITHOUT ANY GUARANTEE OF MERCHANTABILITY OR FITNESS FOR A 
# PARTICULAR PURPOSE.  
#
# In no event shall Thomas E. Burge be liable for any indirect or
# consequential damages or loss of data resulting from use or performance 
# of this software.
# 
# Permission is granted to include compiled versions of this code in
# noncommercially sold software provided the following copyrights and
# notices appear in all software and any related documentation:
#
#                The Affine (R) Libraries and Tools are 
#    Copyright (c) 1995, 1996, 1997, 1998, 1999, 2000 Thomas E. Burge.
#                          All rights reserved.
#        Affine (R) is a registered trademark of Thomas E. Burge.
#
# Also refer to any additional requirements presently set by Pixar 
# in regards to the RenderMan (R) Interface Procedures and Protocol.
#
# Those wishing to distribute this software commercially and those wishing 
# to redistribute the source code must get written permission from the 
# author, Thomas E. Burge.  
#
# Basically for now, I would like folks to get the source code directly 
# from me rather than to have a bunch of different versions circulating
# about.
#
# 
# Affine Toolkit
#
# FILE:  Makefile for Unix systems.  Refer to ../config.mak for 
#        compiler flags that may differ between flavors of Unix.
#
# PROGRAMS/LIBRARIES:  typerib ribbish ribfixer libributil.a 
#
#
#
TOP=..

#Put all the compiler and linker flags in one place:
include ../config.mak

TARGETPATH= ../lib
INCPATHS= -I. -I../include ${ZINC_PATH}
LIBPATHS= -L../lib ${ZLIB_PATH}
LIBS=
HEADERS=

all: ../bin/ribfixer trimtest ../lib/libribattrstore.a attrtest \
	../bin/typerib ../bin/ribbish ../lib/libributil.a       \
	../lib/libribnop.a ../bin/ribbish ../bin/ribobjmod      

clean:
	-rm     ../bin/typerib typerib.o                            \
		../bin/ribbish ribbish.o                            \
		../bin/ribfixer ribfixer.o                          \
		../bin/ribobjmod objmod.o                           \
		../lib/libribnop.a ribnop.o                         \
		../lib/libribtrimstore.a trimstore.o                \
		../lib/libribattrstore.a attrstore.o                \
		../lib/libributil.a                                 \
		trimtest trimtest.o attrtest attrtest.o sconstant.o 

../lib/libributil.a: ../lib/libribhash.a ../lib/libsribw.a ../lib/libribrdr.a
	ar rc ../lib/libributil.a                             \
		../ribhash/hash.o     ../ribhash/constant.o   \
		../ribhash/basistbl.o                         \
		../ribhash/string.o   ../ribhash/errormsg.o   \
		../ribhash/cparams.o  ../ribhash/names.o      \
		../ribhash/tables.o                           \
		../readrib/readrib.o  ../readrib/streamio.o   \
		../readrib/paraml.o   ../readrib/seterror.o   \
		../readrib/vcache.o   ../readrib/readfunc.o   \
		../readrib/hintfunc.o ../readrib/ribfunc.o    \
		../readrib/declare.o  ../readrib/ribtbl.o     \
		../readrib/hinttbl.o  ../readrib/ritable.o    \
		../readrib/error.o                            \
		../sribw/write.o                              \
                ${Z_PATH}/adler32.o  ${Z_PATH}/compress.o \
		${Z_PATH}/crc32.o    ${Z_PATH}/gzio.o     \
		${Z_PATH}/uncompr.o  ${Z_PATH}/deflate.o  \
		${Z_PATH}/trees.o    ${Z_PATH}/zutil.o    \
		${Z_PATH}/inflate.o  ${Z_PATH}/infblock.o \
		${Z_PATH}/inftrees.o ${Z_PATH}/infcodes.o \
		${Z_PATH}/infutil.o  ${Z_PATH}/inffast.o

../lib/libribhash.a: ${RDRHEADERS}
	cd ../ribhash; make -f Makefile; cd ../ributil

../lib/libribrdr.a: ${RDRHEADERS}
	cd ../readrib; make -f Makefile; cd ../ributil

../lib/libsribw.a: ${RDRHEADERS}
	cd ../sribw; make -f Makefile; cd ../ributil

../lib/libribnop.a: ribnop.o
	ar rc ../lib/libribnop.a ribnop.o

../lib/libribtrimstore.a: trimstore.o
	ar rc ../lib/libribtrimstore.a trimstore.o

../lib/libribattrstore.a: attrstore.o
	ar rc ../lib/libribattrstore.a attrstore.o

../lib/libribstore.a: store.o
	ar rc ../lib/libribstore.a store.o

../bin/typerib: typerib.o ../lib/libribhash.a ../lib/libribrdr.a \
	../lib/libributil.a sconstant.o 
	${CC} ${LFLAGS32} -o ../bin/typerib typerib.o ${LIBPATHS} \
	-lributil

# To link with libprman.a (tested with PRMan 3.8d):
#	-L../lib -L${Z_PATH} -L/usr/local/prman/prman/lib \
#	-lribrdr -lsribhash -lprman -lz -lm

# To link with PRMan 3.9's librib.a from /usr/local/prman/ribsrc 
#  you will need to 'cd /usr/local/prman/ribsrc;make procstubs.o'
#  and use the following lines:
#	/usr/local/prman/ribsrc/procstubs.o ${LIBPATHS} \
#	-L../lib -L${Z_PATH} -L/usr/local/prman/ribsrc \
#	-lribrdr -lsribhash -lrib -lz -lm

../bin/ribbish: ribbish.o ../lib/libributil.a ../lib/libribnop.a
	${CC} ${LFLAGS32} -o ../bin/ribbish ribbish.o ${LIBPATHS} \
		-lributil -lribnop

../bin/ribfixer: ribfixer.o \
	../lib/libribattrstore.a ../lib/libribtrimstore.a ../lib/libributil.a
	${CC} ${CFLAGS32} -o ../bin/ribfixer ribfixer.o ${LIBPATHS} \
		-lributil -lribattrstore -lribtrimstore

trimtest: trimtest.o ../lib/libributil.a ../lib/libribtrimstore.a
	${CC} ${LFLAGS32} -o trimtest trimtest.o ${LIBPATHS} \
		-lribtrimstore -lributil

attrtest: attrtest.o ../lib/libributil.a ../lib/libribattrstore.a
	${CC} ${LFLAGS32} -o attrtest attrtest.o ${LIBPATHS} \
		-lribattrstore -lributil

../bin/ribobjmod: objmod.o ../lib/libributil.a ../lib/libribnop.a
	${CC} ${LFLAGS32} -o ../bin/ribobjmod objmod.o ${LIBPATHS} \
		-lributil -lribnop

ribnop.o: ribnop.c ../include/ribnop.h
