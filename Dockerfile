# Use the official PostgreSQL base image
FROM postgres:latest

# Set environment variables for PostgreSQL
ENV POSTGRES_USER=ayomi
ENV POSTGRES_PASSWORD=IbdqP13Q16678DFG
ENV POSTGRES_DB=ayomi_db

# Copy the dump file to the Docker container
COPY db.sql /docker-entrypoint-initdb.d/

# Expose the PostgreSQL port
EXPOSE 5432