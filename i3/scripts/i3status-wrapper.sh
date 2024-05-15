#!/bin/bash
# i3status-wrapper.sh

# Execute your custom script and capture its output
custom_output=$(~/.config/i3/scripts/keyboard_layout.sh)

# Pipe the output of i3status through the wrapper script
i3status | while read line; do
    # Prepend the custom output to each line of i3status output
    echo "$custom_output | $line"
done
