# FROM quay.io/toolbx/ubuntu-toolbox:latest
FROM debian:stable
MAINTAINER Arin Lares <arinlares@gmail.com>
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update\
&&  apt-get install apt-transport-https gpgv wget -y\
&&  wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_11.2.0_all.deb && DEBIAN_FRONTEND=noninteractive dpkg -i kxstudio-repos_11.2.0_all.deb \
&&  dpkg --add-architecture i386 \
&&  apt-get update
