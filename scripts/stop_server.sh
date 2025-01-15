#!/bin/bash

# Stop the web server (example: Nginx or Apache)
echo "Stopping the web server..."
sudo systemctl stop nginx || echo "Nginx is not running."

# Optional: Check the process is stopped
if pgrep nginx > /dev/null; then
  echo "Failed to stop Nginx."
  exit 1
else
  echo "Nginx stopped successfully."
fi
