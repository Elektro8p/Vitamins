#!/bin/bash

# Public Key for Freyja

cd ~
mkdir .ssh
cd .ssh
echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCknqqwmx8Mu7OJiHj6nYMDV8z6wW6YFdIgEu1IbwbyTx1oc3Bv2IwghrJwszMZaFjoyD9dTcg0Nj49rjX+Kr7Z1Gz4TpymFHlWWfT0fotDawG4VFfFh2FBfqdoGK+hPYKe+hGM5QDvEmbbYS0vFL/GaqR8vTIWS7JEmXe/gQfybcn8WKhXLuILgUKqhXk9NLFnivlpjHt6ueggE7CjJptF5dAfB8/3m69GsIu/sFTX9wYO75bksn2215aGU31l/0n43u5ZTvzvdu7jiSWpbUNCQwKygDZF6wNES3rVseE5WyVzXXexg5QO/BNmxVCx0DecqqjPnJzz0GKqIzTmQ4SX Philip@Freyja.local > authorized_keys
chmod 600 authorized_keys

# update all
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get autoremove

# Make it easy to find on a network

sudo apt-get install netatalk -y


# Config
sudo raspi-config

