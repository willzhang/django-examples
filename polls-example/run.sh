docker run -d --name polls \
  --restart always \
  -p 8000:8000 \
  willdockerhub/django:polls
