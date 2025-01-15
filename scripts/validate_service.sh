#!/bin/bash

# Check if the web server is running
echo "Validating the service..."
if curl -s http://localhost | grep "Welcome"; then
  echo "Validation successful: Service is running as expected."
else
  echo "Validation failed: Service is not running correctly."
  exit 1
fi
