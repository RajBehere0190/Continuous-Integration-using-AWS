#!/bin/bash
set -e

# Define the name or ID of the container to stop
CONTAINER_NAME="e2623fd3b03f"

# Check if the container is running
if [ "$(docker ps -q -f name=${heuristic_feistel})" ]; then
    echo "Stopping container: ${heuristic_feistel}"
    # Stop the container
    docker stop ${heuristic_feistel}
    echo "Container ${heuristic_feistel} stopped successfully."
else
    echo "No running container found with the name or ID: ${heuristic_feistel}"
fi
