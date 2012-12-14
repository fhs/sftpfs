</$objtype/mkfile

TARG=\
	sftpfs\

OFILES=\
	fxp.$O\
	util.$O\
	map.$O\
	sftpfs.$O\

HFILES=\
	fxp.h\

BIN=/$objtype/bin

</sys/src/cmd/mkone

install:V:
	cp $TARG.man /sys/man/4/$TARG

dist:V:
	mk nuke
	@{cd ..; tar cv sftpfs | bzip2 > /n/sources/contrib/steve/sftpfs.tbz }
