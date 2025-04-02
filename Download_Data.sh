#!/bin/bash

# Script to download US_Accidents_March23.csv file
echo "Starting download of US_Accidents_March23.csv..."

# Create a directory for the data if it doesn't exist
mkdir -p data

# Download the file using curl
curl -L -o data/US_Accidents_March23.csv https://majestic3gg.ddns.net/s/QdPxfSYMaCm7QCx/download/US_Accidents_March23.csv

# Check if download was successful
if [ $? -eq 0 ]; then
    echo "Download completed successfully!"
    echo "File saved to: $(pwd)/data/US_Accidents_March23.csv"
    echo "File size: $(du -h data/US_Accidents_March23.csv | cut -f1)"
else
    echo "Download failed. Please check your internet connection and try again."
    exit 1
fi