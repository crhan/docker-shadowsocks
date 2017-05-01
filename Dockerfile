# shadowsocks
#
# VERSION 0.0.3

FROM hypriot/rpi-python:2.7
MAINTAINER Dariel Dato-on <oddrationale@gmail.com>
MAINTAINER Ruohan Chen <crhan123@gmail.com>

RUN apt-get update && \
    apt-get install -y python-pip libsodium18
RUN pip install shadowsocks==2.8.2 -i https://pypi.doubanio.com/simple/

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/ssserver"]
