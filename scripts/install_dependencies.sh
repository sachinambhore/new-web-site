#!/bin/bash

echo "Installing application dependencies..."

# Update package manager
sudo apt update -y

# Install dependencies (example: Node.js, Python, etc.)
sudo apt install -y nginx

# Optional: Install app-specific dependencies
if [ -f /var/www/html/package.json ]; then
  cd /var/www/html
  npm install
fi

echo "Dependencies installed successfully."
