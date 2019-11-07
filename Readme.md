This repository describes a docker image that has the required configuration to establish a VPN connection with [hack the box](https://www.hackthebox.eu/).

# How to run

1. Get the *.ovpn* config file and copy it into this repository with name *config.ovpn*
2. Build the image:
    ```
    docker build -t hackthebox .
    ```
3. Start the container using the following command:
    ```
    docker run -it --privileged --rm --sysctl net.ipv6.conf.all.disable_ipv6=0 hackthebox
    ```
4. Once in the machine, start the VPN tunnel in the backgroud:
    ```
    openvpn config.ovpn &
    ```
5. Have fun