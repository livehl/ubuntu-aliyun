FROM  registry.cn-hangzhou.aliyuncs.com/loai/system:python3
RUN   apt update  \
&&  apt install  -y gcc python3.6-dev &&\
pip3 install --no-cache-dir  -i https://mirrors.aliyun.com/pypi/simple/  PyCrypto bottle redis peewee tablestore oss2 pymysql && \
 pip3 uninstall -y pycrypto pycryptodome &&  pip3 install  --no-cache-dir  -i https://mirrors.aliyun.com/pypi/simple/ pycryptodome && \
apt autoremove  -y python3.6-dev  gcc && apt install  -y python3.6 && apt clean  && rm -rf /var/lib/apt/lists/*
