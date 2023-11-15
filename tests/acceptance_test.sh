#!/bin/bash

# Define the URL to test, here it is local port 8080
URL_TO_TEST="http://localhost:8080"

# Create an Artillery configuration file
CONFIG_FILE="artillery_test.yml"

# Write the configuration to the file
cat > $CONFIG_FILE <<EOL
config:
  target: "$URL_TO_TEST"
  phases:
    - duration: 60
      arrivalRate: 10

scenarios:
  - flow:
      - get:
          url: "/"
EOL

# Run Artillery with the configuration
artillery run $CONFIG_FILE

# Optionally, you can check the exit code to see if the test ran successfully
if [ $? -eq 0 ]; then
    echo "Artillery test executed successfully."
else
    echo "Artillery test failed."
fi
