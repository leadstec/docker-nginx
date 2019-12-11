#
# AUTHOR            Frank,H.L.Lai <frank@leadstec.com>
# DOCKER-VERSION    19.03
# Copyright         (C) 2020 LEADSTEC Solutions. All rights reserved.
#
ARG arch=
FROM leadstec/alpine${arch}:3.10.3

ARG version=1.16.1
ARG build=dev

LABEL version="${version}-${build}" \
    description="NginX image for VCubi" \
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
