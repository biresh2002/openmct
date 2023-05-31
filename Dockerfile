# Base image
FROM node:18

# Set the working directory
WORKDIR /app

# Clone the source code
RUN git clone https://github.com/biresh2002/openmct.git .

WORKDIR /app/openmct 

# Install development dependencies
RUN npm install

# Expose the default port used by Open MCT
EXPOSE 8080

# Run a local development server j

CMD ["npm", "start"]
