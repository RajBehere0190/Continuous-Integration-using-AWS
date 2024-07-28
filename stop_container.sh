#!/bin/bash
set -e

# Define the name or ID of the container to stop
CONTAINER_NAME="cf2a8b0fcb4a"  # Replace with your actual container name or ID

# Check if the container is running
if [ "$(docker ps -q -f name=${CONTAINER_NAME})" ]; then
    echo "Stopping container: ${CONTAINER_NAME}"
    # Stop the container
    docker stop ${CONTAINER_NAME}
    echo "Container ${CONTAINER_NAME} stopped successfully."
else
    echo "No running container found with the name or ID: ${CONTAINER_NAME}"
fi
