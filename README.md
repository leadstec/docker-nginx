# NginX image for VCubi Platform

![Version](https://img.shields.io/badge/NginX-1.18.0-blue)
![Architecture](https://img.shields.io/badge/Arch-amd64,_arm64-brightgreen)
![Workflow](https://github.com/leadstec/docker-nginx/workflows/ci/badge.svg)

The project contains NginX image for VCubi platform, based on LCS container management daemon.

Image on [DockerHub](https://hub.docker.com/r/leadstec/nginx) 

LEADSTEC: [Official website](https://www.leadstec.com)

## How to Use
    # Pull image
    docker pull leadstec/nginx:latest

    # Build image
    docker-compose build .

    # Image Structure Test
    container-structure-test test --image leadstec/nginx:tag --config tests/nginx.yaml

## LCS Schema & ENV
| ENV Variable              | Description                     | Default | Accept Values | Required |
|---------------------------|---------------------------------|---------|---------------|----------|
| NGINX_HOSTNAME            | Default hostname of the server  |         |               |          |
| NGINX_WORKER_PROCESSES    | Number of nginx worker          |    1    |               |          |
| NGINX_WORKER_CONNECTIONS  | Number of connections allowed   |  1024   |               |          |
| NGINX_KEEPALIVE_TIMEOUT   | Connection timeout              |   65    |               |          |
| NGINX_CLIENT_MAX_BODY_SIZE| Allow content size (for files)  |   8m    |               |          |
| NGINX_TYPES_HASH_MAX_SIZE | Hash max size                   |  1024   |               |          |
| NGINX_GZIP                | Enable gzip on server side      |  true   | true,false    |          |

