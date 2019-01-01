FROM  registry.cn-hangzhou.aliyuncs.com/keras/gpu:gpu
RUN    apt update &&  apt-get install -y --no-install-recommends python3.6 python3.6-dev curl &&\
 curl https://bootstrap.pypa.io/get-pip.py | python3.6 && \
  pip3 install  --no-cache-dir  -i https://mirrors.aliyun.com/pypi/simple/ tensorflow-gpu keras  oss2 pymysql  peewee PyCrypto bottle && \
apt autoremove python3.6-dev  gcc && rm -fr /tmp/get-pip.py && apt clean  && rm -rf /var/lib/apt/lists/*

