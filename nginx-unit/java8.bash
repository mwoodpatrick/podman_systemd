sudo service unit restart
 cd /usr/share/doc/unit-jsc8/examples
 sudo curl -X PUT --data-binary @unit.config --unix-socket /var/run/unit/control.sock http://localhost/config
 curl http://localhost:8800/
