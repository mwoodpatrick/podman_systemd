#! /usr/bin/env bash
sudo curl -X DELETE --unix-socket /var/run/unit/control.sock http://localhost/config
sudo curl -X PUT --data-binary @app_config.json --unix-socket /var/run/unit/control.sock http://localhost/config
# sudo curl -X PUT --data-binary @listner_config.json --unix-socket   /var/run/unit/control.sock http://localhost/config/listeners/127.0.0.1:8300
sudo curl --unix-socket  /var/run/unit/control.sock http://localhost/config/
curl http://127.0.0.1/phpinfo.php
curl http://127.0.0.1
curl http://127.0.0.1/fred.php
