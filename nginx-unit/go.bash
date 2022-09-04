 GOPATH=/usr/share/gocode GO111MODULE=auto go build -o /tmp/go-app /usr/share/doc/unit-go/examples/go-app/let-my-people.go
 sudo service unit start
 cd /usr/share/doc/unit-go/examples
 sudo curl -X PUT --data-binary @unit.config --unix-socket /var/run/unit/control.sock http://localhost/config
 curl http://localhost:8500/
