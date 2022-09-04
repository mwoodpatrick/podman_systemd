#! /usr/bin/env bash
cd /usr/share/doc/unit-php/examples
sudo curl -X PUT --data-binary @unit.config --unix-socket /var/run/unit/control.sock http://localhost/config
curl http://localhost:8300/
