# Docker Parent Image
FROM zaherg/node-toolkit

# Create Directory for the Container
WORKDIR /app

# Copy the files we need to our new Directory
ADD . /app

# Expose the port outside of the container
EXPOSE 3000

# Grab dependencies and transpile src directory to dist
RUN npm install && tsc

# Start the server
ENTRYPOINT ["node", "dist/"]
