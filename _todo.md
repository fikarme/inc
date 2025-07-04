sudo docker events
mariadb dockerfilenda sh olup olmaması

So how do you use the secrets? For WordPress, the secrets (wp_admin_password, wp_user_password) are still mounted to /run/secrets/ inside the container. But it's now the job of your custom entrypoint script (the .sh file you call in your WordPress Dockerfile) to handle them.

The Script's Role:
The script isn't storing the secret; it's just the messenger. It reads the secret from the secure tmpfs location, uses it once for the wp-cli command, and then the shell variable can go out of scope. The secret itself is managed by Docker's secure mechanism.

Secrets > Environment Variables:
Docker Secrets are mounted into a temporary, in-memory filesystem (tmpfs). They are never written to the container's disk, making them way harder to intercept. This is a massive security W.

The 42 Way:
This pattern is the canonical solution for Inception. It proves you understand the difference between an official image with built-in secret handling (like MariaDB's _FILE variables) and a situation where you have to roll your own secure implementation.

Once the container starts, Docker takes that secret and mounts it as a file inside the container. It doesn't use the host path. By default, all secrets live in a special, secure spot: /run/secrets/.
