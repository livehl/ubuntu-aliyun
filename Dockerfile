FROM   ubuntu:18.04

COPY  aliyun.list /etc/apt/sources.list

RUN   echo "Asia/Shanghai" > /etc/timezone  && export DEBIAN_FRONTEND=noninteractive && apt update  \
&&  apt install -y tzdata && ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&  dpkg-reconfigure -f noninteractive tzdata  && apt clean  && rm -rf /var/lib/apt/lists/*

