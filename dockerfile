FROM quay.io/toolbx/ubuntu-toolbox:latest
MAINTAINER Arin Lares <arinlares@gmail.com>

RUN sudo apt-get update
RUN sudo apt-get install apt-transport-https gpgv wget -y
RUN wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_11.1.0_all.deb && dpkg -i kxstudio-repos_11.2.0_all.deb
RUN sudo dpkg --add-architecture i386
RUN sudo apt update
