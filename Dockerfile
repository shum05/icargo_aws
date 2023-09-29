# Use the official Python 3.9 image as the base image
FROM python:3.9-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy the contents of your local "app" directory into the container at /app
COPY . /app

# Run any additional commands you need to set up your application
# For example, you can install Python dependencies, configure your app, etc.
RUN pip install -r requirements.txt
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash
           # If you need to make a script executable

# Define the command to run your application when the container starts
CMD ["python", "app.py"]
