#!/bin/bash
set -e

# Define the container ID
CONTAINER_ID="8cfc1670758e"

# Check if the container is running
if [ "$(docker ps -q -f id=$CONTAINER_ID)" ]; then
    echo "Stopping the container: $CONTAINER_ID"
    docker stop $CONTAINER_ID
    echo "Container $CONTAINER_ID stopped successfully."
else
    echo "No running container found with the ID: $CONTAINER_ID"
fi
