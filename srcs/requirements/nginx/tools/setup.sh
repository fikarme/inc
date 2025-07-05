#!/bin/bash

set -e

# Generate self-signed SSL certificate if it doesn't exist
if [ ! -f /etc/ssl/certs/nginx.crt ]; then
    echo "Generating self-signed SSL certificate..."
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
        -keyout /etc/ssl/private/nginx.key \
        -out /etc/ssl/certs/nginx.crt \
        -subj "/C=${CERT_COUNTRY}/ST=${CERT_STATE}/L=${CERT_CITY}/O=${CERT_ORG}/CN=${DOMAIN_NAME}"
fi

# Substitute environment variables in the nginx config template
# and output to the final config file location.
envsubst '${DOMAIN_NAME}' < /etc/nginx/nginx.conf.template > /etc/nginx/conf.d/default.conf

# Execute the CMD from the Dockerfile (i.e., starts nginx)
exec "$@"
