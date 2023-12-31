# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the entire proj into the container at /app
COPY . /app

# Install any other Python packages you need from requirements.txt
#RUN apt update -y && apt install awscli -y
#RUN pip install -r requirements.txt
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 unzip -y && pip install -r requirements.txt

# Specify the command to run when the container starts
CMD ["python3", "app.py"]
