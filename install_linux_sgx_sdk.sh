#(install sgx_sdk
wget wget --no-check-certificate https://codeload.github.com/intel/linux-sgx/zip/sgx_2.4
mv sgx_2.4 sgx_2.4.zip
sudo apt-get install unzip
unzip sgx_2.4.zip
cd linux-sgx-sgx_2.4/
sudo apt-get install build-essential ocaml automake autoconf libtool wget python libssl-dev
sudo apt-get install libssl-dev libcurl4-openssl-dev protobuf-compiler libprotobuf-dev debhelper cmake
# scp yuns1@10.2.0.4:/home/yuns1/linux_sgx_package/linux-sgx-sgx_2.4/download_prebuilt.sh ./
./download_prebuilt.sh
make DEBUG=1

