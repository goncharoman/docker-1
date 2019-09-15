FROM postgres:latest

ENV POSTGRES_USER test
ENV POSTGRES_PASSWORD test
ENV POSTGRES_HOST postgres
ENV POSTGRES_PORT 5432
ENV POSTGRES_DB messages

COPY create-table.sql /docker-entrypoint-initdb.d/
