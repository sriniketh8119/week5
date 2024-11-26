# Use Node.js official image
FROM node:16-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code
COPY . .

# Expose the application's port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
