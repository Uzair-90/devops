#!/bin/bash

# Delete groups
sudo dseditgroup -o delete fcse
sudo dseditgroup -o delete fee
sudo dseditgroup -o delete fes
sudo dseditgroup -o delete fme
sudo dseditgroup -o delete fcve

# Output confirmation
echo "Groups deleted."

