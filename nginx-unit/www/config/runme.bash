#! /usr/bin/env bash
cd $(dirname $0)
sudo curl -X DELETE --unix-socket /var/run/unit/control.sock http://localhost/config
sudo curl -X PUT --data-binary @app_config.json --unix-socket /var/run/unit/control.sock http://localhost/config
sudo curl -X PUT -d '"/var/log/access.log"' --unix-socket /var/run/unit/control.sock http://localhost/config/access_log
# sudo curl -X PUT --data-binary @listner_config.json --unix-socket   /var/run/unit/control.sock http://localhost/config/listeners/127.0.0.1:8300
sudo curl --unix-socket  /var/run/unit/control.sock http://localhost/config/
# curl http://127.0.0.1/phpinfo.php
curl http://localhost
# curl http://localhost/
# curl http://127.0.0.1/fred.php
