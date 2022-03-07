docker run --name openvpn-test -v $(pwd)/data:/etc/openvpn --hostname openvpn -d -p 1194:1194/udp --network vpn --cap-add=NET_ADMIN kylemanna/openvpn
