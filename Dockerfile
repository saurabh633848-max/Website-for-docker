FROM nginx:latest

# Set a working directory
WORKDIR /school

# Copy local website files to the working directory
COPY . /school

# Copy files from /school to nginx default serving directory
RUN cp -r /school/* /usr/share/nginx/html/

# Expose default nginx port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
