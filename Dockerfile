# FROM quay.io/toolbx/ubuntu-toolbox:latest
FROM debian:stable
MAINTAINER Arin Lares <arinlares@gmail.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update\ 
&& apt-get install apt-transport-https gpgv wget -y\ 
&& wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_11.2.0_all.deb && dpkg -i kxstudio-repos_11.2.0_all.deb\ 
&& dpkg --add-architecture i386\ 
&& apt update
