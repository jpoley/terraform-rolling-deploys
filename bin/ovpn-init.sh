#!/bin/bash
OVPN_DATA="ovpn-data"
ssh -t ec2-user@$(terraform output nat.ip) sudo docker run --volumes-from $OVPN_DATA --rm kylemanna/openvpn ovpn_genconfig -u udp://$(terraform output nat.ip)
ssh -t ec2-user@$(terraform output nat.ip) sudo docker run --volumes-from $OVPN_DATA --rm -it kylemanna/openvpn ovpn_initpki
