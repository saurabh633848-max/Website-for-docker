FROM nginx:latest

# Copy all website files to nginx default web root
COPY . /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
