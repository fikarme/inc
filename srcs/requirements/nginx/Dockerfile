# Use the penultimate stable version of Debian
FROM debian:bullseye

# Install NGINX and OpenSSL
RUN apt-get update && \
    apt-get install -y nginx openssl && \
    rm -rf /var/lib/apt/lists/*

# Copy the NGINX configuration template and the setup script
COPY ./conf/nginx.conf /etc/nginx/nginx.conf.template
COPY ./tools/setup.sh /usr/local/bin/setup.sh
RUN chmod +x /usr/local/bin/setup.sh

# Expose the HTTPS port
EXPOSE 443

# Run the setup script as the entrypoint
ENTRYPOINT ["/usr/local/bin/setup.sh"]

# The command to run NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
