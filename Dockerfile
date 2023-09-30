# Use the official Python image from Docker Hub
FROM python:3.9-slim-buster

# Set the working directory within the container
WORKDIR /app

# Copy the local requirements.txt file to the container's working directory
COPY . /app
RUN apt update -y
# Install Python dependencies using pip
RUN apt-get update && pip install -r requirements.txt

# Specify the command to run when the container starts
CMD ["python3", "app.py"]
