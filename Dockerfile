# Use latest Nginx image
FROM nginx:latest

# Set the working directory (optional, for inspection inside container)
WORKDIR /app

# Copy all website files from current folder to Nginx web root
COPY . /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
