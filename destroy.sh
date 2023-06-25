#!/bin/bash

# Stop the Docker container
docker stop ayomi-db-server

# Remove the Docker container
docker rm ayomi-db-server

# Remove the Docker image
docker rmi ayomi-db-server