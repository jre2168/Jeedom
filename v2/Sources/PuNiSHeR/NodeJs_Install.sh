#!/bin/sh

# Mise à jour des Paquets
sudo apt-get update
sudo apt-get install curl build-essential openssl libssl-dev

cd /tmp

# Récupération de la dernière version stable
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-get install -y nodejs

# Vérification de la Version NodeJs
node -v

# Installation NPM
curl -L https://www.npmjs.org/install.sh | sh

# Vérification de la Version NPM
npm -v