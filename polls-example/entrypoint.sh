#!/bin/sh
echo "Apply database migrations...."
#python manage.py makemigrations --noinput
#python manage.py migrate

echo "Starting server via manage.py...."
python manage.py runserver 0.0.0.0:8000
