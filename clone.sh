#!/bin/bash

cd ..

rm -rf inc
rm -rf data

git clone https://github.com/fikarme/inc.git

chmod -R 777 inc
mkdir data
chmod -R 777 data

cd inc

make
