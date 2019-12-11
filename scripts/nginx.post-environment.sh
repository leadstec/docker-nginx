#!/bin/bash

# Determine new install or updating
if [[ ${SETUP_MODE} == 'new' ]]; then
    # custom code after envs initialized.
    sudo -HEu nginx mkdir -p ${NGINX_LOG_DIR}/${NGINX_HOSTNAME}
else
    # custom code when restore
    clog -i "nginx: restored."
fi
