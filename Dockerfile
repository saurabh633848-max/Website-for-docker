FROM nginx:latest

# Copy website files
COPY komal/Website-for-docker/ /var/www/html/

# Copy custom nginx config
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
