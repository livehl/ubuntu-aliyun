FROM  registry.cn-hangzhou.aliyuncs.com/loai/system:python3
RUN   apt update  \
&&  apt install  -y gcc python3.6-dev &&\
pip3 install --no-cache-dir  -i https://mirrors.aliyun.com/pypi/simple/  PyCrypto bottle redis peewee tablestore oss2 pymysql && \
apt autoremove  -y python3.6-dev  gcc && apt clean  && rm -rf /var/lib/apt/lists/*
