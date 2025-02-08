#
#       Makefile
#
###
#
#  Copyright (c) 1994 - 99	David Albert Bagley, bagleyd@tux.org
#
#                   All Rights Reserved
#
#  Permission to use, copy, modify, and distribute this software and
#  its documentation for any purpose and without fee is hereby granted,
#  provided that the above copyright notice appear in all copies and
#  that both that copyright notice and this permission notice appear in
#  supporting documentation, and that the name of the author not be
#  used in advertising or publicity pertaining to distribution of the
#  software without specific, written prior permission.
#
#  This program is distributed in the hope that it will be "useful",
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#

# if this fails to build one may have to edit the individual Imakefiles
# especially if your OS does not have srand48() and drand48().
# Also install the appropriate Puzzle.ad file in $HOME or where ever you
# normally  put these preferences.
# Please consult the individual README's.

# After ftping all the *.tar.gz files you want (each program is independent)
#	make -f xpuzzles.Makefile gunzip  #  this step may not be necessary
#         depending on how it was packaged, also it destroys original gz files
#	make -f xpuzzles.Makefile configure
#	make -f xpuzzles.Makefile
#	make -f xpuzzles.Makefile run     # this cycles through all programs
#	make -f xpuzzles.Makefile run.xm  # this cycles through all motif programs
#	make -f xpuzzles.Makefile install # if you like them

#SHELL=/bin/sh

XLOCK=more
#STUFF=abacus dial threed
ROTATIONAL=rubik skewb dino pyraminx oct mball
SLIDING=cubes triangles hexagons panex mlink
PUZZLES=${ROTATIONAL} ${SLIDING} ${STUFF}
ALTRIS=tetris tertris hextris welltris

#PRE=xlock
#NAME=xlockmore.
PRE=x
NAME=xpuzzles.
#NAME=xabacus.
#PRE=al
#NAME=altris.
NAME_TRUNC=`echo ${NAME} | cut -c1-8`.
#VER=
VER=-5.5
PROGRAMS=${PUZZLES}

# Used by me to zip and write and read from my floppy drive
UNIXDIR=./net
MOUNT=eject -q floppy
#MOUNT=mntflop -d
UMOUNT=eject -p floppy
#UMOUNT=mntflop -u ; if [ -x /usr/bin/eject ]; then ; /usr/bin/eject -p floppy; fi
#DOSDIR=/dosa
DOSDIR=/floppy/floppy0
# Solaris, and Linux.  If there is interest, I will make it publicly available.
# If there is something out there already, let me know.

all :
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			cd ${PRE}$${i};\
			make;\
			cd ..;\
		fi;\
	done

all.xm :
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			cd ${PRE}$${i};\
			make all.xm;\
			cd ..;\
		fi;\
	done

autoconf :
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			cd ${PRE}$${i};\
			make -f Makefile.in distclean;\
			autoconf;\
			cd ..;\
		fi;\
	done

configure :
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			cd ${PRE}$${i};\
			make -f Makefile.in distclean;\
			configure;\
			cd ..;\
		fi;\
	done

xmkmf :
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			make -f Makefile.in distclean;\
			cd ${PRE}$${i};\
			xmkmf;\
			cd ..;\
		fi;\
	done

lint :
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			cd ${PRE}$${i};\
			make lint;\
			cd ..;\
		fi;\
	done

indent :
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			cd ${PRE}$${i};\
			make indent;\
			cd ..;\
		fi;\
	done

indentcheck :
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			cd ${PRE}$${i};\
			ls -al *.c *.c~ *.h *.h~;\
			cd ..;\
		fi;\
	done
run :
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			cd ${PRE}$${i};\
			./${PRE}$${i};\
			cd ..;\
		fi;\
	done

run.xm :
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			cd ${PRE}$${i};\
			./xm$${i};\
			cd ..;\
		fi;\
	done

clean :
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			cd ${PRE}$${i};\
			make -f Makefile.in clean;\
			cd ..;\
		fi;\
	done

distclean :
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			cd ${PRE}$${i};\
			make -f Makefile.in distclean;\
			cd ..;\
		fi;\
	done

clean.all : distclean

tar :
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			cd ${PRE}$${i};\
			make -f Makefile.in tar;\
			cd ..;\
		fi;\
	done

compress :
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			cd ${PRE}$${i};\
			mv junk linux solaris ..;\
			make -f Makefile.in compress;\
			mv ../junk ../linux ../solaris .;\
			cd ..;\
		fi;\
	done;\
	cp ${NAME}Makefile ${UNIXDIR}/${NAME}Makefile;\
	cp ${NAME}README ${UNIXDIR}/${NAME}README;\
	cp ${NAME}lsm ${UNIXDIR}/${NAME}lsm

gzip :
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			cd ${PRE}$${i};\
			mv junk linux solaris ..;\
			make -f Makefile.in gzip;\
			mv ../junk ../linux ../solaris .;\
			cd ..;\
			mv ${PRE}$${i}.tar.gz ${UNIXDIR};\
		fi;\
	done;\
	cp ${NAME}Makefile ${UNIXDIR}/${NAME}Makefile;\
	cp ${NAME}README ${UNIXDIR}/${NAME}README;\
	cp ${NAME}lsm ${UNIXDIR}/${NAME}lsm

