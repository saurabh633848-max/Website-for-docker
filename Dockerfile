FROM nginx:latest

# Copy website files from komal directory to nginx web root
COPY komal/ /var/www/html/

# Expose port 80
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
