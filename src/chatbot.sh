#!/bin/bash

# Cybersecurity Chatbot for Penetration Testing

# Function to initialize the chatbot
initialize_chatbot() {
    echo "Welcome to the Cybersecurity Chatbot!"
    echo "I am here to assist you with penetration testing."
    echo "Type 'exit' to end the session."
}

# Function to handle user input
handle_input() {
    while true; do
        read -p "You: " user_input
        if [[ "$user_input" == "exit" ]]; then
            echo "Goodbye!"
            break
        fi
        process_input "$user_input"
    done
}

# Function to process user input and integrate with tools
process_input() {
    case "$1" in
        "nmap")
            source ./tools/tool_integration.sh
            run_nmap
            ;;
        "metasploit")
            source ./tools/tool_integration.sh
            run_metasploit
            ;;
        *)
            echo "Sorry, I don't understand that command."
            ;;
    esac
}

# Main execution
initialize_chatbot
handle_input
