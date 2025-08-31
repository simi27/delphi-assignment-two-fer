#!/bin/bash

# Exit immediately if any command fails
set -e

echo "Attempting to compile the test project..."

# Compile the Delphi project which includes the student's
# submission and the unit tests.
fpc twofer.dpr -o"run_tests"

if [ $? -ne 0 ]; then
  echo "Compilation failed. Please check your code for syntax errors."
  exit 1
fi

echo "Compilation successful. Running unit tests..."

# Execute the compiled test program.
# The FPTest framework will handle the output and exit code.
./run_tests

# If the script reaches this point, it means the test executable
# returned an exit code of 0, so all tests passed.
echo "Success! All tests passed."
exit 0