

# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the requirements.txt file into the container
COPY requirements.txt ./

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .


ENV PORT=5000

# Ensure the start script has execute permissions
RUN chmod +x start.sh

# Expose the port the app runs on
EXPOSE $PORT

# Define the entrypoint script to use bash
CMD ["bash", "start.sh"]





