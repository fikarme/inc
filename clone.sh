#!/bin/bash

rm -rf inc
rm -rf data

git clone https://github.com/fikarme/inc.git

chmod -R 777 inc

cd inc

make
