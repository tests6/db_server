#!/bin/bash

# Build the Docker image
docker build -t ayomi-db-server .

# Run the Docker container
docker run -d -p 5432:5432 --name ayomi-db-server ayomi-db-server

# Connect to the network
docker network connect ayomi-network ayomi-db-server