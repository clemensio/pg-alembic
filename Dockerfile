ARG PG_VERSION=16
FROM postgres:${PG_VERSION}-alpine

ARG PG_VERSION
LABEL org.opencontainers.image.description="Postgres ${PG_VERSION} with Alembic preinstalled"

RUN apk add --no-cache python3 py3-alembic py3-psycopg2
