#
# AUTHOR            Frank,H.L.Lai <frank@leadstec.com>
# DOCKER-VERSION    18.06
# Copyright         (C) 2018 Leads Technologies Ltd. All rights reserved.
#
ARG arch=
FROM regimg.com/alpine${arch}:3.8

ARG version=1.14.x
ARG build=dev

LABEL version="${version}-${build}" \
    description="NginX docker image for FAYCLOUD." \
    maintainer="Frank,H.L.Lai <frank@leadstec.com>"

# set environment variables
ENV NGINX_VERSION="${version}" \
    NGINX_LOG_DIR="${LOG_DIR}/nginx"

# install packages
RUN apk --update add nginx && \
    rm /var/cache/apk/*

# add install/run scripts
COPY scripts /scripts
RUN bash /scripts/setup/install
RUN rm -fr /scripts/setup

# EXPOSE 80 443
