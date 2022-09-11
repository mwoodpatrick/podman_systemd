#! /usr/bin/env bash
# EXE=/usr/local/unit/sbin/unitd
# MODULES=/usr/local/unit/modules
# EXE=/projects/git/mwoodpatrick/unit/pkg/rpm/rpmbuild/BUILD/unit-1.28.0/build-debug/unitd
# MODULES=/projects/git/mwoodpatrick/unit/pkg/rpm/rpmbuild/BUILD/unit-php-1.28.0/build-debug
EXE=/usr/sbin/unitd-debug
MODULES=/usr/lib64/unit/modules
CONTROL=/tmp/debug_unit_control.sock
LOG=/tmp/debug_unit.log
ACCESS_LOG=/tmp/debug_unit_access.log
PIDF=/tmp/debug_unit.pid
BASE_URL=http://localhost:8080
cd $(dirname $0)


rm $LOG $ACCESS_LOG
$EXE --control unix:$CONTROL --log $LOG --pid $PIDF --user user --group group --modules $MODULES

sudo curl -X DELETE --unix-socket $CONTROL http://localhost/config
sudo curl -X PUT --data-binary @debug_app_config.json --unix-socket $CONTROL http://localhost/config
sudo curl -X PUT -d \"$ACCESS_LOG\" --unix-socket $CONTROL http://localhost/config/access_log
# sudo curl -X PUT --data-binary @listner_config.json --unix-socket   /var/run/unit/control.sock http://localhost/config/listeners/127.0.0.1:8300
sudo curl --unix-socket  $CONTROL http://localhost/config/
curl ${BASE_URL}/static/index.html
curl ${BASE_URL}/static/fred.html
curl ${BASE_URL}/example_php
curl ${BASE_URL}/express

echo "access log: " 
cat $ACCESS_LOG

echo "pid" $(cat $PIDF)
ps -Alf | grep unit

kill -TERM $(cat $PIDF)

echo cat $LOG
ps -Alf | grep unit
