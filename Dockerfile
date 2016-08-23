FROM ubuntu:12.04

# Easy to update :)
ENV FFMBC FFmbc-0.7-rc8

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main restricted universe multiverse" >> /etc/apt/sources.list
RUN apt-get update -y
RUN apt-get -y -q install curl bzip2 build-essential yasm libx264-dev git
RUN git clone https://github.com/bcoudurier/FFmbc /$FFMBC
RUN cd /$FFMBC && ./configure --enable-gpl --enable-libx264 --enable-nonfree
RUN cd /$FFMBC && make && make install && rm -rf /$FFBMC.tar.bz2 /$FFMBC
