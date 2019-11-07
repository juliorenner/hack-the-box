This repository describes a docker image that has the required configuration to establish a VPN connection with <a href="https://www.hackthebox.eu/" target="_blank">hack the box</a>.

# How to run

1. Get the *.ovpn* config file and copy it into this repository with name *config.ovpn*
2. Build the image:
    ```
    docker build -t hackthebox .
    ```
3. Start the container using the following command:
    ```
    docker run -it --privileged --sysctl net.ipv6.conf.all.disable_ipv6=0 hackthebox
    ```
4. Install kali tools in the container:
    ```
    apt install kali-linux-top10 -y
    ```
5. Wireshark will request a configuration option. Choose what fits best to you.
6. Once in the machine, start the VPN tunnel in the backgroud:
    ```
    openvpn config.ovpn &
    ```
7. Have fun! :)