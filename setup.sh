#!/bin/bash

if command -v virtualenv &> /dev/null; then

  echo -e "\e[92mCreating virtual environment...\e[0m"
  virtualenv venv

  echo -e "\e[92mVirtual environment created.\e[0m"

  # Activate virtual environment
  source venv/bin/activate

  pip install -r ./requirements.txt

  echo -e "\e[92mSetup complete.\e[0m"
else
  echo -e "\e[91mError: virtualenv is not installed. Please install it before running this script.\e[0m"
fi
