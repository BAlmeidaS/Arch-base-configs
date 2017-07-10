#!/bin/bash

wget https://archive.archlinux.org/packages/o/openssl/openssl-1.0.2.k-1-x86_64.pkg.tar.xz

mkdir /tmp/openssl-1.0.2.k
tar -xf openssl-1.0.2.k-1-x86_64.pkg.tar.xz -C /tmp/openssl-1.0.2.k

rm -f openssl-1.0.2.k-1-x86_64.pkg.tar.xz

### EXAMPLE WITH DOWNGRADE OPENSSL AND GCC ###
# CC=/usr/bin/gcc-5 RUBY_CONFIGURE_OPTS=--with-openssl-dir=/tmp/openssl-1.0.2.k/usr rbenv install 2.3.3 #

