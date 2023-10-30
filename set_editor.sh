#!/bin/bash

# Store the original editor value
original_editor="$EDITOR"

# Set the editor to nano
export VISUAL=nano
export EDITOR=nano

# Open crontab in nano editor
crontab -e

# Reset the editor to its original value
export VISUAL="$original_editor"
export EDITOR="$original_editor"

