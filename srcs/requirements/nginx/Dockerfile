# Use the penultimate stable version of Debian
FROM debian:bullseye

# Install NGINX and OpenSSL (for creating the self-signed certificate)
RUN apt-get update && \
    apt-get install -y nginx openssl && \
    rm -rf /var/lib/apt/lists/*

# Create directories for the SSL certificate and key
RUN mkdir -p /etc/nginx/ssl

# Generate the self-signed SSL certificate and key
# This uses variables from the .env file passed during build time.
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/inception.key \
    -out /etc/nginx/ssl/inception.crt \
    -subj "/C=${CERT_COUNTRY}/ST=${CERT_STATE}/L=${CERT_CITY}/O=${CERT_ORG}/CN=${DOMAIN_NAME}"

# Copy the NGINX configuration file
COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

# Expose the HTTPS port
EXPOSE 443

# The command to run NGINX in the foreground (no daemon mode!)
CMD ["nginx", "-g", "daemon off;"]
