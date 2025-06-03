#!/bin/bash

# Function to validate user input
validate_input() {
    if [[ -z "$1" ]]; then
        echo "Error: Input cannot be empty."
        return 1
    fi
    return 0
}

# Function to format output for better readability
format_output() {
    echo "=============================="
    echo "$1"
    echo "=============================="
}

# Function to log messages to a log file
log_message() {
    local message="$1"
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $message" >> /var/log/cybersecurity_chatbot.log
}

# Function to display help information
display_help() {
    echo "Usage: chatbot.sh [options]"
    echo "Options:"
    echo "  -h, --help      Show this help message"
    echo "  -v, --version   Show version information"
}
