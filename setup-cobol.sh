#!/bin/sh
#run as root
apt-get update
#install ncurses-dev for good measure
apt-get install -y ncurses-dev
#check ncurses- should show installations
echo "Check ncurses installed"
apt search ncurses | grep "installed"
#install prerequisites
apt-get install -y gcc libgmp3-dev libdb-dev make
#install gnucobol2
wget https://vorboss.dl.sourceforge.net/project/open-cobol/gnu-cobol/2.2/gnucobol-2.2.tar.gz
tar -xvzf gnucobol-2.2.tar.gz
cd gnucobol-2.2
./configure --with-curses=check --prefix=/usr/local CPPFLAGS=-I/usr/local/include/ LDFLAGS=-L/usr/local/lib
make
make install
#likes ldconfig
ldconfig
#check
echo
cobc --version
