FROM  nvidia/cuda:9.0-base-ubuntu16.04
RUN   apt update  && apt-get install software-properties-common python3-software-properties  &&  add-apt-repository -y ppa:jonathonf/python-3.6 && apt update  
