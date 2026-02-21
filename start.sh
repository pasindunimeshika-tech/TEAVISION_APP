#!/bin/bash
set -e

echo "==========================================================="
echo "🫖 TeaQnet Application Startup Script"
echo "==========================================================="

echo "Current directory:"
pwd

echo "Checking for start_app.py..."

# If file exists in current directory
if [ -f "start_app.py" ]; then
    echo "Found start_app.py in root directory"
    python3 start_app.py
    exit 0
fi

# If file exists inside TeaQnet folder
if [ -f "TeaQnet/start_app.py" ]; then
    echo "Found start_app.py inside TeaQnet/"
    cd TeaQnet
    python3 start_app.py
    exit 0
fi

# If file exists inside Teavision folder
if [ -f "Teavision/start_app.py" ]; then
    echo "Found start_app.py inside Teavision/"
    cd Teavision
    python3 start_app.py
    exit 0
fi

echo "❌ start_app.py not found!"
exit 1