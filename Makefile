IMAGE=nginx-unit_systemd
CONTAINER=westiec_nginx-unit
CWD := $(shell pwd)

build:
	podman build --tag ${IMAGE} --file Dockerfile.nginx-unit
    
run:
	podman run --uidmap 1000:0:1 --uidmap 0:1:1000 --name ${CONTAINER} \
	 --hostname westiec \
	 -d -p 8082:80 \
	 -v /projects:/projects:z \
	 -v /home/user/:/home/user:z \
	 -v maria_db:/var/lib/mysql:Z \
	 -v nginx:/etc/nginx:Z \
 	 -v www:/var/www:Z \
	 ${IMAGE}

start: run	

restart:
	podman restart ${CONTAINER}

exec:
	podman exec -it ${CONTAINER} bash
   
exec_user:
	podman exec -it -u user ${CONTAINER} bash

stop:
	podman container stop ${CONTAINER}

rm: stop
	podman container rm ${CONTAINER}

tag:
	podman tag nginx_systemd quay.io/mwoodpatrick/nginx_systemd:latest

push:
	podman push quay.io/mwoodpatrick/nginx_systemd:latest
			
