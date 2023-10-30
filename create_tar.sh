#!/bin/bash

# Ask the user for input
echo "Enter a name for the tarball (without extension):"
read input_name

# Check if the input is not empty
if [ -z "$input_name" ]; then
    echo "Invalid input. Please provide a non-empty name."
else
    # Create a tarball with user input as the filename
    tar -cvzf "${input_name}.tar.gz" ./"${input_name}"

    # Check if tarball creation was successful
    if [ $? -eq 0 ]; then
        echo "Tarball '${input_name}.tar.gz' created successfully."
    else
        echo "Error: Tarball creation failed."
    fi
fi

