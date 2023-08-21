#!/bin/bash

# Define the path to the text file
input_file="/mnt/c/Users/mbhalli/Desktop/ShellScriptPOC/KrogerFolder/Job-27/source/load_data.txt"

# Define database connection details
db_host="udaydb.mysql.database.azure.com"
db_user="udayvarma"
db_password="@Capgemini1234"
db_name="userDB"

# Database table name
user_table_name="user"

# Loop through each line in the file
while IFS='|' read -r first_name last_name email age; do
    # Formulate the SQL INSERT statement
    insert_query="INSERT INTO user (first_name, last_name, email, age) VALUES ('$first_name', '$last_name', '$email', '$age');"
    
    # Execute the SQL statement using the database client (adjust based on your database type)
    mysql -h "$db_host" -u "$db_user" -p"$db_password" "$db_name" -e "$insert_query"
done < "$input_file"