# Dockerfile of Example
# Version 1.0
# Base Images
FROM registry.cn-
hangzhou.aliyuncs.com/tar_get/target
#MAINTAINER
MAINTAINER AlibabaSec

ADD . /competition

WORKDIR /competition
RUN pip --no-cache-dir install  -r requirements.txt

RUN mkdir ./models
RUN curl -O  'https://cr.console.aliyun.com/cn-hangzhou/instances/repositories' && tar -xvf inception_v1.tar.gz -C ./models/