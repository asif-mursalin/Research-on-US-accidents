#!/bin/bash

# Script to download US_Accidents_March23.csv file
echo "Starting download of US_Accidents_March23.csv..."

# Download the file using curl
curl -L -o US_Accidents_March23.csv https://majestic3gg.ddns.net/s/QdPxfSYMaCm7QCx/download/US_Accidents_March23.csv

# Check if download was successful
if [ $? -eq 0 ]; then
    echo "Download completed successfully!"
    echo "File saved to: $(pwd)US_Accidents_March23.csv"
    echo "File size: $(du -h US_Accidents_March23.csv | cut -f1)"
else
    echo "Download failed. Please check your internet connection and try again."
    exit 1
fi