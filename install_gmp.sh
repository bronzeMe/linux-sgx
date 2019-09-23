wget --no-check-certificate https://raw.githubusercontent.com/bronzeMe/tmpstorage/master/gmp-6.1.2.tar.lz
sudo apt-get install lzip
lzip -d gmp-6.1.2.tar.lz
tar -xvf gmp-6.1.2.tar
cd  gmp-6.1.2
./configure --enable-cxx
make
sudo make install
