#! /bin/bash

mkdir build
cd build
# cmake -j 4 ..
cmake  ..
sudo env "PATH=$PATH" make install
cd ..
sudo rm -r build
sudo chown -R $USER docs
sudo ldconfig
#  for macOS
# sudo update_dyld_shared_cache