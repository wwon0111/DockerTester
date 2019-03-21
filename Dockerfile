# Use an official Python runtime as a parent image
FROM python:2.7-slim

RUN -p mkdir /Desktop/app

# Set the working directory to /app
WORKDIR /Desktop/app

# Copy the current directory contents into the container at /app
COPY . /Desktop/app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]

