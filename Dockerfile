# User official Nginx image
from nginx.latest

#Set a working directory
Workdir /app

#Copy local website file to workdir
copy . /app

#copy files from workdir to nginx default serve directory 
Run cp -r /app/* /usr/share/nginx/html

#expose defauls ngninx port 
Expose 80

#start nginx
CMD ["nginx", "-g", "daemon off;"]
