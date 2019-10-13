FROM  registry.cn-hangzhou.aliyuncs.com/loai/system:db
RUN   pip install  --no-cache-dir  -i https://mirrors.aliyun.com/pypi/simple/  --upgrade pip  & pip3 install --no-cache-dir  -i https://mirrors.aliyun.com/pypi/simple/ tensorflow keras
