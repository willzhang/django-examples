FROM python:3.9-slim-buster

ENV PYTHONUNBUFFERED 1

RUN apt-get update \
    && apt-get install -y --no-install-recommends python3-dev default-libmysqlclient-dev gcc \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /code/

COPY library/ ./

RUN pip install --no-cache-dir -r requirements.txt \
    && chmod +x entrypoint.sh

VOLUME /code/
EXPOSE 8000

CMD ["/code/entrypoint.sh"]
