export CC=clang
if [[ ! -f gnucobol-3.0-rc1.tar.gz ]]
then
    wget http://sourceforge.net/projects/open-cobol/files/gnu-cobol/3.0/gnucobol-3.0-rc1.tar.gz
fi

rm -rf gnucobol-3.0-rc1
tar xvf gnucobol-3.0-rc1.tar.gz
#TODO Add checksum
cd gnucobol-3.0-rc1
./configure --with-db=false
make clean
make
# make check
make install
ldconfig