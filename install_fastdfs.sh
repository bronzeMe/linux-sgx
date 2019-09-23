#(2) install fastdfs
#(2.1) install libfastscommon
mkdir fastdfs_package
cd fastdfs_package
git clone https://github.com/happyfish100/libfastcommon.git --depth 1
cd libfastcommon/
./make.sh
sudo ./make.sh install
#(2.2) install fastdfs
cd ..
git clone https://github.com/happyfish100/fastdfs.git --depth 1
cd fastdfs
./make.sh
sudo ./make.sh install
sudo cp /etc/fdfs/tracker.conf.sample /etc/fdfs/tracker.conf
sudo cp /etc/fdfs/storage.conf.sample /etc/fdfs/storage.conf
sudo cp /etc/fdfs/client.conf.sample /etc/fdfs/client.conf
sudo cp conf/http.conf /etc/fdfs/
sudo cp conf/mime.types /etc/fdfs/

#(2.3) install fastdfs-nginx-module
cd ..
git clone https://github.com/happyfish100/fastdfs-nginx-module.git --depth 1
sudo cp fastdfs-nginx-module/src/mod_fastdfs.conf /etc/fdfs/
#(2.4) install nginx
wget http://nginx.org/download/nginx-1.15.4.tar.gz
tar -zxvf nginx-1.15.4.tar.gz
cd nginx-1.15.4
sudo apt-get install libpcre3 libpcre3-dev
sudo apt-get install zlib1g-dev
#sudo apt-cache search pcre
./configure --add-module=$HOME/fastdfs_package/fastdfs-nginx-module/src/ 
make
sudo make install

