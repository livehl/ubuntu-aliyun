from   ubuntu:18.04

COPY  aliyun.list /etc/apt/sources.list
RUN   apt update &&   apt install python3.6-dev wget   && cd /tmp/ && wget https://bootstrap.pypa.io/get-pip.py 

