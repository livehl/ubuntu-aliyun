from  livehl/ubuntu-aliyun:latest
RUN   echo "Asia/Shanghai" > /etc/timezone  && export DEBIAN_FRONTEND=noninteractive && apt update  \
&&  apt install -y python3.6 wget  python3-distutils tzdata && cd /tmp && \
  wget https://bootstrap.pypa.io/get-pip.py  && apt install  -y gcc python3.6-dev && python3.6 get-pip.py && \
pip3 install --no-cache-dir  -i https://mirrors.aliyun.com/pypi/simple/  PyCrypto bottle redis peewee tablestore oss2 pymysql  tensorflow keras && \
ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&  dpkg-reconfigure -f noninteractive tzdata && \
  apt autoremove  -y python3.6-dev  gcc && rm -fr /tmp/get-pip.py && apt clean 
