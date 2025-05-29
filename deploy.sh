#!/bin/bash
echo "Starting Flask app deployment..."

python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
nohup python3 app.py &

echo "Flask app deployed successfully!"

