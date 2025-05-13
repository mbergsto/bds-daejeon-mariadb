# bds-daejeon-mariadb

MariaDB Setup on Raspberry Pi

This repository contains a Docker-based setup for running a MariaDB instance on a Raspberry Pi.

## Requirements

- Docker & Docker Compose installed on the Raspberry Pi

- `.env` file with database credentials

## Environment Configuration

Create a `.env` file in the root of the project with the following content:

MARIADB_USER=bigdata

MARIADB_PASSWORD=bigdata+

MARIADB_DATABASE=scraping_db

MARIADB_ROOT_PASSWORD=bigdata+

## Start MariaDB

Run the following command to start the MariaDB container:

`docker-compose --env-file .env up -d`

## Verify

To verify the container is running and accessible:

`docker ps`
