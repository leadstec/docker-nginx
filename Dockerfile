#
# Author            Frank,H.L.Lai <frank@leadstec.com>
# Docker Version    19.03
# Website           https://www.leadstec.com
# Copyright         (C) 2020 LEADSTEC Systems. All rights reserved.
#
ARG arch=
FROM leadstec.tencentcloudcr.com/leadstec/alpine${arch}:3.12.0
ARG version=1.18.0
ARG build=dev

LABEL version="${version}-${build}" \
    description="NginX image for VCubi platform" \
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
