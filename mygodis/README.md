# Mygodis (MySQL + MongoDB + Redis)
Docker compose file that can run MySQL, MongoDB and Redis at once
- MySQL 8.3
- MongoDB 7.0
- Redis 7.2

## Run

### 1. Set Environment Variables
```bash
vi .env

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
