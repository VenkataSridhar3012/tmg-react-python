# # Use an official Python runtime as the base image
# FROM python:3.8-slim

# # Set the working directory in the container
# WORKDIR /app

# # Copy the script file into the container at /app
# COPY app.py /app/app.py

# # Run the command to install any dependencies
# # If your script uses any external dependencies, list them in a requirements.txt file
# # and uncomment the following line
# # COPY requirements.txt /app/
# # RUN pip install --no-cache-dir -r requirements.txt

# # Run your Python script when the container launches
# CMD ["python", "app.py"]



# Use the official Azure Web Apps Python runtime as the base image
FROM mcr.microsoft.com/azure-app-service/python:3.8

# Set the working directory in the container
WORKDIR /home/site/wwwroot

# Copy the script file into the container
COPY app.py .

# Run the command to install any dependencies
# If your script uses any external dependencies, list them in a requirements.txt file
# and uncomment the following line
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# Configure environment variables if needed
# ENV MY_ENV_VARIABLE=value

# Run your Python script when the container launches
CMD ["python", "app.py"]
