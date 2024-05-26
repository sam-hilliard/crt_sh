#!/bin/bash

# Function to process a single domain
process_domain() {
    domain="$1"
    curl -s "https://crt.sh/?q=%.$domain" | grep -Eo '[a-zA-Z0-9.-]+\.'$domain | sed -E 's/^\*\.(.*)\.'$domain'$/\1/' | sed 's/^\.//g' | sort -u
}

# Function to process domains from standard input
process_input() {
    # Read domains line by line from standard input
    while IFS= read -r domain; do
        process_domain "$domain"
    done
}

# If input is provided through standard input
if [ -p /dev/stdin ]; then
    process_input
else
    # Check if a domain is provided as an argument
    if [ $# -eq 0 ]; then
        echo "Usage: $0 <domain>"
        exit 1
    fi

    # Process the domain provided as argument
    process_domain "$1"
fi
