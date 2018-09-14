FROM debian:testing

RUN apt-get -y update
RUN apt-get -y install build-essential make gcc gdb flex bison valgrind
RUN useradd -s /bin/bash --create-home user
USER user
WORKDIR /home/user
