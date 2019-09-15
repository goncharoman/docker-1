from python:3

COPY flask app
WORKDIR /app/app
RUN pip install --no-cache-dir -r requirements.txt

ENV POSTGRES_USER="" POSTGRES_PASSWORD="" POSTGRES_HOST=postgres POSTGRES_PORT=5432 POSTGRES_DB="messages"

RUN mkdir -p /var/log/uwsgi/ && touch /var/log/uwsgi/app.log

EXPOSE 8080
WORKDIR /app
ENTRYPOINT uwsgi --ini uwsgi.ini
