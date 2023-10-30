#!/bin/bash

# Add users to groups
sudo dseditgroup -o edit -a cs423_devops_user_1 -t user fcse
sudo dseditgroup -o edit -a cs423_devops_user_2 -t user fee
sudo dseditgroup -o edit -a cs423_devops_user_3 -t user fes
sudo dseditgroup -o edit -a cs423_devops_user_4 -t user fme
sudo dseditgroup -o edit -a cs423_devops_user_5 -t user fcve

# Output confirmation
echo "Users added to their respective groups."

