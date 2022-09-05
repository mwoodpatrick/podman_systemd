#! /usr/bin/env bash
sudo curl -X PUT --data-binary @app_config.json --unix-socket /var/run/unit/control.sock http://localhost/config
sudo curl --unix-socket  /var/run/unit/control.sock http://localhost/config/
curl http://localhost
