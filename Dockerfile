FROM nginx:latest

# Set working directory inside container
WORKDIR /app

# Copy all files from current folder to /app
COPY . /app

# Then copy to nginx web root
RUN cp -r /app/* /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
