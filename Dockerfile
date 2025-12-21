# User official Nginx image
from nginx.latest

#Set a working directory
Workdir /school

#Copy local website file to workdir
copy . /school

#copy files from workdir to nginx default serve directory 
docker cp /home/ubuntu/website/. webserver:/usr/share/nginx/html/

#expose defauls ngninx port 
Expose 80

#start nginx
CMD ["nginx", "-g", "daemon off;"]
