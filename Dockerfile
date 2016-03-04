FROM kalilinux/kali-linux-docker
MAINTAINER nahidul kibria <nahidupa@gmail.com>
ENV TERM xterm
#python-httplib2 fimap dependency
#libswitch-perl  dotdotpwn dependency

RUN apt-get update\
  && apt-get install --assume-yes nmap netcat\
  sqlmap whatweb wpscan beef fimap dotdotpwn recon-ng nano sqlmap\ 
  python-httplib2\  
  libswitch-perl\  
  && apt-get clean
