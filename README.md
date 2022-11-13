# Nginx


git clone https://github.com/masharif46/Nginx.git

cd Nginx

podman build --tag root/nginx .

podman images

podman run -dit --name nginx -p 80:8080  localhost/root/nginx

podman ps

podman exec -it nginx /bin/bash

http://serverIPaddrsss



