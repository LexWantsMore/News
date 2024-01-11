#!/bin/bash

#Activate virtual environment
source /opt/render/project/src/.venv/bin/activate

# Install project dependencies
pip install -r requirements.txt

# Upgrade pip
python -m pip install --upgrade pip

# Enable logging
set -o xtrace

# Run collectstatic and migrate
python manage.py collectstatic --no-input
python manage.py migrate

# Disable logging
set +o xtrace