#!/bin/bash

pip install -r requirements.txt

echo "Building static assets..."
python manage.py collectstatic --no-post-process

echo "Starting Gunicorn..."
gunicorn --bind "0.0.0.0:$PORT" myproject.wsgi