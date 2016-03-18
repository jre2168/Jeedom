#!/bin/sh
#
# Exécuter le Script en root
#
# Mise à jour des Paquets
apt-get update
apt-get install sudo locales curl build-essential

cd /tmp

# Récupération de la dernière version stable
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
apt-get install -y nodejs

ln -s /usr/local/nodejs /usr/bin/node

# Vérification de la Version NodeJs
node -v

# Installation NPM
curl -L https://www.npmjs.org/install.sh | sh

# Vérification de la Version NPM
npm -v
