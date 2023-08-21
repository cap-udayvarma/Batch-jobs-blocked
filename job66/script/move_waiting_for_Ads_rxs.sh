#!/bin/bash

# Paths to the CSV files
old_csv_file="/mnt/c/Users/upandeti/OneDrive - Capgemini/Desktop/test/job66/ADS/old_uday.csv"
new_csv_file="/mnt/c/Users/upandeti/OneDrive - Capgemini/Desktop/test/job66/Rxs/new_uday.csv"

# Path to the ADS folder
ads_folder="path/to/ADS/folder"

# Compare the two CSV files
if cmp -s "$old_csv_file" "$new_csv_file"; then
    echo "CSV files are identical. No update needed."
else
    echo "CSV files are different. Updating..."
    mv "$new_csv_file" "$old_csv_file"
    echo "Updated CSV file copied to ADS folder."
fi
