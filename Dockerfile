# Use an official node runtime as a parent image
FROM node:alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN npm install

# Make port 80 available to the world outside this container
EXPOSE 8080

# Define environment variable
ENV NAME Moumita

# Run app.py when the container launches
CMD ["node", "app.js"]