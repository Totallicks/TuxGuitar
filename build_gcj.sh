#!/bin/bash
##SCRIPT DIR
DIR_NAME=`dirname "$0"`
DIR_NAME=`cd "$DIR_NAME"; pwd`

cd ${DIR_NAME}

export PREFIX=./
export SWT_PATH=${DIR_NAME}/TuxGuitar/lib/swt.jar
export TG_PREFIX=${DIR_NAME}/tuxguitar-1.2-linux-x86-gcj/
export TG_SOURCE_PATH=${DIR_NAME}/TuxGuitar/src/
export GCJFLAGS="-fsource=1.4 -fPIC"

make -C TuxGuitar/
make -C TuxGuitar/ install DESTDIR=${TG_PREFIX}
make -C TuxGuitar/ clean

make -C TuxGuitar-alsa/
make -C TuxGuitar-alsa/ install
make -C TuxGuitar-alsa/ clean

make -C TuxGuitar-fluidsynth/
make -C TuxGuitar-fluidsynth/ install
make -C TuxGuitar-fluidsynth/ clean

make -C TuxGuitar-jack/
make -C TuxGuitar-jack/ install
make -C TuxGuitar-jack/ clean

make -C TuxGuitar-oss/
make -C TuxGuitar-oss/ install
make -C TuxGuitar-oss/ clean

make -C TuxGuitar-compat/
make -C TuxGuitar-compat/ install
make -C TuxGuitar-compat/ clean

make -C TuxGuitar-gtp/
make -C TuxGuitar-gtp/ install
make -C TuxGuitar-gtp/ clean

make -C TuxGuitar-ptb/
make -C TuxGuitar-ptb/ install
make -C TuxGuitar-ptb/ clean

make -C TuxGuitar-tef/
make -C TuxGuitar-tef/ install
make -C TuxGuitar-tef/ clean

make -C TuxGuitar-midi/
make -C TuxGuitar-midi/ install
make -C TuxGuitar-midi/ clean

make -C TuxGuitar-lilypond/
make -C TuxGuitar-lilypond/ install
make -C TuxGuitar-lilypond/ clean

make -C TuxGuitar-musicxml/
make -C TuxGuitar-musicxml/ install
make -C TuxGuitar-musicxml/ clean

make -C TuxGuitar-ascii/
make -C TuxGuitar-ascii/ install
make -C TuxGuitar-ascii/ clean

make -C TuxGuitar-converter/
make -C TuxGuitar-converter/ install
make -C TuxGuitar-converter/ clean

make -C TuxGuitar-tray/
make -C TuxGuitar-tray/ install
make -C TuxGuitar-tray/ clean

make -C TuxGuitar-community/
make -C TuxGuitar-community/ install
make -C TuxGuitar-community/ clean
