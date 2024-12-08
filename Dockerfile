# Use the official Node.js image as a base
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available) first for better caching
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY index.js .
COPY index.html .

# Expose port 3000 to allow external access
EXPOSE 3000

# Start the application
CMD ["npm", "test"]
