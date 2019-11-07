FROM kalilinux/kali-rolling

COPY config.ovpn /home/config.ovpn

WORKDIR /home/

RUN apt update -y && apt install wget -y \
    && apt-get -y install openvpn \ 
    && mkdir -p /dev/net \ 
    && mknod /dev/net/tun c 10 200 \
    && apt install net-tools -y \
    && apt install iputils-ping -y

# RUN openvpn --daemon /home/asuha.ovpn

USER root