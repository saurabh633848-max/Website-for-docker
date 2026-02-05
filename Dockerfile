FROM nginx:latest

# Copy website files to nginx default web root
COPY komal/Website-for-docker/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
