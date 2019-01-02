FROM  registry.cn-hangzhou.aliyuncs.com/loai/system:db
RUN  pip3 install --no-cache-dir  -i https://mirrors.aliyun.com/pypi/simple/ tensorflow keras
