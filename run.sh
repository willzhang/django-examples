#!/bin/bash
docker run -d --name django-library \
 --restart always \
 -p 8000:8000 \
 willdockerhub/django-library 
