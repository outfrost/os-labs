#!/bin/sh

mkdir -p 'test/img/test/depth'

cd test/

touch 'A'
touch 'A~'
touch 'A~~'
touch '~B'
touch 'C~'
touch 'D 1~'

dd if=/dev/urandom of='img/1.jpg' bs=8 count=32 status=none
dd if=/dev/urandom of='img/2.gif' bs=8 count=7 status=none
dd if=/dev/urandom of='img/test/3.gif' bs=8 count=5 status=none
dd if=/dev/urandom of='img/test/depth/4.jpg' bs=8 count=3 status=none
dd if=/dev/urandom of='5.gif' bs=8 count=40 status=none
dd if=/dev/urandom of='img/6.jpg' bs=8 count=2 status=none
dd if=/dev/urandom of='img/7.gif' bs=8 count=4 status=none
dd if=/dev/urandom of='img/8.jpg' bs=8 count=24 status=none
dd if=/dev/urandom of='img/test/9.jpg' bs=8 count=1 status=none
dd if=/dev/urandom of='img/test/depth/10.gif' bs=8 count=7 status=none
dd if=/dev/urandom of='11.jpg' bs=8 count=4 status=none
dd if=/dev/urandom of='12.jpg' bs=8 count=16 status=none
touch 'img/ab.txt'
