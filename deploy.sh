#!/bin/bash

echo "Starting Flask app deployment..."

# Delete old virtual environment if any
rm -rf venv

# Create a new virtual environment (this is important!)
python3 -m venv venv

# Activate virtual environment
source venv/bin/activate

# Upgrade pip to latest
pip install --upgrade pip

# Install required packages
pip install -r requirements.txt

# Run your Flask app in background (nohup keeps it running after script ends)
nohup python3 app.py &

echo "Flask app deployed successfully!"

