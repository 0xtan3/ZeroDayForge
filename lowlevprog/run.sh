#!/bin/bash

# Check if filename is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

# Name of the C source file
SOURCE_FILE="$1"

# Extract the filename without extension for the output executable
OUTPUT_FILE="$2"

# Compile the C program
gcc -o $OUTPUT_FILE $SOURCE_FILE

# Check if compilation was successful
if [ $? -ne 0 ]; then
  echo "Compilation failed."
  exit 1
fi

echo "Compilation successful."

# Check if valgrind is installed
if ! command -v valgrind &> /dev/null
then
  echo "Valgrind is not installed. Please install valgrind and try again."
  exit 1
fi

echo "Valgrind is installed."

# Run the program with valgrind and capture the output
VALGRIND_OUTPUT=$(valgrind ./$OUTPUT_FILE 2>&1)

# Output valgrind result
echo "$VALGRIND_OUTPUT"

# Check if valgrind found any errors
if echo "$VALGRIND_OUTPUT" | grep -q "ERROR SUMMARY: 0 errors from 0 contexts"; then
  echo "Valgrind did not find any errors in the program."
else
  echo "Valgrind found errors in the program."
  exit 1
fi
