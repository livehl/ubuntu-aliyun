FROM nvidia/cuda:9.0-devel-ubuntu16.04
COPY  aliyun.list /etc/apt/sources.list
RUN  echo "Asia/Shanghai" > /etc/timezone && export DEBIAN_FRONTEND=noninteractive &&\
  apt update  && apt-get install -y --no-install-recommends libcudnn7 tzdata software-properties-common  && \
  ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&  dpkg-reconfigure -f noninteractive tzdata  &&\
 add-apt-repository ppa:deadsnakes/ppa  && apt clean && rm -rf /var/lib/apt/lists/*
