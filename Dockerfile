# Base image
FROM node:16.15.0-alpine

# Set working directory
WORKDIR /app



# Copy package.json and package-lock.json
COPY package*.json ./


# Install dependencies
RUN npm install



# Copy the entire application
COPY . .


# Build the React app
RUN npm run build


# Expose the port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]