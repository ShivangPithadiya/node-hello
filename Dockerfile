# Use an official Node.js runtime as a base image
FROM node:14
# ARG NAMEEE


# ENV MY_VARIABLE=${MY_VARIABLE}

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the project dependencies
RUN npm install
#
# Copy the application files to the working directory
COPY . .

# Expose the port on which the application will run
EXPOSE 4000

# Define the command to run the application
CMD ["node", "index.js"]
