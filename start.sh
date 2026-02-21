#!/bin/bash
# start.sh - entry point for Railpack to run your Python app

# Exit immediately if a command exits with a non-zero status
set -e

# Optional: activate virtual environment if you have one
# Uncomment the next line if you use a virtual environment
# source venv/bin/activate
# Run the main Python application
echo "Starting TeaVision app..."
python3 start_app.py