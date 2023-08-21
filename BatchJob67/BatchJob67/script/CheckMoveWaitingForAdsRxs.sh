#!/bin/bash

# Paths to the CSV files
central_csv_file="/mnt/c/Users/ashuverm/Downloads/BatchJob67/BatchJob67/central/relationships.csv"
ads_csv_file="/mnt/c/Users/ashuverm/Downloads/BatchJob67/BatchJob67/ADS/relationships.csv"
rx_csv_file="/mnt/c/Users/ashuverm/Downloads/BatchJob67/BatchJob67/RX/relationships.csv"

# Path to the RX folder
central_folder="/mnt/c/Users/ashuverm/Downloads/BatchJob67/BatchJob67/central"

# Path to the RX folder
rx_folder="/mnt/c/Users/ashuverm/Downloads/BatchJob67/BatchJob67/RX"

# Path to the ADS folder
ads_folder="/mnt/c/Users/ashuverm/Downloads/BatchJob67/BatchJob67/ADS"

# Compare the two CSV files
if cmp -s "$rx_csv_file" "$central_csv_file"; then
    echo "CSV files are identical. No update needed."
else
    echo "CSV files are different. Updating..."
    mv "$central_csv_file" "$rx_csv_file"

    # Copy the updated file from RX to ADS folder
    cp "$rx_csv_file" "$central_folder/"
fi

# Compare the two CSV files
if cmp -s "$ads_csv_file" "$rx_csv_file"; then
    echo "CSV files are identical. No update needed."
else
    #echo "CSV files are different. Updating in ADS..."
    cp "$rx_csv_file" "$ads_csv_file"
    #echo "Resubmitted to ADS."

	#cp "$ads_csv_file" "$rx_folder/"

    # Copy the updated file from RX to ADS folder
    cp "$ads_csv_file" "$ads_folder/"
    echo "Resubmitted CSV file from RX to ADS folder."
fi