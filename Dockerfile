# Use the official Node.js 18 base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose a port (if your application listens on a specific port)
EXPOSE 3000

# Set the command to run when the container starts
CMD [ "npm", "start" ]