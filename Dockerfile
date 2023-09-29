# Use the official Python image from Docker Hub
FROM python:3.9-slim-buster

# Set the working directory within the container
WORKDIR /app

# Copy the local requirements.txt file to the container's working directory
COPY requirements.txt .

# Install Python dependencies using pip
RUN pip install -r requirements.txt

# Copy the rest of your application code to the container
COPY . .

# Specify the command to run when the container starts
CMD [ "python", "app.py" ]
