# FROM quay.io/toolbx/ubuntu-toolbox:latest
FROM debian:stable
MAINTAINER Arin Lares <arinlares@gmail.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update\ 
&& DEBIAN_FRONTEND=noninteractive apt-get install apt-transport-https gpgv wget -y\ 
&& DEBIAN_FRONTEND=noninteractive wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_11.2.0_all.deb && DEBIAN_FRONTEND=noninteractive dpkg -i kxstudio-repos_11.2.0_all.deb\ 
&& DEBIAN_FRONTEND=noninteractive dpkg --add-architecture i386\ 
&& DEBIAN_FRONTEND=noninteractive apt update
