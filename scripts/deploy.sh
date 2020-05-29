#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp target/serving-web-content-0.0.1-SNAPSHOT.jar \
  pavel@192.168.1.41:/home/pavel/

echo 'Restart server...'

ssh -tt pavel@192.168.1.41 << EOF

pgrep java | xargs kill -9
nohup java -jar serving-web-content-0.0.1-SNAPSHOT.jar > log.txt &

EOF

echo 'Bye'
