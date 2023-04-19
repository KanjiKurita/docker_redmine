# Redmine Docker

This repository provides an easy way to run Redmine with MySQL using Docker and Docker Compose.

## Prerequisites

- Docker
- Docker Compose

## Getting Started

1. Clone this repository:

```
git clone https://github.com/KanjiKurita/docker_redmine.git
cd docker_redmine
```

2. Configure the environment variables in the `.env` file. You can modify the values for the following variables:

- `MYSQL_ROOT_PASSWORD`: The root password for MySQL.
- `MYSQL_USER`: The MySQL user for Redmine.
- `MYSQL_PASSWORD`: The MySQL password for Redmine.
- `MYSQL_DATABASE`: The MySQL database name for Redmine.

3. Run `docker-compose up` to start the Redmine and MySQL containers:

```
docker-compose up
```

Wait for the containers to start. Once the containers are up and running, you can access the Redmine web interface by visiting `http://localhost:3000`.

4. To stop the containers, press `Ctrl+C` in the terminal, or run `docker-compose down` from another terminal.