#!/bin/bash

# Start the web server
echo "Starting the web server..."
sudo systemctl start nginx

# Optional: Verify the service is running
if systemctl is-active --quiet nginx; then
  echo "Nginx started successfully."
else
  echo "Failed to start Nginx."
  exit 1
fi
