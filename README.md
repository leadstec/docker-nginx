### CHANGELOG

**1.16.1**
* Based on Alpine 3.10.3

**1.14.0**
* 基于alpine 3.8

**aarch64**
* 支持aarch64架构

**1.12.2**
* update of 2018
* 基于alpine 3.7

**1.10.3**
* 发布到cangku.cloud
* Production Release

**1.10.2**

* 基于alpine 3.5

**1.10.1**

* 支持lcs 1.2.0
* NginX默认系统路径有轻微改动

**1.8.1**

* 支持Image Schema
* 支持LCS Tools
* HTML_DIR统一改为APP_DIR，位于/data/app
* 优化GZIP配置（1.8.1-27）
* 增加三个ENV配置选项（1.8.1-25）
    - NGINX_KEEPALIVE_TIMEOUT（默认65）
    - NGINX_TYPES_HASH_MAX_SIZE（默认1024）
    - NGINX_GZIP（默认true）
* bug修复
    - container.json缺失NGINX_WORKER_CONNECTIONS

**1.8.0**

* 1.8.0-24
    - 支持captool机制
* 1.8.0-1
    - Production Ready
    - 基于alpine:3.2.2，大幅度减小image体积
* 1.8.0-
    - 升级nginx到1.8.0版本
    - 修改HTML_DIR路径为/data/html，并支持所有volume情况
    - NginX默认root为/data/html

**1.6.3**

* 1.6.3-2
    - 基于base:0.6.1
    - 删除/setup目录
* 1.6.3-1
    - 基于base:0.6.0
    - 根据base:0.6的思路，简化首次启动脚本为runonce.sh
* 1.6.3
    - 基于base:0.5.2
    - NginX升级到1.6.3

**1.6.2**

**采用NginX版本号**

## 0.5.0

* Update composer.phar to latest version (2015-01-21)
* Update phpMyAdmin to version 4.3.7

## 0.4.2

* Based on base:0.4.2

## 0.4.1

* Based on image reg.leadstec.com/base:0.4.1 (Refer to base/0.4.1 for details)
* Remove EXPOSE ports from Dockerfile, please map ports while creating the container

## 0.4

* Combine dev and runtime into one image.
* Based on image reg.leadstec.com/base:0.4 (Refer to base/0.4 for details)
* Update phpmyadmin to 4.3.3

## 0.3.2

* Update nginx application directory
* Add Nginx config file support laravel

## 0.3.1

* Bug fixed on 0.3 run script about starting supervisord.

## 0.3

* Update to use supervisorctl control processes within container and prevent restart container frequently.
* Add phpmyadmin and auto config if container is linked with a MariaDB container.

## 0.2.1

* Fixed NginX html folder permission
* Updated php.ini params: max_execution_time, upload_max_filesize & post_max_size to bigger value
* Move PHP configs into a firstrun script
* Composer pre-installed in /usr/local/bin/composer with China Repos config
* MariaDB client pre-installed

## 0.2

* Based on reg.leadstec.com/dev:0.2
* Dockerfile support up to docker version 1.2+

## 0.1

* initial image
