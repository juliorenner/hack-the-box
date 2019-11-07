FROM kalilinux/kali-rolling

COPY config.ovpn /home/config.ovpn

WORKDIR /home/

RUN apt update -y && apt install wget -y \
    && apt dist-upgrade -y && apt autoremove -y && apt clean -y \
    && apt-get -y install openvpn \ 
    && mkdir -p /dev/net \ 
    && mknod /dev/net/tun c 10 200 \
    && apt install net-tools -y \
    && apt install iputils-ping -y

USER root