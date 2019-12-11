#!/bin/bash

# copy an index.html to ${APP_DIR} if not exist
if [[ ! -f ${APP_DIR}/index.html ]]; then
    sudo -HEu nginx cp /var/lib/nginx/html/* ${APP_DIR}
    clog -i "nginx: Default index.html created in ${APP_DIR}."
fi
