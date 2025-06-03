#!/bin/bash

# Test cases for the cybersecurity chatbot

# Function to test chatbot initialization
test_chatbot_initialization() {
    output=$(bash ../src/chatbot.sh --init)
    if [[ $output == *"Chatbot initialized"* ]]; then
        echo "Test passed: Chatbot initialized successfully."
    else
        echo "Test failed: Chatbot initialization error."
    fi
}

# Function to test tool integration
test_tool_integration() {
    output=$(bash ../src/chatbot.sh --tool test_tool)
    if [[ $output == *"Tool executed successfully"* ]]; then
        echo "Test passed: Tool integrated and executed successfully."
    else
        echo "Test failed: Tool integration error."
    fi
}

# Function to test user input handling
test_user_input_handling() {
    output=$(echo "test command" | bash ../src/chatbot.sh)
    if [[ $output == *"Command executed"* ]]; then
        echo "Test passed: User input handled correctly."
    else
        echo "Test failed: User input handling error."
    fi
}

# Run tests
test_chatbot_initialization
test_tool_integration
test_user_input_handling
