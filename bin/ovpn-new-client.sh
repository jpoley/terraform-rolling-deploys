#!/bin/bash
OVPN_DATA="ovpn-data"
ssh -t ec2-user@$(terraform output nat.ip) sudo docker run --volumes-from $OVPN_DATA --rm -it kylemanna/openvpn easyrsa build-client-full "${1}" nopass
