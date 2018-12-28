from  livehl/ubuntu-aliyun:latest
RUN   apt update &&  apt install python3.6 wget  python3-distutils && cd /tmp &&  wget https://bootstrap.pypa.io/get-pip.py  && \
apt install gcc python3.6-dev && python3.6 get-pip.py && \
pip3 install --no-cache-dir  -i https://mirrors.aliyun.com/pypi/simple/  PyCrypto bottle redis peewee tablestore oss2 pymysql  tensorflow keras && \
apt autoremove python3.6-dev  gcc && rm -fr /tmp/get-pip.py && apt clean 
