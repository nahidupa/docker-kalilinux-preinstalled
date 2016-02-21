FROM kalilinux/kali-linux-docker
MAINTAINER nahidul kibria <nahidupa@gmail.com>

RUN apt-get update\
  && apt-get install --assume-yes nmap netcat\
  sqlmap whatweb wpscan BeEF fimap dotdotpwn recon-ng\ 
  && apt-get clean
