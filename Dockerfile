FROM  registry.cn-hangzhou.aliyuncs.com/loai/system:db
RUN  pip3 install --no-cache-dir  -i https://mirrors.aliyun.com/pypi/simple/ https://storage.googleapis.com/intel-optimized-tensorflow/tensorflow-1.12.0-cp36-cp36m-linux_x86_64.whl keras
