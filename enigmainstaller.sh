#!/bin/bash
# Prompt for license key
read -p "Enter license key: " license_key
# Check if the license key is valid
if [ "$license_key" == "RAIN" ]; then
  echo "License key is valid."
  # Install Node.js and Yarn
  sudo mkdir -p /etc/apt/keyrings
  curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor >
  echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.>
  sudo apt update
  apt install nodejs -y
  npm i -g yarn
  # Run build process
  yarn
  yarn build:production
  echo "Installation complete!"
else
  echo "Invalid license key."
fi
