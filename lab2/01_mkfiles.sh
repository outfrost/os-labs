#!/bin/sh

rm -rf lab2/
mkdir lab2
cd lab2/

mkdir -p a/b/c
mkdir -p a/d

echo "test1" > a/b/c/plik1
echo "test2" > a/b/c/plik2
echo "testA" > a/d/plikA
echo "testB" > a/d/plikB

mkdir -p e

ln -s ../a/b/c/plik1 e/link_plik1
ln -s $(pwd)/a/b/c/plik1 e/link_plik1_bez
ln -s $(pwd)/a/b/c/plik2 e/link_plik2_bez
ln -s ../a/d/plikA e/link_plikA
ln -s $(pwd)/a/d/plikB e/link_plikB_bez
ln -s ../a e/link_do_a
