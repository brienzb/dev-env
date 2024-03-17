# DBocker (DB + Docker)
Docker compose file that can run various database at once
- MySQL 8.3
- MongoDB 7.0
- Redis 7.2
- Hadoop 2.7.4
- Hive 2.3.2

> Hadoop and Hive referred to the [docker-compose.yml](https://github.com/big-data-europe/docker-hadoop/blob/master/docker-compose.yml) of BDE (Big Data Europe)

## Run

### 1. Set Environment Variables
```bash
cp .env.template .env

# And fill in the values of the variables
PROJECT_PATH=...
DB_USER=...
DB_PASSWORD=...
DB_NAME=...
```

### 2. Run Docker Compose
```bash
docker compose up
```

## Todo
- [ ] Add Trino container