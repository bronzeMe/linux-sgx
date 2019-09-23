#(1) install openssl 1.1.0i
sudo apt-get update
sudo apt-get install make gcc
sudo apt-get install git gcc gcc-c++ make automake autoconf libtool pcre pcre-devel zlib zlib-devel 

sudo apt-get remove openssl
wget --no-check-certificate https://raw.githubusercontent.com/bronzeMe/tmpstorage/master/openssl-1.1.0i.tar.gz
tar zxf openssl-1.1.0i.tar.gz
cd openssl-1.1.0i/
sudo ./config shared --prefix=/usr/local/openssl --openssldir=/usr/lib/openssl

make
sudo make install

#edit ~/.bashrc add export PATH=$PATH:/usr/local/openssl/bin
sed -i -e '$a export PATH=$PATH:/usr/local/openssl/bin' ~/.bashrc
source ~/.bashrc

sudo ln -s /usr/local/openssl/lib/libssl.so.1.1 /usr/lib/libssl.so.1.1
sudo ln -s /usr/local/openssl/lib/libcrypto.so.1.1 /usr/lib/libcrypto.so.1.1
