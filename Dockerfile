# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory to /app1
WORKDIR /app1

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose port 5001
EXPOSE 5001

# Define the command to run the application
CMD ["node", "server.js"]
