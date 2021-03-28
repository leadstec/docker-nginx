#!/bin/bash

# Determine new install or updating
if [[ ${SETUP_MODE} == 'new' ]]; then
    # custom code after envs initialized.
    sudo -HEu nginx mkdir -p ${NGINX_LOG_DIR}/${NGINX_HOSTNAME}

    # for let's encrypt
    if [[ ${NGINX_ENABLE_LETSENCRYPT} == 'true' ]]; then
        # install acme for Let's Encrypt
        cd /tmp/
        git clone https://github.com/Neilpang/acme.sh.git
        /tmp/acme.sh/acme.sh --install

        # create .well-known/acem-challenge directory
        mkdir -vp ${APP_DIR}/.well-known/acme-challenge/
        # fix permissions
        chown -R nginx:lcs ${APP_DIR}/.well-known/acme-challenge/
        chmod -R 0555 ${APP_DIR}/.well-known/acme-challenge/

        mkdir -p /etc/nginx/ssl/${NGINX_HOSTNAME}
        cd /etc/nginx/ssl/${NGINX_HOSTNAME}
        openssl dhparam -dsaparam -out dhparam.pem 4096

        acem.sh --issue -w ${APP_DIR} -d ${NGINX_HOSTNAME} -k 4096

        acme.sh --installcert -d ${NGINX_HOSTNAME} \
            --keypath /etc/nginx/ssl/${NGINX_HOSTNAME}/${NGINX_HOSTNAME}.key \
            --fullchainpath /etc/nginx/ssl/${NGINX_HOSTNAME}/${NGINX_HOSTNAME}.cer
    fi

else
    # custom code when restore
    clog -i "nginx: restored."
fi
