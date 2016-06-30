from centos:latest

RUN yum -y install zlib-devel libuuid-devel libmnl-devel gcc make git autoconf autogen automake pkgconfig curl jq nodejs

RUN git clone https://github.com/firehol/netdata.git --depth=1; cd netdata; ./netdata-installer.sh

CMD /usr/sbin/netdata

EXPOSE 19999
