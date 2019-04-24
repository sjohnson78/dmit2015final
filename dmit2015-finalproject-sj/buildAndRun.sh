#!/bin/sh
mvn clean package && docker build -t dmit2015/dmit2015-finalproject-sj .
docker rm -f dmit2015-finalproject-sj || true && docker run -d -p 8080:8080 -p 4848:4848 --name dmit2015-finalproject-sj dmit2015/dmit2015-finalproject-sj