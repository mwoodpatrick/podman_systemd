#! /usr/bin/env bash
cp -pr blogs /www/blogs
curl -X PUT --data-binary @app_config.json --unix-socket /var/run/unit/control.sock http://localhost/config/applications/blogs
curl -X PUT --data-binary @listner_config.json --unix-socket   /var/run/unit/control.sock http://localhost/config/listeners/127.0.0.1:8300
sudo curl --unix-socket  /var/run/unit/control.sock http://localhost/config/
curl http://127.0.0.1:8300
curl http://127.0.0.1:8300/fred.php
