# From base image 
FROM node:16-alpine

# Create app dir
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy files from local filesystem to container filesystem
COPY package.json .

# Install all dependencies
RUN npm install

# Copy other files
COPY ./ .

# Expose the port
EXPOSE 3030

# Run app to instantiate image
CMD ["npm", "start"]
