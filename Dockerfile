# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy all files from the current directory to the container
COPY . /app

# Install any necessary dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose a port (e.g., 5000 for Flask)
EXPOSE 5000

# Define the command to run your app
CMD ["python", "app.py"]
