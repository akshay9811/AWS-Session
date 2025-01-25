#!/bin/bash

#####################################################
#Author: Akshay
#Date: 1/26/2025
#This file can be used for deployment directly. Just run this file after clonning the repositry
####################################################

#to update the system
sudo apt update

#to install node js
sudo apt install nodejs -y 

#to install npm 
sudo apt install npm -y

# Creating an env file
touch .env

cat << EOF >> .env
DOMAIN= "http://localhost:3000"
PORT=3000
STATIC_DIR="./client"

PUBLISHABLE_KEY="pk_test_51QgKFkD1b3lhGsddDRynkA3EbIpfGoNf580R0orVe8MbjkqOyWPdgQJIuKuOWHAapaWtQW59REtg9Vnx00CTtY8H00HjYf7yoL"
SECRET_KEY="sk_test_51QgKFkD1b3lhGsddu7CAl4ZYhUHEgzbwo17Rv8UUaRDXpjN4Kb5ECTblONcHLy4CbZlieAFrUrC73xinJxTwGOuS00JEcOY223"
EOF

npm install
npm run start

echo "Your application has been deployed"
