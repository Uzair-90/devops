#!/bin/bash

# Loop through user numbers 1 to 5
for i in {1..5}; do
    # Create username based on pattern
    username="cs423_devops_user_$i"
    
    # Delete the user
    sudo dscl . -delete /Users/$username
    
    # Output confirmation
    echo "User $username deleted."
done

