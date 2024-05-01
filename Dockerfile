# FROM quay.io/toolbx/ubuntu-toolbox:latest
FROM debian:stable
MAINTAINER Arin Lares <arinlares@gmail.com>

RUN apt-get update 
RUN apt-get install apt-transport-https gpgv wget -y
RUN wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_11.2.0_all.deb && dpkg -i kxstudio-repos_11.2.0_all.deb
RUN dpkg --add-architecture i386
RUN apt update
