build:
	podman build --tag nginx_systemd --file Dockerfile.nginx
    
run:
	podman run --name westiec_nginx --hostname westiec -d -p 8082:80 -v /projects:/projects:Z -v /home/user/:/home/user:Z nginx_systemd	
    
exec:
	podman exec -it westiec_nginx  bash

stop:
	podman container stop westiec_nginx

rm: stop
	podman container rm westiec_nginx
			
