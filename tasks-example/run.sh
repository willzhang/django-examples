docker run -d --name tasks \
  --restart always \
  -p 8000:8000 \
  willdockerhub/django:tasks