dostgz :
	${MOUNT};\
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			cd ${PRE}$${i};\
			mv linux solaris ..;\
			make -f Makefile.in tgz;\
			mv ../linux ../solaris .;\
			cd ..;\
			cp `echo ${PRE}$${i} | cut -c1-8`.tgz ${DOSDIR};\
		if [ -w ${DOSDIR}/`echo ${PRE}$${i} | cut -c1-8`.tgz ]; then\
				rm -f `echo ${PRE}$${i} | cut -c1-8`.tgz;\
			fi;\
		fi;\
	done;\
	cp ${NAME}Makefile ${DOSDIR}/${NAME_TRUNC}mak;\
	${UMOUNT};\

#	cp ${NAME}README ${DOSDIR}/${NAME_TRUNC}rea

unixtgz :
	if [ -f *.tgz ]; then\
		echo "\"`echo *.tgz`\" already exists, stopping...";\
	else\
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			cd ${PRE}$${i};\
			mv linux solaris ..;\
			make -f Makefile.in tgz;\
			mv ../linux ../solaris .;\
			cd ..;\
		fi;\
	done;\
	DEVICE=/dev/fd0;\
	OS=`uname`;\
	if [ "$${OS}" = "SunOS" ]; then\
		eject -q 2> /tmp/dev$$;\
		DEVICE=`cat /tmp/dev$$ | cut -f1 -d' '`;\
		rm -f /tmp/dev$$;\
	fi;\
	tar cvf $${DEVICE} *.tgz ${NAME}Makefile ${NAME}README ${NAME}lsm;\
	rm -f *.tgz;\
	if [ "$${OS}" = "SunOS" ]; then\
		eject -p;\
	fi;\
	fi

utar :
	for i in ${PROGRAMS}; do\
		tar xvf ${PRE}$${i}.tar;\
		rm -f ${PRE}$${i}.tar;\
	done

uncompress :
	for i in ${PROGRAMS}; do\
		uncompress ${PRE}$${i}.tar.Z;\
		tar xvf ${PRE}$${i}.tar;\
		rm -f ${PRE}$${i}.tar;\
	done

gunzip :
	for i in ${PROGRAMS}; do\
		gunzip ${PRE}$${i}${VER}.tar.gz;\
		tar xvf ${PRE}$${i}${VER}.tar;\
		rm -f ${PRE}$${i}${VER}.tar;\
	done

utgz :
	for i in ${PROGRAMS}; do\
		if [ -r `echo ${PRE}$${i} | cut -c1-8`.tgz ]; then\
			gunzip -f `echo ${PRE}$${i} | cut -c1-8`.tgz;\
			tar xvf `echo ${PRE}$${i} | cut -c1-8`.tar;\
			rm -f `echo ${PRE}$${i} | cut -c1-8`.tar;\
		fi;\
	done

dosextract :
	${MOUNT};\
	for i in ${PROGRAMS}; do\
		FILEPRE=`echo ${PRE}$${i} | cut -c1-8`;\
		UPFILEPRE=`echo $${FILEPRE} | tr "[:lower:]" "[:upper:]"`;\
		if [ -r ${DOSDIR}/$${UPFILEPRE}.TGZ ]; then\
			cp ${DOSDIR}/$${UPFILEPRE}.TGZ $${FILEPRE}.tgz;\
		fi;\
		if [ -r ${DOSDIR}/$${FILEPRE}.tgz ]; then\
			cp ${DOSDIR}/$${FILEPRE}.tgz .;\
		fi;\
	done;\
	UPNAME_TRUNC=`echo $${NAME_TRUNC} | tr "[:lower:]" "[:upper:]"`;\
	if [ -r ${DOSDIR}/$${UPNAME_TRUNC}MAK ]; then\
		cp ${DOSDIR}/$${UPNAME_TRUNC}MAK ${NAME}Makefile;\
	fi;\
	if [ -r ${DOSDIR}/${NAME_TRUNC}mak ]; then\
		cp ${DOSDIR}/${NAME_TRUNC}mak ${NAME}Makefile;\
	fi;\
	chmod 600 ${NAME}Makefile;\
	${UMOUNT};\

#	cp ${DOSDIR}/${NAME_TRUNC}rea ${NAME}README;\
#	chmod 600 ${NAME}README

unixextract :
	if [ -f *.tgz ]; then\
		echo "\"`echo *.tgz`\" already exists, continuing...";\
	fi;\
	DEVICE=/dev/fd0;\
	OS=`uname`;\
	if [ "$${OS}" = "SunOS" ]; then\
		eject -q 2> /tmp/dev$$;\
		DEVICE=`cat /tmp/dev$$ | cut -f1 -d' '`;\
		rm -f /tmp/dev$$;\
	fi;\
	tar xvf $${DEVICE} *.tgz ${NAME}Makefile ${NAME}README ${NAME}lsm;\
	if [ "$${OS}" = "SunOS" ]; then\
		eject -p;\
	fi

read :
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			cd ${PRE}$${i};\
			more README;\
			cd ..;\
		fi;\
	done

man :
	for i in ${PROGRAMS}; do\
		if [ -d ${PRE}$${i} ]; then\
			cd ${PRE}$${i};\
			nroff -man ${PRE}$${i}.man | more;\
			cd ..;\
		fi;\
	done
	
#print :

#install :
