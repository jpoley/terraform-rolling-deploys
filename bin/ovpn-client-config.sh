#!/bin/bash
OVPN_DATA="ovpn-data"
ssh -t ec2-user@$(terraform output nat.ip) sudo docker run --volumes-from $OVPN_DATA --rm kylemanna/openvpn ovpn_getclient "${1}" > "${1}.ovpn"
