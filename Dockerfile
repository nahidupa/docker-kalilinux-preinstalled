FROM kalilinux/kali-linux-docker
MAINTAINER nahidul kibria <nahidupa@gmail.com>

RUN apt-get update\
  && apt-get install --assume-yes nmap nc\
  sqlmap whatweb\ 
  && apt-get clean
