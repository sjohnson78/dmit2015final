@echo off
call mvn clean package
call docker build -t dmit2015/dmit2015-finalproject-sj .
call docker rm -f dmit2015-finalproject-sj
call docker run -d -p 8080:8080 -p 4848:4848 --name dmit2015-finalproject-sj dmit2015/dmit2015-finalproject-sj