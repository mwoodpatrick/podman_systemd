sudo service unit start
 cd /usr/share/doc/unit-python310/examples
 sudo curl -X PUT --data-binary @unit.config --unix-socket /var/run/unit/control.sock http://localhost/config
 curl http://localhost:8400/
