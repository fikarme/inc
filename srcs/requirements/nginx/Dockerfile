# Use the penultimate stable version of Debian
FROM debian:bullseye

# Tell debconf to not be interactive. This is the main character.
ENV DEBIAN_FRONTEND=noninteractive

# Install NGINX and OpenSSL in a single, optimized layer
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    nginx \
    openssl \
    gettext-base && \
    rm -rf /var/lib/apt/lists/*

# Create the directory for WordPress files so the volume can mount
RUN mkdir -p /var/www/html

# Copy the config template directory
COPY ./conf/ /etc/nginx/templates/

# Copy the setup script and make it executable
COPY ./tools/setup.sh /usr/local/bin/setup.sh
RUN chmod +x /usr/local/bin/setup.sh

# Expose the HTTPS port
EXPOSE 443

# Run the setup script as the entrypoint
ENTRYPOINT ["/usr/local/bin/setup.sh"]

# The command to run NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
