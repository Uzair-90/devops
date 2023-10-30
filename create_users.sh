#!/bin/bash

# Loop through user numbers 1 to 5
for i in {1..5}; do
    # Create username based on pattern
    username="cs423_devops_user_$i"
    
    # Create the user with the username and home directory
    sudo dscl . -create /Users/$username
    sudo dscl . -create /Users/$username UserShell /bin/bash
    sudo dscl . -create /Users/$username RealName "CS423 DevOps User $i"
    sudo dscl . -create /Users/$username UniqueID 1000$i
    sudo dscl . -create /Users/$username PrimaryGroupID 1000$i
    sudo dscl . -create /Users/$username NFSHomeDirectory /Users/$username
    
    # Set password for the user
    echo "user$i" | sudo dscl . -passwd /Users/$username
    
    # Output confirmation
    echo "User $username created with password: user$i"
done

