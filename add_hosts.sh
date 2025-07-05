#!/bin/bash

# Script to add 42.fr domains to /etc/hosts for local development

# Check if running as root
if [ "$EUID" -ne 0 ]; then
    echo "This script needs sudo privileges to edit /etc/hosts"
    echo "Run with: sudo $0"
    exit 1
fi

# Backup hosts file
cp /etc/hosts /etc/hosts.backup.$(date +%Y%m%d_%H%M%S)
echo "Created backup of /etc/hosts"

# Domains to add
DOMAINS=(
    "test.42.fr"
    "ibkocak.42.fr"
    "hatice.42.fr"
    "ctasar.42.fr"
    "akdemir.42.fr"
    "relvan.42.fr"
)
IPV6_PATTERN="IPv6"
HEADER="# 42 School Inception Project"
ENTRIES_TO_ADD=""

# Add header comment if not exists
if ! grep -q "$HEADER" /etc/hosts; then
    ENTRIES_TO_ADD+="\n$HEADER\n"
fi

# Build a string of all new domains to add
for domain in "${DOMAINS[@]}"; do
    # Check if domain already exists (whole word match)
    if grep -q -w "$domain" /etc/hosts; then
        echo "✓ $domain already exists in hosts file"
    else
        ENTRIES_TO_ADD+="127.0.0.1\t$domain\n"
        echo "Queueing $domain for insertion..."
    fi
done

# Insert the new entries before the IPv6 section if they exist
if [ -n "$ENTRIES_TO_ADD" ]; then
    # Use sed to insert the block of text before the first match of IPv6
    # The `i` command in sed inserts text. We escape newlines for it.
    # If IPv6 pattern isn't found, just append to the file.
    if grep -q "$IPV6_PATTERN" /etc/hosts; then
        # The weird syntax is to handle newlines correctly with sed
        sed -i "/$IPV6_PATTERN/i $ENTRIES_TO_ADD" /etc/hosts
        echo "✓ Added new domains before IPv6 section."
    else
        # Fallback: append to the end if no IPv6 line is found
        echo -e "$ENTRIES_TO_ADD" >> /etc/hosts
        echo "✓ No IPv6 line found. Appended new domains to the end."
    fi
fi


echo ""
echo "All domains configured! You can now access:"
for domain in "${DOMAINS[@]}"; do
    echo "  https://$domain"
done

echo ""
echo "To remove these entries later, restore from backup:"
echo "  sudo cp /etc/hosts.backup.* /etc/hosts"
