#! /usr/bin/env bash

EXE=/usr/sbin/unitd
MODULES=/usr/lib64/unit/modules
# EXE=/usr/local/unit/sbin/unitd
# MODULES=/usr/local/unit/modules
# EXE=/projects/git/mwoodpatrick/unit/pkg/rpm/rpmbuild/BUILD/unit-1.28.0/build-debug/unitd
# MODULES=/projects/git/mwoodpatrick/unit/pkg/rpm/rpmbuild/BUILD/unit-php-1.28.0/build-debug
# EXE=/usr/sbin/unitd-debug
# MODULES=/usr/lib64/unit/modules
CONTROL=/tmp/debug_unit_control.sock
LOG=/tmp/debug_unit.log
ACCESS_LOG=/tmp/debug_unit_access.log
PIDF=/tmp/debug_unit.pid
BASE_URL=http://localhost:8080

function unit_ps {
    ps -Alf | grep unit
}

function unit_enable_access_log {
    sudo curl -X PUT -d \"$ACCESS_LOG\" --unix-socket $CONTROL http://localhost/config/access_log
}

function unit_start {
    rm -f $LOG $ACCESS_LOG
    $EXE --control unix:$CONTROL --log $LOG --pid $PIDF --user user --group group --modules $MODULES
    unit_ps
}

function unit_stop {
    kill -TERM $(cat $PIDF)
    unit_ps
}

function unit_show_config {
    sudo curl --unix-socket  $CONTROL http://localhost/config/
    # sudo curl --unix-socket  $CONTROL http://localhost/config/routes/
    # sudo curl --unix-socket  $CONTROL http://localhost/config/applications/
}

function unit_set_debug_config {
    sudo curl -X PUT --data-binary @debug_app_config.json --unix-socket $CONTROL http://localhost/config
}

function unit_set_express_config {
    sudo curl -X PUT --data-binary @express_config.json --unix-socket $CONTROL http://localhost/config/
}

function unit_delete_config {
    sudo curl -X DELETE --unix-socket $CONTROL http://localhost/config
}

# cd $(dirname $0)

# unit_delete_config
# unit_set_debug_config
# unit_set_express_config
# unit_enable_access_log
# unit_show_config
# curl ${BASE_URL}/static/index.html
# curl ${BASE_URL}/static/fred.html
# curl ${BASE_URL}/example_php
# curl ${BASE_URL}/express

# echo "access log: " 
# cat $ACCESS_LOG

# echo "pid" $(cat $PIDF)
# unit_ps

# echo cat $LOG
# unit_ps
