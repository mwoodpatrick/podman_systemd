build:
	podman build --tag nginx_systemd --file Dockerfile.nginx
    
run:
	podman run --uidmap 1000:0:1 --uidmap 0:1:1000 --name westiec_nginx --hostname westiec -d -p 8082:80 -v /projects:/projects:z -v /home/user/:/home/user:z nginx_systemd	
	
start: run	

exec:
	podman exec -it westiec_nginx bash
   
exec_user:
	podman exec -it -u user westiec_nginx bash

stop:
	podman container stop westiec_nginx

rm: stop
	podman container rm westiec_nginx

tag:
	podman tag nginx_systemd quay.io/mwoodpatrick/nginx_systemd:latest

push:
	podman push quay.io/mwoodpatrick/nginx_systemd:latest
			
