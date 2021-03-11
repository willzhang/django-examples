FROM python:3.9-slim-buster

ENV PYTHONUNBUFFERED 1
ENV PROJECT=polls

RUN apt-get update \
    && apt-get install -y --no-install-recommends python3-dev default-libmysqlclient-dev gcc \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /code/

COPY $PROJECT/ ./

RUN pip install --no-cache-dir -r requirements.txt

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

VOLUME /code/
EXPOSE 8000

CMD ["/entrypoint.sh"]
