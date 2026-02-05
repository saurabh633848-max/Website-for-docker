FROM nginx:latest

# Copy all files from current folder (Website-for-docker) to nginx default web root
COPY . /usr/share/nginx/html/

# Expose HTTP port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
