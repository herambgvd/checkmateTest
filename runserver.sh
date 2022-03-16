#!/bin/sh

python manage.py collectstatic
python manage.py migrate
python manage.py makesuper
gunicorn checkmate.wsgi --bind=0.0.0.0:80