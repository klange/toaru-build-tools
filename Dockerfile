FROM ubuntu:xenial

RUN apt-get update && \
    apt-get install -y git && \
    apt-get install -y yasm genext2fs build-essential wget libmpfr-dev libmpc-dev libgmp3-dev qemu autoconf automake texinfo pkg-config git ctags gperf

RUN apt-get install -y locales

ADD build/   /opt/build

RUN locale-gen "en_US.UTF-8"

RUN /opt/build/python.sh
RUN /opt/build/git.sh
RUN /opt/build/prepare.sh
RUN /opt/build/build.sh

RUN apt-get install -y grub-pc-bin xorriso
