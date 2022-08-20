# podman_systemd
Some experiments with Podman, WSL-2 &amp; systemd


[Podman 101: Managing and Running Containers](https://joerismissaert.dev/posts/podman-101-managing-and-running-containers/)

[Configure your Fedora system to use sudo](https://fedoramagazine.org/howto-use-sudo/)

To run the container so that it uses the user/group id's of the host user add "--uidmap 1000:0:1 --uidmap 0:1:1000" to the run command see [Volumes always owned by root](https://github.com/containers/podman/issues/2898) for more discussion on this.

To enable sshd & ssh-agent install: ssh-agent & openssh-client

[How to install, start and connect to SSH Server on Fedora Linux](https://linuxconfig.org/how-to-install-start-and-connect-to-ssh-server-on-fedora-linux)
[ssh-agent](https://command-not-found.com/ssh-agent)

[Podman 102: Building a WordPress multi-service container with Nginx, PHP-FPM and MariaDB](https://joerismissaert.dev/posts/podman-102-wordpress-multi-service-container/)


[devilbox/docker-php-fpm-8.2](https://github.com/devilbox/docker-php-fpm-8.2)

[devilbox/docker-php-fpm](https://github.com/devilbox/docker-php-fpm/blob/master/Dockerfiles/work/Dockerfile-8.2)