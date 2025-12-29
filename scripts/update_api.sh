#!/bin/bash

# Define the URL and Output Path
URL="http://localhost:3400/v1/api-json"
OUTPUT_FILE="lib/swagger/swagger_specs/swagger.json"

# Create directory if it doesn't exist
mkdir -p lib/swagger/swagger_specs

# Fetch the Swagger JSON
echo "Fetching Swagger documentation from $URL..."
curl "$URL" -o "$OUTPUT_FILE"

# Check if curl was successful
if [ $? -eq 0 ]; then
    echo "Successfully downloaded swagger.json to $OUTPUT_FILE"
    
    # Optional: Run build_runner to generate the client code
    echo "Running build_runner..."
    dart run build_runner build --delete-conflicting-outputs
else
    echo "Failed to download Swagger JSON"
    exit 1
fi
