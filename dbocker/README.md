# DBocker (DB + Docker)
Docker compose file that can run various database at once
- MySQL 8.3
- MongoDB 7.0
- Redis 7.2
- Hive 3.1.3

## Run

### 1. Set Environment Variables
```bash
cp .env.template .env
# And fill in the values of the variables
```

### 2. Run Docker Compose
```bash
docker compose up
```

## Todo
- [ ] Mount Hive data in local `./data`
- [ ] Add Trino container