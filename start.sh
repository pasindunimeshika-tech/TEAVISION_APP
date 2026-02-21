#!/bin/bash
# start.sh - entry point for Railpack to run your Python app

set -e

echo "==========================================================="
echo "🫖 TeaQnet Application Startup Script"
echo "==========================================================="

echo "Installing Node.js..."
apt-get update -y
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt-get install -y nodejs

echo "Node version:"
node -v

echo "Installing Python dependencies..."
if [ -f "requirements.txt" ]; then
    pip install --no-cache-dir -r requirements.txt
fi

echo "Starting TeaVision app..."
python3 start_app.py