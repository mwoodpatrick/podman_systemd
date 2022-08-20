# podman_systemd
Some experiments with Podman, WSL-2 &amp; systemd


[Podman 101: Managing and Running Containers](https://joerismissaert.dev/posts/podman-101-managing-and-running-containers/)

[Configure your Fedora system to use sudo](https://fedoramagazine.org/howto-use-sudo/)

To run the container so that it uses the user/group id's of the host user add "--uidmap 1000:0:1 --uidmap 0:1:1000" to the run command see [Volumes always owned by root](https://github.com/containers/podman/issues/2898) for more discussion on this.

[System Administrator’s Guide](https://docs.fedoraproject.org/en-US/fedora/latest/system-administrators-guide/)

To enable sshd & ssh-agent install: openssh-server & openssh-client

[How to install, start and connect to SSH Server on Fedora Linux](https://linuxconfig.org/how-to-install-start-and-connect-to-ssh-server-on-fedora-linux)
[ssh-agent](https://command-not-found.com/ssh-agent)

sudo systemctl status sshd
sudo systemctl status nginx

https://docs.fedoraproject.org/en-US/fedora/latest/system-administrators-guide/servers/Configuring_NTP_Using_ntpd/

Tp set/query the date use timedatectl:

[How to set Time, Timezone and System Clock in Linux CentOS, Fedora & RHEL using timedatectl](https://www.ryadel.com/en/set-change-modify-time-timezone-system-clock-linux-centos-fedora-rhel/#:~:text=%20How%20to%20set%20Time%2C%20Timezone%20and%20System,sincerely%20hope...%205%20Post%20navigation.%20%20More%20)

[Podman 102: Building a WordPress multi-service container with Nginx, PHP-FPM and MariaDB](https://joerismissaert.dev/posts/podman-102-wordpress-multi-service-container/)


[devilbox/docker-php-fpm-8.2](https://github.com/devilbox/docker-php-fpm-8.2)

[devilbox/docker-php-fpm](https://github.com/devilbox/docker-php-fpm/blob/master/Dockerfiles/work/Dockerfile-8.2)