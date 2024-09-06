
#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull rajbehere0190/sample-python-app

# Run the Docker image as a container
docker run -d -p 5000:5000 rajbehere0190/flask-app-sample


