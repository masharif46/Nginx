# Nginx


git clone https://github.com/masharif46/Nginx.git

cd Nginx

podman build --tag root/Nginx .

podman images

podman run -dit --name Nginx -p 80:8080  localhost/root/Nginx

podman ps

podman exec -it Nginx /bin/bash

http://serverIPaddrsss



