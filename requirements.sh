#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo apt-get install -y curl p7zip
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install curl p7zip
elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    choco install curl -y
else
    echo "Système d'exploitation non pris en charge."
    exit 1
fi
