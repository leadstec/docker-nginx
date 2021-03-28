#
# Author            Frank,H.L.Lai <frank@leadstec.com>
# Docker Version    20.10
# Website           https://www.leadstec.com
# Copyright         (C) 2021 LEADSTEC Systems. All rights reserved.
#
FROM leadstec/alpine:latest

LABEL description="NginX image for VCubi platform" \
    maintainer="Frank,H.L.Lai <frank@leadstec.com>"

# set environment variables
ENV NGINX_LOG_DIR="${LOG_DIR}/nginx"

# install packages
RUN apk --update add nginx netcat-openbsd bc wget git openssl libressl && \
    rm /var/cache/apk/*

# add install/run scripts
COPY scripts /scripts
RUN bash /scripts/setup/install
RUN rm -fr /scripts/setup

# EXPOSE 80 443
