#!/bin/bash

set -e

# Check if DOMAIN_NAME is set, because we kinda need it.
: "${DOMAIN_NAME:?Bruh, set DOMAIN_NAME in your .env file}"

# Create SSL directory if it's not there
mkdir -p /etc/nginx/ssl

# Generate self-signed SSL certificate if it doesn't exist
if [ ! -f /etc/nginx/ssl/nginx.crt ]; then
    echo "SSL cert not found. Generating a new one. Issa vibe."
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
        -keyout /etc/nginx/ssl/nginx.key \
        -out /etc/nginx/ssl/nginx.crt \
        -subj "/C=TR/ST=Istanbul/L=Esenler/O=42/CN=${DOMAIN_NAME}"
fi

# Substitute env vars in the template to create the final config.
# This is where the magic happens.
envsubst '${DOMAIN_NAME}' < /etc/nginx/templates/nginx.cnf > /etc/nginx/conf.d/default.conf

echo "NGINX config generated from template. We're live."

# Run the command passed to the script (i.e., starts nginx)
exec "$@"
