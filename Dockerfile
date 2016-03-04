FROM kalilinux/kali-linux-docker
MAINTAINER nahidul kibria <nahidupa@gmail.com>
#python-httplib2 fimap dependency
#libswitch-perl  dotdotpwn dependency

RUN apt-get update\
  && apt-get install --assume-yes nmap netcat\
  sqlmap whatweb wpscan beef fimap dotdotpwn recon-ng\ 
  python-httplib2\  
  libswitch-perl\  
  && apt-get clean
  
//Can't locate LWP/UserAgent.pm in @INC ... dotdotpwn
WORKDIR /tmp
RUN wget http://www.cpan.org/modules/by-module/LWP/libwww-perl-5.837.tar.gz
RUN tar xvzf libwww-perl-5.837.tar.gz
WORKDIR /tmp/libwww-perl-5.837
RUN perl Makefile.PL
RUN make
RUN make install
