# For local development
docker-compose --env-file .env up --build

# For production
docker-compose --env-file .env.production up --build
