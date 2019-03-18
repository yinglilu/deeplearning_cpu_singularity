#!/bin/bash
sudo apt-get update &&  sudo apt-get install -y \
    wget git \
    build-essential \
    squashfs-tools \
    libtool \
    autotools-dev \
    libarchive-dev \
    automake \
    autoconf \
    uuid-dev \
    libssl-dev


#Install Singularity
#sudo apt-get install singularity-container
cd /tmp && \
    git clone -b vault/release-2.5 https://www.github.com/sylabs/singularity.git
    cd singularity && \
    ./autogen.sh && \
    ./configure --prefix=/usr/local  && \
    make && sudo make install
