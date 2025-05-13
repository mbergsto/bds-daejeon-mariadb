# bds-daejeon-mariadb

## MariaDB Setup on Raspberry Pi

This repository contains a Docker-based setup for running a MariaDB instance on a Raspberry Pi.

## Requirements

- Docker & Docker Compose installed on the Raspberry Pi
- `.env` file with database credentials

## Environment Configuration

Create a `.env` file in the root of the project with the following content:

```env
MARIADB_USER=bigdata
MARIADB_PASSWORD=bigdata+
MARIADB_DATABASE=scraping_db
MARIADB_ROOT_PASSWORD=bigdata+
```

## Starting the Container

From the root of the repository, run:

Pi:
```bash
docker compose --env-file .env up -d
```

MacOS:
```bash
docker-compose --env-file .env up -d
```

## Accessing the MariaDB Database

To inspect the contents of the MariaDB container running on your Raspberry Pi, follow these steps:

### 1. Enter the container

```bash
docker exec -it kbo_mariadb bash
```

### 2. Log in to MariaDB

```bash
mariadb -u root -p
```

When prompted, enter the root password (`bigdata+` if using the provided `.env` settings).

### 3. Run SQL queries

```sql
SHOW DATABASES;
USE scraping_db;
SHOW TABLES;
SELECT * FROM scrape_runs;
SELECT * FROM game_metadata;
```

These commands allow you to browse the database contents and verify that your Scrapy pipeline is storing data correctly.
