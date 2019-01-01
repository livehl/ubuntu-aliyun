FROM nvidia/cuda:9.0-devel-ubuntu16.04
COPY  aliyun.list /etc/apt/sources.list
RUN   apt update  && apt-get install -y --no-install-recommends libcudnn7  software-properties-common  && \
 add-apt-repository ppa:deadsnakes/ppa  && apt clean && rm -rf /var/lib/apt/lists/*
 

